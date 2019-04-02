.class public Lcom/android/camera/SquareModule;
.super Lcom/android/camera/CameraModule;
.source "SquareModule.java"

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
        Lcom/android/camera/SquareModule$ModuleState;
    }
.end annotation


# static fields
.field private static final BURST_SESSIONS_DIR:Ljava/lang/String; = "burst_sessions"

.field private static final CAMERA_OPEN_CLOSE_TIMEOUT_MILLIS:I = 0x9c4

.field private static final CAPTURE_DEBUG_UI:Z

.field private static final MAX_QUEUE_SIZE:I

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

.field private final mDoSnapRunnable:Ljava/lang/Runnable;

.field private mFirstPreviewArrived:Z

.field private mFocusController:Lcom/android/camera/ui/focus/FocusController;

.field private mFrontCameraMirror:Z

.field private mHdrPlusEnabled:Z

.field private mHdrSceneEnabled:Z

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsBeautyEnabled:Z

.field private mIsEffectEnabled:Z

.field private mIsOpenGLEnabled:Z

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

.field private mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

.field private mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowErrorAndFinish:Z

.field private mShutterSoundEnabled:Z

.field private mSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mSoundPlayerLoaded:Z

.field private mState:Lcom/android/camera/SquareModule$ModuleState;

.field private final mStickyGcamCamera:Z

.field private final mSurfaceTextureLock:Ljava/lang/Object;

.field private mSwitchCamera:Z

.field private mUI:Lcom/android/camera/SquareModuleUI;

.field private final mUIListener:Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SquareModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 140
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/SquareModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    .line 146
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/SquareModule;->CAPTURE_DEBUG_UI:Z

    .line 147
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->limitQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/camera/SquareModule;->MAX_QUEUE_SIZE:I

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SquareModule;-><init>(Lcom/android/camera/app/AppController;Z)V

    .line 586
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Z)V
    .locals 6
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "stickyHdr"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 590
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 148
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mDimensionLock:Ljava/lang/Object;

    .line 169
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 173
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mHdrSceneEnabled:Z

    .line 174
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mHdrPlusEnabled:Z

    .line 175
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mSurfaceTextureLock:Ljava/lang/Object;

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 188
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mWatermarkEnabled:Z

    .line 189
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mBrandLogoEnabled:Z

    .line 190
    iput-boolean v5, p0, Lcom/android/camera/SquareModule;->mShutterSoundEnabled:Z

    .line 191
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    .line 192
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mIsOpenGLEnabled:Z

    .line 193
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    .line 194
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mFrontCameraMirror:Z

    .line 195
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mSwitchCamera:Z

    .line 196
    iput v4, p0, Lcom/android/camera/SquareModule;->mOrientation:I

    .line 197
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 198
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mFirstPreviewArrived:Z

    .line 201
    new-instance v1, Lcom/android/camera/SquareModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/SquareModule$1;-><init>(Lcom/android/camera/SquareModule;)V

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 210
    new-instance v1, Lcom/android/camera/SquareModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/SquareModule$2;-><init>(Lcom/android/camera/SquareModule;)V

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mUIListener:Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;

    .line 234
    new-instance v1, Lcom/android/camera/SquareModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/SquareModule$3;-><init>(Lcom/android/camera/SquareModule;)V

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 246
    new-instance v1, Lcom/android/camera/SquareModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/SquareModule$4;-><init>(Lcom/android/camera/SquareModule;)V

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 357
    new-instance v1, Lcom/android/camera/SquareModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/SquareModule$5;-><init>(Lcom/android/camera/SquareModule;)V

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 535
    sget-object v1, Lcom/android/camera/SquareModule$ModuleState;->IDLE:Lcom/android/camera/SquareModule$ModuleState;

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mState:Lcom/android/camera/SquareModule$ModuleState;

    .line 537
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/SquareModule;->mZoomValue:F

    .line 540
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/SquareModule;->mAutoFocusScanStartFrame:J

    .line 550
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mSoundPlayerLoaded:Z

    .line 559
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/SquareModule;->mDisplayRotation:I

    .line 578
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 580
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mAllocationLock:Ljava/lang/Object;

    .line 591
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new SquareModule"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 592
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mFirstPreviewArrived:Z

    .line 593
    iput-boolean v5, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    .line 594
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 595
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 596
    iput-boolean p2, p0, Lcom/android/camera/SquareModule;->mStickyGcamCamera:Z

    .line 597
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 598
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SquareModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/camera/SquareModule;->mZoomValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/SquareModule;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # F

    .prologue
    .line 127
    iput p1, p0, Lcom/android/camera/SquareModule;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/SquareModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSurfaceTextureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/SquareModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/camera/SquareModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->reopenCamera()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->stopBurst()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->closeCamera()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->updatePreviewBufferSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/SquareModule;)Lcom/android/camera/SquareModule$ModuleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mState:Lcom/android/camera/SquareModule$ModuleState;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/SquareModule;Lcom/android/camera/SquareModule$ModuleState;)Lcom/android/camera/SquareModule$ModuleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Lcom/android/camera/SquareModule$ModuleState;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mState:Lcom/android/camera/SquareModule$ModuleState;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/SquareModule;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/SquareModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/SquareModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/SquareModule;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/SquareModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Landroid/media/MediaActionSound;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/SquareModule;)Lcom/android/camera/SoundPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/camera/SquareModule;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Lcom/android/camera/SoundPlayer;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/SquareModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayerLoaded:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/SquareModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/camera/SquareModule;->mSoundPlayerLoaded:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/SquareModule;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/camera/SquareModule;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/camera/SquareModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/camera/SquareModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/camera/SquareModule;->mShutterSoundEnabled:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/camera/SquareModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/camera/SquareModule;->mFrontCameraMirror:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/SquareModule;)Lcom/android/camera/burst/BurstFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/camera/SquareModule;Lcom/android/camera/burst/BurstFacade;)Lcom/android/camera/burst/BurstFacade;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Lcom/android/camera/burst/BurstFacade;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/android/camera/SquareModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/camera/SquareModule;->mBrandLogoEnabled:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/android/camera/SquareModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/camera/SquareModule;->mHdrPlusEnabled:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/camera/SquareModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/camera/SquareModule;->mHdrSceneEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/SquareModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mStickyGcamCamera:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/SquareModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/camera/SquareModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/camera/SquareModule;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/SquareModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/SquareModule;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->createAndStartUntrackedCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->openCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/SquareModule;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->switchToRegularCapture()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/camera/SquareModule;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/SquareModule;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/SquareModule;I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/camera/SquareModule;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/camera/SquareModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/camera/SquareModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->updateCameraCharacteristics()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/camera/SquareModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/camera/SquareModule;->onBeautyStateChanged(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->updateEffectBeautyZoomUI()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/SquareModule;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/SquareModule;)Lcom/android/camera/SquareModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/camera/SquareModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/camera/SquareModule;->setHDRBadgeVisible(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->updatePreviewBufferDimension()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/SquareModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mIsOpenGLEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/SquareModule;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/SquareModule;->updatePreviewTransform(IIZ)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/camera/SquareModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/camera/SquareModule;->mPreviewBufferWidth:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/camera/SquareModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/camera/SquareModule;->mPreviewBufferHeight:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/camera/SquareModule;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/SquareModule;)Lcom/android/camera/scenerecognition/SceneRecognitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/camera/SquareModule;Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;)Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->setHDRBadgeVisible()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/camera/SquareModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mSwitchCamera:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/android/camera/SquareModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/camera/SquareModule;->mSwitchCamera:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/camera/SquareModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/android/camera/SquareModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/android/camera/SquareModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->hideEffectAndShowBeautyOrZoomIfNeeded()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/SquareModule;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SquareModule;->startActiveFocusAt(II)V

    return-void
.end method

.method private cancelCountDown()V
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/SquareModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/SquareModuleUI;->cancelCountDown()V

    .line 1148
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1149
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1150
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1152
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2564
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "SquareModule.closeCamera()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 2566
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2570
    const-string v2, "mCameraOpenCloseLock.acquire()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2573
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v2, :cond_0

    .line 2574
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstFacade;->release()V

    .line 2575
    iput-object v4, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    .line 2577
    :cond_0
    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v2, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 2578
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 2581
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_2

    .line 2582
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2583
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2584
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2585
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V

    .line 2586
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2587
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V

    .line 2588
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2589
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 2590
    const-string v2, "mCamera.close()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2593
    :cond_2
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2594
    invoke-virtual {p0, v5}, Lcom/android/camera/SquareModule;->onReadyStateChanged(Z)V

    .line 2595
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/SquareModule$23;

    invoke-direct {v3, p0}, Lcom/android/camera/SquareModule$23;-><init>(Lcom/android/camera/SquareModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2607
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2608
    return-void

    .line 2567
    :catch_0
    move-exception v0

    .line 2568
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2593
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2594
    invoke-virtual {p0, v5}, Lcom/android/camera/SquareModule;->onReadyStateChanged(Z)V

    .line 2595
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/SquareModule$23;

    invoke-direct {v4, p0}, Lcom/android/camera/SquareModule$23;-><init>(Lcom/android/camera/SquareModule;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v2
.end method

.method private createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;
    .locals 12
    .param p1, "orientation"    # I

    .prologue
    .line 1000
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->getSessionTime()J

    move-result-wide v2

    .line 1001
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 1002
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1004
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v10

    .line 1005
    .local v10, "session":Lcom/android/camera/session/CaptureSession;
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v5, "default_scope"

    const-string v11, "pref_camera_effect_mode_key"

    invoke-virtual {v0, v5, v11}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v7

    .line 1006
    .local v7, "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->STICKER:Lcom/android/camera/effect/EffectChooseState;

    if-eq v7, v0, :cond_0

    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->ANIMOJI:Lcom/android/camera/effect/EffectChooseState;

    if-ne v7, v0, :cond_5

    :cond_0
    const/4 v9, 0x1

    .line 1021
    .local v9, "isPreviewOnly":Z
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mBrandLogoEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v5, "BrandLogoViewData.getData"

    invoke-interface {v0, v5}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    .line 1023
    .local v8, "guard":Lcom/android/camera/stats/profiler/Profile;
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create BrandLogoViewData with Picture Size = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, p0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v11}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0, v9}, Lcom/android/camera/SquareModule;->getBrandLogoViewData(Z)Lcom/android/camera/brandlogo/BrandLogoViewData;

    move-result-object v6

    .line 1025
    .local v6, "brandLogoViewData":Lcom/android/camera/brandlogo/BrandLogoViewData;
    const-string v0, "BrandLogoViewData get"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1026
    if-eqz v6, :cond_6

    .line 1027
    iput p1, v6, Lcom/android/camera/brandlogo/BrandLogoViewData;->mOrientation:I

    .line 1028
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BrandLogoViewData = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/camera/brandlogo/BrandLogoViewData;->dump()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1029
    invoke-static {v6}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/android/camera/session/CaptureSession;->setBrandLogoViewData(Lcom/google/common/base/Optional;)V

    .line 1034
    .end local v6    # "brandLogoViewData":Lcom/android/camera/brandlogo/BrandLogoViewData;
    .end local v8    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_1
    :goto_1
    invoke-interface {v10, v9}, Lcom/android/camera/session/CaptureSession;->setPreviewOnly(Z)V

    .line 1037
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-eqz v0, :cond_2

    .line 1038
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v11, 0x4

    invoke-virtual {v0, v5, v11, v7}, Lcom/android/camera/stats/UsageStatistics;->faceEffectDoneEvent(Lcom/android/camera/app/AppController;ILcom/android/camera/effect/EffectChooseState;)V

    .line 1041
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->STICKER:Lcom/android/camera/effect/EffectChooseState;

    if-eq v7, v0, :cond_4

    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->ANIMOJI:Lcom/android/camera/effect/EffectChooseState;

    if-eq v7, v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mFrontCameraMirror:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v5, :cond_4

    .line 1042
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mFrontCameraMirror:Z

    invoke-interface {v10, v0}, Lcom/android/camera/session/CaptureSession;->setMirror(Z)V

    .line 1044
    :cond_4
    new-instance v0, Lcom/android/camera/stats/CaptureStats;

    iget-boolean v5, p0, Lcom/android/camera/SquareModule;->mHdrPlusEnabled:Z

    invoke-direct {v0, v5}, Lcom/android/camera/stats/CaptureStats;-><init>(Z)V

    iget-object v5, p0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v10, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 1045
    return-object v10

    .line 1006
    .end local v9    # "isPreviewOnly":Z
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1031
    .restart local v6    # "brandLogoViewData":Lcom/android/camera/brandlogo/BrandLogoViewData;
    .restart local v8    # "guard":Lcom/android/camera/stats/profiler/Profile;
    .restart local v9    # "isPreviewOnly":Z
    :cond_6
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "can\'t get BrandLogoViewData."

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createAndStartUntrackedCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 9

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->getSessionTime()J

    move-result-wide v2

    .line 1095
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 1096
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstFolderName(J)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1098
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewBurstSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 1099
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isSupportHWRotate()Z

    move-result v0

    invoke-interface {v6, v0}, Lcom/android/camera/session/CaptureSession;->setImageHWRotate(Z)V

    .line 1100
    const/4 v0, 0x0

    new-instance v5, Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    .line 1101
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v5, v7, v8}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1100
    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 1102
    return-object v6
.end method

.method private decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V
    .locals 9
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    const/16 v1, 0xc

    .line 953
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    .line 954
    .local v8, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-static {v8}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v7

    .line 955
    .local v7, "isBeautyOn":Z
    const-string v0, "default_scope"

    const-string v3, "pref_beauty_level_key"

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f08035f

    .line 956
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 955
    invoke-virtual {v8, v0, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v6

    .line 957
    .local v6, "beautyLevel":I
    invoke-interface {p1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeBeautyCaptureRequest(IIZ)V

    .line 963
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v3}, Lcom/android/camera/stats/UsageStatistics;->getCurrentResolution(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v2

    .line 965
    .local v2, "pictureResolutionData":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/SquareModule;->mWatermarkEnabled:Z

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeCaptureRequest(ILjava/lang/String;ZJ)V

    .line 972
    return-void
.end method

.method private getBeautyButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1948
    new-instance v0, Lcom/android/camera/SquareModule$20;

    invoke-direct {v0, p0}, Lcom/android/camera/SquareModule$20;-><init>(Lcom/android/camera/SquareModule;)V

    return-object v0
.end method

.method private getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1887
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1888
    new-instance v0, Lcom/android/camera/SquareModule$18;

    invoke-direct {v0, p0}, Lcom/android/camera/SquareModule$18;-><init>(Lcom/android/camera/SquareModule;)V

    .line 1917
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/SquareModule$19;

    invoke-direct {v0, p0}, Lcom/android/camera/SquareModule$19;-><init>(Lcom/android/camera/SquareModule;)V

    goto :goto_0
.end method

.method private getEffectChooseCallback()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1962
    new-instance v0, Lcom/android/camera/SquareModule$21;

    invoke-direct {v0, p0}, Lcom/android/camera/SquareModule$21;-><init>(Lcom/android/camera/SquareModule;)V

    return-object v0
.end method

.method private getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 1834
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1835
    new-instance v0, Lcom/android/camera/SquareModule$16;

    invoke-direct {v0, p0}, Lcom/android/camera/SquareModule$16;-><init>(Lcom/android/camera/SquareModule;)V

    .line 1857
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/SquareModule$17;

    invoke-direct {v0, p0}, Lcom/android/camera/SquareModule$17;-><init>(Lcom/android/camera/SquareModule;)V

    goto :goto_0
.end method

.method private getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1241
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    return-object v0

    .line 1242
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
    .line 1107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private hideEffectAndShowBeautyOrZoomIfNeeded()V
    .locals 2

    .prologue
    .line 1991
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectChooseManager;->hide()V

    .line 1992
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v0

    .line 1993
    .local v0, "isBeautyOn":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/SquareModule;->updateBeautyAndZoomUI(ZZ)V

    .line 1994
    return-void

    .line 1993
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initSurfaceTextureConsumer()V
    .locals 4

    .prologue
    .line 1211
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1212
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1214
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1215
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    .line 1213
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1217
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->reopenCamera()V

    .line 1219
    return-void

    .line 1217
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

    .line 2118
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 2127
    :cond_0
    :goto_0
    return v1

    .line 2123
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 2124
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2127
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

    .line 2125
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
    .line 1667
    const/4 v3, 0x0

    .line 1668
    .local v3, "passive":Z
    sget-object v7, Lcom/android/camera/SquareModule$24;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1693
    :cond_0
    :goto_0
    return-void

    .line 1671
    :pswitch_0
    iget-wide v8, p0, Lcom/android/camera/SquareModule;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 1672
    iput-wide p2, p0, Lcom/android/camera/SquareModule;->mAutoFocusScanStartFrame:J

    .line 1673
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/SquareModule;->mAutoFocusScanStartTime:J

    goto :goto_0

    .line 1678
    :pswitch_1
    const/4 v3, 0x1

    .line 1681
    :pswitch_2
    iget-wide v8, p0, Lcom/android/camera/SquareModule;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1682
    iget-wide v8, p0, Lcom/android/camera/SquareModule;->mAutoFocusScanStartFrame:J

    sub-long v4, p2, v8

    .line 1683
    .local v4, "frames":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/SquareModule;->mAutoFocusScanStartTime:J

    sub-long v0, v8, v10

    .line 1684
    .local v0, "dt":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    long-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1685
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

    .line 1686
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1685
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1687
    .local v6, "report":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1688
    iget-object v7, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

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

    invoke-virtual {v7, v8}, Lcom/android/camera/SquareModuleUI;->showDebugMessage(Ljava/lang/String;)V

    .line 1689
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/camera/SquareModule;->mAutoFocusScanStartFrame:J

    goto :goto_0

    .line 1685
    .end local v6    # "report":Ljava/lang/String;
    :cond_1
    const-string v7, "AF"

    goto :goto_1

    .line 1668
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
    .line 1981
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_beauty"

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->getValueOfCurrentIndex(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1983
    .local v0, "beautyState":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080313

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1984
    .local v1, "isShow":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/camera/SquareModule;->updateBeautyAndZoomUI(ZZ)V

    .line 1985
    return-void

    .line 1984
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onPreviewStarted()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2020
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mState:Lcom/android/camera/SquareModule$ModuleState;

    sget-object v2, Lcom/android/camera/SquareModule$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/SquareModule$ModuleState;

    if-ne v1, v2, :cond_0

    .line 2021
    sget-object v1, Lcom/android/camera/SquareModule$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/SquareModule$ModuleState;

    iput-object v1, p0, Lcom/android/camera/SquareModule;->mState:Lcom/android/camera/SquareModule$ModuleState;

    .line 2023
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 2024
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2025
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 2026
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2027
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2028
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->updateEffectBeautyZoomUI()V

    .line 2029
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getDisplayOrientation(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/SquareModuleUI;->onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 2030
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/SquareModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 2031
    return-void

    .line 2029
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openCameraAndStartPreview()V
    .locals 25

    .prologue
    .line 2158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v6, "SquareModule.openCameraAndStartPreview()"

    invoke-interface {v4, v6}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v23

    .line 2166
    .local v23, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v6, 0x9c4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2168
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Time out waiting to acquire camera-open lock."

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2170
    :catch_0
    move-exception v20

    .line 2171
    .local v20, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Interrupted while waiting to acquire camera-open lock."

    move-object/from16 v0, v20

    invoke-direct {v4, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2174
    .end local v20    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v4, "Acquired mCameraOpenCloseLock"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v4, :cond_1

    .line 2178
    sget-object v4, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Camera already open, not re-opening."

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2180
    const-string v4, "Camera is already open"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2545
    :goto_0
    return-void

    .line 2186
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v6, :cond_7

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v4

    sget-object v6, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v4, v6, :cond_7

    .line 2187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v6, "default_scope"

    const-string v7, "pref_dual_cam_controller_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2188
    .local v19, "dualCamControlValue":Ljava/lang/String;
    sget-object v4, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openCameraAndStartPreview : dualCamControlValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0803e8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v6}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 2192
    .local v17, "cameraId":Lcom/android/camera/device/CameraId;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v24

    .line 2205
    .end local v19    # "dualCamControlValue":Ljava/lang/String;
    .local v24, "slaveCameraId":Lcom/android/camera/device/CameraId;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    .line 2206
    sget-object v4, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsBeautyEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v21

    .line 2208
    .local v21, "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    sget-object v4, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_8

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    .line 2209
    sget-object v4, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsEffectEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2210
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useVendorBeautyForPreview()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_2
    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/SquareModule;->mIsOpenGLEnabled:Z

    .line 2211
    sget-object v4, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsOpenGLEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/camera/SquareModule;->mIsOpenGLEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2213
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2218
    .local v15, "settingScope":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Lcom/android/camera/settings/ResolutionSetting;->getSquarePictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    .line 2221
    const/4 v5, 0x0

    .line 2222
    .local v5, "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useVendorBeautyForPreview()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqEffect()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2223
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    if-eqz v4, :cond_a

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 2229
    :goto_4
    sget-object v4, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "captureMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    sget-object v12, Lcom/android/camera/one/OneCameraCaptureSetting;->DEFAULT_PREVIEW_FPS:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2231
    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/SquareModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v14

    const/16 v16, 0x0

    .line 2230
    invoke-static/range {v4 .. v16}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 2237
    .local v18, "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    const-string v4, "OneCameraCaptureSetting.get"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2239
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/SquareModule;->mPaused:Z

    if-eqz v4, :cond_d

    .line 2240
    sget-object v4, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Abort Camera Opened due to Module Paused"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2242
    const-string v4, "Abort Camera Opened due to Module Paused"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2192
    .end local v5    # "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .end local v15    # "settingScope":Ljava/lang/String;
    .end local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    .end local v21    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    .end local v24    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    .restart local v19    # "dualCamControlValue":Ljava/lang/String;
    :cond_3
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 2193
    .end local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0803e9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 2195
    .restart local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    :goto_5
    const/16 v24, 0x0

    .restart local v24    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_1

    .line 2194
    .end local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v24    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v6}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    goto :goto_5

    .line 2197
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v6}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 2198
    .restart local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    const/16 v24, 0x0

    .restart local v24    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_1

    .line 2201
    .end local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v19    # "dualCamControlValue":Ljava/lang/String;
    .end local v24    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v6}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 2202
    .restart local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    const/16 v24, 0x0

    .restart local v24    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_1

    .line 2208
    .restart local v21    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2210
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2223
    .restart local v5    # "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .restart local v15    # "settingScope":Ljava/lang/String;
    :cond_a
    :try_start_2
    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    goto/16 :goto_4

    .line 2226
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/SquareModule;->mIsOpenGLEnabled:Z

    if-eqz v4, :cond_c

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    :goto_6
    goto/16 :goto_4

    :cond_c
    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    :try_end_2
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 2232
    .end local v5    # "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    :catch_1
    move-exception v22

    .line 2233
    .local v22, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 2234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 2246
    .end local v22    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v5    # "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .restart local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    new-instance v6, Lcom/android/camera/SquareModule$22;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    move-object/from16 v3, v24

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/camera/SquareModule$22;-><init>(Lcom/android/camera/SquareModule;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/device/CameraId;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v4, v0, v1, v6}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0
.end method

.method private reopenCamera()V
    .locals 2

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1226
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->stopBurst()V

    .line 1228
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/SquareModule$12;

    invoke-direct {v1, p0}, Lcom/android/camera/SquareModule$12;-><init>(Lcom/android/camera/SquareModule;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requiresNexus4SpecificFixFor16By9Previews()Z
    .locals 1

    .prologue
    .line 2048
    sget-boolean v0, Lcom/android/camera/SquareModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    .line 2049
    invoke-direct {p0, v0}, Lcom/android/camera/SquareModule;->is16by9AspectRatio(Lcom/android/camera/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2048
    :goto_0
    return v0

    .line 2049
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTextureBufferSize()V
    .locals 0

    .prologue
    .line 2657
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->updatePreviewBufferSize()V

    .line 2658
    return-void
.end method

.method private setHDRBadgeVisible()V
    .locals 2

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2555
    :goto_0
    return-void

    .line 2550
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    if-ne v0, v1, :cond_1

    .line 2551
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setHDRBadgeVisible(I)V

    goto :goto_0

    .line 2553
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setHDRBadgeVisible(I)V

    goto :goto_0
.end method

.method private setHDRBadgeVisible(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    if-ne v0, v1, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setHDRBadgeVisible(I)V

    .line 2562
    :goto_0
    return-void

    .line 2560
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setHDRBadgeVisible(I)V

    goto :goto_0
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

    .line 1561
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v3, :cond_1

    .line 1610
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v3, :cond_2

    .line 1568
    sget-object v3, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "SquareModule mFocusController is null!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1572
    :cond_2
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1573
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1574
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 1581
    :goto_1
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 1582
    .local v0, "points":[F
    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v5

    .line 1583
    int-to-float v3, p2

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v8

    .line 1586
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1587
    .local v1, "rotationMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/android/camera/SquareModule;->mDisplayRotation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1588
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/SquareModule;->mDisplayRotation:I

    .line 1590
    :cond_3
    iget v3, p0, Lcom/android/camera/SquareModule;->mDisplayRotation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1591
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1594
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    .line 1595
    aget v3, v0, v5

    sub-float v3, v7, v3

    aput v3, v0, v5

    .line 1598
    :cond_4
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    aget v4, v0, v5

    aget v5, v0, v8

    invoke-interface {v3, v4, v5}, Lcom/android/camera/one/OneCamera;->triggerFocusAndMeterAtPoint(FF)V

    .line 1601
    iget v3, p0, Lcom/android/camera/SquareModule;->mZoomValue:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_0

    .line 1602
    new-instance v2, Lcom/android/camera/ui/TouchCoordinate;

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    .line 1605
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    .line 1606
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/ui/TouchCoordinate;-><init>(FFFF)V

    .line 1608
    .local v2, "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 1576
    .end local v0    # "points":[F
    .end local v1    # "rotationMatrix":Landroid/graphics/Matrix;
    .end local v2    # "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    :cond_5
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1577
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V

    goto/16 :goto_1
.end method

.method private startPassiveFocus()V
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 1624
    :goto_0
    return-void

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0
.end method

.method private stopBurst()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->stopBurst()Z

    .line 852
    :cond_0
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2614
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchCamera : mShowErrorAndFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2615
    iget-boolean v1, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    if-eqz v1, :cond_1

    .line 2637
    :cond_0
    :goto_0
    return-void

    .line 2618
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    if-nez v1, :cond_0

    .line 2621
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "switchCamera"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2623
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->needEffectForCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    .line 2624
    .local v0, "needEffectAfterSwitch":Z
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2625
    iget-boolean v1, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 2626
    :goto_1
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2627
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->presetEffectForCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)V

    .line 2628
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "preset effect setting done"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2631
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->cancelCountDown()V

    .line 2632
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/SquareModuleUI;->clearFaces()V

    .line 2633
    iput-boolean v4, p0, Lcom/android/camera/SquareModule;->mSwitchCamera:Z

    .line 2634
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->initSurfaceTextureConsumer()V

    .line 2635
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v4}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    .line 2636
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->onCameraFacingChange(Lcom/android/camera/one/OneCamera$Facing;)V

    goto :goto_0

    .line 2625
    :cond_3
    if-eqz v0, :cond_2

    goto :goto_1
.end method

.method private switchToRegularCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 2002
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2003
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2007
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 2008
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 2009
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 2010
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 2012
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 2013
    return-void
.end method

.method private takePictureNow()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 975
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 976
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Not taking picture since Camera is closed."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 993
    :goto_0
    return-void

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    .line 981
    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 982
    .local v2, "orientation":I
    invoke-direct {p0, v2}, Lcom/android/camera/SquareModule;->createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;

    move-result-object v12

    .line 984
    .local v12, "session":Lcom/android/camera/session/CaptureSession;
    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/DebugYuvDumpUtil;->setSessionTitle(Ljava/lang/String;)V

    .line 985
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/DebugYuvDumpUtil;->setCameraId(Ljava/lang/String;)V

    .line 988
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 989
    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 990
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    iget-object v7, p0, Lcom/android/camera/SquareModule;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v6, p0, Lcom/android/camera/SquareModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/SquareModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v6}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v8

    :goto_1
    iget v9, p0, Lcom/android/camera/SquareModule;->mZoomValue:F

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-nez v6, :cond_2

    const/4 v11, 0x1

    :goto_2
    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFFZ)V

    .line 991
    .local v0, "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    invoke-direct {p0, v12}, Lcom/android/camera/SquareModule;->decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V

    .line 992
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1, v0, v12}, Lcom/android/camera/one/OneCamera;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0

    .end local v0    # "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    :cond_1
    move v8, v5

    .line 990
    goto :goto_1

    :cond_2
    move v11, v5

    goto :goto_2
.end method

.method private updateBeautyAndZoomUI(ZZ)V
    .locals 2
    .param p1, "isBeautyShow"    # Z
    .param p2, "isZoomShow"    # Z

    .prologue
    .line 1987
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/SquareModuleUI;->setBeautyVisibility(I)V

    .line 1989
    return-void

    .line 1987
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateCameraCharacteristics()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 678
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v3

    sget-object v4, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v3, v4, :cond_4

    .line 679
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_dual_cam_controller_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "dualCamControlValue":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCameraCharacteristics : dualCamControlValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 681
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 682
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 691
    .end local v1    # "dualCamControlValue":Ljava/lang/String;
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 692
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 693
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 699
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_0
    :goto_1
    return v2

    .line 683
    .restart local v1    # "dualCamControlValue":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 684
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :goto_2
    goto :goto_0

    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    goto :goto_2

    .line 686
    :cond_3
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    goto :goto_0

    .line 689
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v1    # "dualCamControlValue":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    goto :goto_0

    .line 695
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :catch_0
    move-exception v3

    .line 698
    :cond_5
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_1
.end method

.method private updateEffectBeautyZoomUI()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1971
    iget-object v4, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    if-nez v4, :cond_0

    .line 1979
    :goto_0
    return-void

    .line 1972
    :cond_0
    iget-object v4, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseManager;->isShow()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1973
    .local v0, "hide":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 1974
    iget-object v4, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    .line 1975
    .local v1, "isBeautyOn":Z
    if-nez v1, :cond_2

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/android/camera/SquareModule;->updateBeautyAndZoomUI(ZZ)V

    goto :goto_0

    .end local v0    # "hide":Z
    .end local v1    # "isBeautyOn":Z
    :cond_1
    move v0, v3

    .line 1972
    goto :goto_1

    .restart local v0    # "hide":Z
    .restart local v1    # "isBeautyOn":Z
    :cond_2
    move v2, v3

    .line 1975
    goto :goto_2

    .line 1977
    .end local v1    # "isBeautyOn":Z
    :cond_3
    invoke-direct {p0, v3, v3}, Lcom/android/camera/SquareModule;->updateBeautyAndZoomUI(ZZ)V

    goto :goto_0
.end method

.method private updatePreviewBufferDimension()V
    .locals 4

    .prologue
    .line 2136
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 2152
    :goto_0
    return-void

    .line 2139
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/OneCamera;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 2140
    .local v0, "previewBufferSize":Lcom/android/camera/util/Size;
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/SquareModule;->mPreviewBufferWidth:I

    .line 2141
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/SquareModule;->mPreviewBufferHeight:I

    .line 2144
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2148
    const/16 v1, 0x500

    iput v1, p0, Lcom/android/camera/SquareModule;->mPreviewBufferWidth:I

    .line 2149
    const/16 v1, 0x3c0

    iput v1, p0, Lcom/android/camera/SquareModule;->mPreviewBufferHeight:I

    .line 2151
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->updatePreviewBufferSize()V

    goto :goto_0
.end method

.method private updatePreviewBufferSize()V
    .locals 4

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1247
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/SquareModule;->mPreviewBufferWidth:I

    iget v3, p0, Lcom/android/camera/SquareModule;->mPreviewBufferHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1251
    :cond_0
    monitor-exit v1

    .line 1252
    return-void

    .line 1251
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
    .line 2038
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/SquareModule;->updatePreviewTransform(IIZ)V

    .line 2039
    return-void
.end method

.method private updatePreviewTransform(IIZ)V
    .locals 8
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 2058
    sget-object v2, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2060
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2061
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 2063
    .local v0, "incomingRotation":I
    iget v2, p0, Lcom/android/camera/SquareModule;->mScreenHeight:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/camera/SquareModule;->mScreenWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/SquareModule;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 2065
    monitor-exit v3

    .line 2107
    :goto_0
    return-void

    .line 2068
    :cond_0
    iput v0, p0, Lcom/android/camera/SquareModule;->mDisplayRotation:I

    .line 2069
    iput p1, p0, Lcom/android/camera/SquareModule;->mScreenWidth:I

    .line 2070
    iput p2, p0, Lcom/android/camera/SquareModule;->mScreenHeight:I

    .line 2071
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->updatePreviewBufferDimension()V

    .line 2084
    sget-boolean v2, Lcom/android/camera/SquareModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 2086
    iget v2, p0, Lcom/android/camera/SquareModule;->mPreviewBufferWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/SquareModule;->mPreviewBufferHeight:I

    if-eqz v2, :cond_1

    .line 2087
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2090
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    const v4, 0x3fe38e39

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 2106
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

    .line 2092
    .restart local v0    # "incomingRotation":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    iget v4, p0, Lcom/android/camera/SquareModule;->mPreviewBufferWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/SquareModule;->mPreviewBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    goto :goto_1

    .line 2097
    :cond_3
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v2, :cond_4

    .line 2098
    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2099
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    iput-object v2, p0, Lcom/android/camera/SquareModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 2101
    :cond_4
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v4, Lcom/android/camera/util/Size;

    iget v5, p0, Lcom/android/camera/SquareModule;->mScreenWidth:I

    iget v6, p0, Lcom/android/camera/SquareModule;->mScreenHeight:I

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v5, Lcom/android/camera/util/Size;

    iget v6, p0, Lcom/android/camera/SquareModule;->mPreviewBufferWidth:I

    iget v7, p0, Lcom/android/camera/SquareModule;->mPreviewBufferHeight:I

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 2104
    .local v1, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 1344
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1345
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 1347
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 1348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 1352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_2

    .line 1355
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 1358
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    iput-object v3, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1360
    return-void

    .line 1358
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1450
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 1451
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v3

    .line 1452
    .local v3, "powerMgr":Lcom/android/camera/PowerStateManager;
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 1453
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1454
    if-nez v3, :cond_0

    move v2, v4

    .line 1455
    .local v2, "isLowPower":Z
    :goto_0
    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v6

    .line 1456
    .local v1, "isHdrOn":Z
    :goto_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    iget-boolean v5, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-nez v5, :cond_2

    move v5, v6

    :goto_2
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 1457
    sget-object v5, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHdrOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1458
    sget-object v5, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLowPower = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1459
    sget-object v5, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1461
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 1462
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->getHdrButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hdrCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1463
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 1464
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 1465
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 1466
    iget-object v5, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1467
    invoke-interface {v5}, Lcom/android/camera/one/OneCameraCharacteristics;->isExposureCompensationSupported()Z

    move-result v5

    :goto_3
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 1468
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 1470
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 1471
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 1472
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 1474
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 1476
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 1478
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v5

    sget-object v7, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v5, v7, :cond_4

    move v5, v6

    :goto_4
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 1479
    iget-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v5, v7, :cond_5

    move v5, v6

    :goto_5
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 1480
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 1482
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableEffect:Z

    .line 1483
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->getEffectChooseCallback()Landroid/view/View$OnClickListener;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->effectCallback:Landroid/view/View$OnClickListener;

    .line 1485
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showBeauty:Z

    .line 1486
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableBeauty:Z

    .line 1487
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->getBeautyButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->beautyCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1490
    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->isGoogleLensAvailable()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showLens:Z

    .line 1491
    iget-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showLens:Z

    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLens:Z

    .line 1494
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showMotion:Z

    .line 1496
    iget-boolean v4, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    .line 1497
    return-object v0

    .line 1454
    .end local v1    # "isHdrOn":Z
    .end local v2    # "isLowPower":Z
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v2

    goto/16 :goto_0

    .restart local v2    # "isLowPower":Z
    :cond_1
    move v1, v4

    .line 1455
    goto/16 :goto_1

    .restart local v1    # "isHdrOn":Z
    :cond_2
    move v5, v4

    .line 1456
    goto/16 :goto_2

    :cond_3
    move v5, v4

    .line 1467
    goto :goto_3

    :cond_4
    move v5, v4

    .line 1478
    goto :goto_4

    :cond_5
    move v5, v4

    .line 1479
    goto :goto_5
.end method

.method public getBrandLogoViewData(Z)Lcom/android/camera/brandlogo/BrandLogoViewData;
    .locals 13
    .param p1, "previewOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1048
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1049
    .local v12, "scale":F
    if-eqz p1, :cond_3

    .line 1050
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1054
    :goto_0
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->getBrandLogo(Z)I

    move-result v2

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1055
    .local v0, "oribitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 1056
    .local v11, "left":I
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 1059
    .local v7, "bottom":I
    iget v2, p0, Lcom/android/camera/SquareModule;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_5

    .line 1060
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    int-to-float v8, v2

    .line 1061
    .local v8, "childCenterX":F
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v9, v2, v3

    .line 1068
    .local v9, "childCenterY":F
    :goto_2
    new-instance v10, Lcom/android/camera/brandlogo/BrandLogoViewData;

    invoke-direct {v10}, Lcom/android/camera/brandlogo/BrandLogoViewData;-><init>()V

    .line 1069
    .local v10, "data":Lcom/android/camera/brandlogo/BrandLogoViewData;
    mul-float v2, v8, v12

    iput v2, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterX:F

    .line 1070
    mul-float v2, v9, v12

    iput v2, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterY:F

    .line 1072
    if-eqz v0, :cond_0

    .line 1073
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1074
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1075
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    .line 1077
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1078
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1079
    const/4 v0, 0x0

    .line 1082
    :cond_1
    int-to-float v1, v11

    mul-float/2addr v1, v12

    float-to-int v1, v1

    iput v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->offset:I

    .line 1083
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1084
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/camera/util/FileUtil;->bitmapToNV21A(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mNV21A:[B

    .line 1085
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    iput v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoWidth:I

    .line 1086
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    iput v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoHeight:I

    .line 1089
    :cond_2
    return-object v10

    .line 1052
    .end local v0    # "oribitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bottom":I
    .end local v8    # "childCenterX":F
    .end local v9    # "childCenterY":F
    .end local v10    # "data":Lcom/android/camera/brandlogo/BrandLogoViewData;
    .end local v11    # "left":I
    :cond_3
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v12, v2, v3

    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 1054
    goto/16 :goto_1

    .line 1063
    .restart local v0    # "oribitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bottom":I
    .restart local v11    # "left":I
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    int-to-float v8, v2

    .line 1064
    .restart local v8    # "childCenterX":F
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 487
    sget-object v0, Lcom/android/camera/SquareModule$24;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 495
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 489
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 491
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 493
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 487
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
    .line 1385
    new-instance v0, Lcom/android/camera/SquareModule$13;

    invoke-direct {v0, p0}, Lcom/android/camera/SquareModule$13;-><init>(Lcom/android/camera/SquareModule;)V

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1713
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080440

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1712
    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

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
    .line 1374
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1377
    const-string v0, "default_scope"

    const-string v1, "pref_camera_hdr_plus_key"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1378
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1379
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1378
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :cond_0
    return-void
.end method

.method public hideScreenFlash()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/SquareModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/SquareModule$7;-><init>(Lcom/android/camera/SquareModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 9
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v1, "SquareModule.init"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v7

    .line 705
    .local v7, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 707
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSceneRecognitionManager()Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .line 708
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init UseAutotransformUiLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/camera/SquareModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 711
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 710
    invoke-direct {p0, v0}, Lcom/android/camera/SquareModule;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 713
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->useFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 719
    :cond_0
    const-string v0, "get Camera Facing"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 720
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->updateCameraCharacteristics()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    .line 721
    const-string v0, "update Camera Characteristics"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 722
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_2

    .line 723
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 724
    const-string v0, "Error"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 753
    :goto_1
    return-void

    .line 720
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    .line 728
    .local v8, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v0, "default_scope"

    const-string v1, "pref_beauty_level_key"

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f08035f

    .line 729
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 728
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v4

    .line 730
    .local v4, "level":I
    invoke-static {v8}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    .line 731
    .local v5, "isBeautyOn":Z
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 732
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseManager;->getIsLastModuelShowEffectPanel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 733
    const/4 v5, 0x0

    .line 734
    :cond_3
    new-instance v0, Lcom/android/camera/SquareModuleUI;

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mUIListener:Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SquareModuleUI;-><init>(Lcom/android/camera/CameraActivity;Landroid/view/View;Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;IZ)V

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    .line 735
    const-string v0, "SquareModuleUI.init"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 737
    const-string v0, "PreviewStatusListener.init"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 741
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    const-string v0, "PreviewSurfaceTexture.init"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 744
    const v0, 0x7f0f00ba

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 745
    .local v6, "cancelButton":Landroid/view/View;
    new-instance v0, Lcom/android/camera/SquareModule$9;

    invoke-direct {v0, p0}, Lcom/android/camera/SquareModule$9;-><init>(Lcom/android/camera/SquareModule;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    invoke-interface {v7}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto :goto_1

    .line 741
    .end local v6    # "cancelButton":Landroid/view/View;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 1502
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 2662
    const/4 v0, 0x1

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1370
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1113
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1114
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1115
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1118
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->takePictureNow()V

    goto :goto_0
.end method

.method public onFirstPreviewArrived()V
    .locals 5

    .prologue
    .line 602
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 603
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/SquareModule$8;

    invoke-direct {v1, p0}, Lcom/android/camera/SquareModule$8;-><init>(Lcom/android/camera/SquareModule;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 656
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/SquareModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v2}, Lcom/android/camera/SquareModuleUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 659
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 660
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 661
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 663
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/SquareModuleUI;->loadModuleLayout()V

    .line 671
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->registerEffectChoose(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 672
    :cond_2
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 3
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    .line 1631
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1663
    :cond_0
    :goto_0
    return-void

    .line 1632
    :cond_1
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1633
    sget-object v0, Lcom/android/camera/SquareModule$24;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1660
    :goto_1
    sget-boolean v0, Lcom/android/camera/SquareModule;->CAPTURE_DEBUG_UI:Z

    if-eqz v0, :cond_0

    .line 1661
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/SquareModule;->measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V

    goto :goto_0

    .line 1635
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1636
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->startPassiveFocus()V

    goto :goto_1

    .line 1639
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1642
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1646
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1650
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1653
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1633
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

    .line 1518
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return v0

    .line 1519
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1535
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1522
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/SquareModuleUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1523
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->cancelCountDown()V

    goto :goto_0

    .line 1524
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1526
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1527
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1528
    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1533
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/camera/SquareModule;->handleKeyDownEventForVolumeKey(Landroid/view/KeyEvent;Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;)Z

    move-result v0

    goto :goto_0

    .line 1519
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
    .line 1507
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/SquareModuleUI;->isCountingDown()Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v6, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    new-instance v7, Lcom/android/camera/SquareModule$14;

    invoke-direct {v7, p0}, Lcom/android/camera/SquareModule$14;-><init>(Lcom/android/camera/SquareModule;)V

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/SquareModule;->handleKeyLongPressForBurstShot(IZLcom/android/camera/one/OneCamera;Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Lcom/android/camera/burst/BurstFacade;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1540
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 1553
    :goto_0
    return v0

    .line 1541
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1553
    const/4 v0, 0x0

    goto :goto_0

    .line 1544
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1545
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1546
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1547
    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->onShutterButtonClick()V

    .line 1550
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->stopBurst()V

    goto :goto_0

    .line 1541
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
    .line 1364
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1365
    return-void
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1729
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1724
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 2

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/SquareModule;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1739
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1742
    const/4 v1, 0x0

    .line 1744
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1750
    :goto_0
    new-instance v2, Lcom/android/camera/SquareModule$15;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/SquareModule$15;-><init>(Lcom/android/camera/SquareModule;Lcom/android/camera/session/CaptureSession;)V

    .line 1807
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 1808
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1812
    :goto_1
    return-void

    .line 1745
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 1746
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1747
    const/4 v1, 0x1

    goto :goto_0

    .line 1810
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "runnable":Ljava/lang/Runnable;
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 1156
    iget-boolean v3, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1157
    :cond_0
    const/4 v1, 0x0

    .line 1159
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :goto_1
    new-instance v2, Lcom/android/camera/SquareModule$11;

    invoke-direct {v2, p0}, Lcom/android/camera/SquareModule$11;-><init>(Lcom/android/camera/SquareModule;)V

    .line 1196
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 1197
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1160
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1162
    const/4 v1, 0x1

    goto :goto_1

    .line 1199
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
    .line 1697
    if-eqz p1, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1700
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1708
    :goto_0
    return-void

    .line 1703
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectChooseManager;->onReadyStateChanged(Z)V

    .line 1704
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1705
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1706
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 1123
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-nez v0, :cond_2

    .line 1125
    new-instance v0, Lcom/android/camera/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1128
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayerLoaded:Z

    if-nez v0, :cond_4

    .line 1129
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1131
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1132
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/SquareModule;->mSoundPlayerLoaded:Z

    .line 1135
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_0

    .line 1136
    if-ne p1, v3, :cond_5

    .line 1137
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0

    .line 1138
    :cond_5
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1139
    :cond_6
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 1205
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRemoteShutterPress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1207
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->takePictureNow()V

    .line 1208
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 12
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 373
    const-string v9, "pref_camera_screen_key"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 374
    const-string v9, "default_scope"

    invoke-virtual {p1, v9, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 375
    .local v1, "currentValue":I
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 376
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x7f0803c4

    .line 377
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eq v1, v9, :cond_0

    const v9, 0x7f0803c6

    .line 378
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v1, v9, :cond_1

    :cond_0
    move v5, v8

    .line 379
    .local v5, "isPIPOn":Z
    :cond_1
    iget-boolean v9, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    if-nez v9, :cond_5

    if-eqz v5, :cond_5

    .line 380
    const v9, 0x7f0b0011

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 382
    .local v4, "index":I
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 383
    iget-object v8, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v8, v4}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 483
    .end local v1    # "currentValue":I
    .end local v4    # "index":I
    .end local v5    # "isPIPOn":Z
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    return-void

    .line 386
    :cond_3
    const-string v9, "pref_camera_effect_mode_key"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 387
    const-string v9, "default_scope"

    invoke-virtual {p1, v9, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v7

    .line 388
    .local v7, "state":Lcom/android/camera/effect/EffectChooseState;
    sget-object v9, Lcom/android/camera/SquareModule$24;->$SwitchMap$com$android$camera$effect$EffectChooseState:[I

    invoke-virtual {v7}, Lcom/android/camera/effect/EffectChooseState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 402
    iget-boolean v9, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-nez v9, :cond_5

    .line 403
    iget-boolean v9, p0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    if-eqz v9, :cond_8

    .line 404
    iput-boolean v8, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    .line 405
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v5}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V

    .line 406
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    iget-boolean v10, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-nez v10, :cond_4

    move v5, v8

    :cond_4
    invoke-virtual {v9, v5}, Lcom/android/camera/SquareModuleUI;->setZoomEnable(Z)V

    .line 451
    .end local v7    # "state":Lcom/android/camera/effect/EffectChooseState;
    :cond_5
    :goto_1
    const-string v9, "pref_dual_cam_controller_key"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v9, v10, :cond_2

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v9

    sget-object v10, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v9, v10, :cond_2

    .line 452
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v9

    const-string v10, "default_scope"

    const-string v11, "pref_dual_cam_controller_key"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "dualCamControlValue":Ljava/lang/String;
    sget-object v9, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSettingChanged : dualCamControlValue = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0803e8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 457
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v9, v10}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 465
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    :goto_2
    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 466
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 468
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v9, :cond_12

    .line 469
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/camera/SquareModule;->onReadyStateChanged(Z)V

    .line 470
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->reopenCamera()V
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 477
    :catch_0
    move-exception v3

    .line 478
    .local v3, "ignored":Lcom/android/camera/one/OneCameraAccessException;
    iput-boolean v8, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    .line 479
    iget-object v8, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto/16 :goto_0

    .line 390
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v2    # "dualCamControlValue":Ljava/lang/String;
    .end local v3    # "ignored":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v7    # "state":Lcom/android/camera/effect/EffectChooseState;
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-eqz v9, :cond_5

    .line 391
    iget-boolean v9, p0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    if-eqz v9, :cond_7

    .line 392
    iput-boolean v5, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    .line 393
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v5}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V

    .line 394
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    iget-boolean v10, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-nez v10, :cond_6

    move v5, v8

    :cond_6
    invoke-virtual {v9, v5}, Lcom/android/camera/SquareModuleUI;->setZoomEnable(Z)V

    goto/16 :goto_1

    .line 396
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/camera/SquareModule;->onReadyStateChanged(Z)V

    .line 397
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->reopenCamera()V

    goto/16 :goto_1

    .line 408
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/camera/SquareModule;->onReadyStateChanged(Z)V

    .line 409
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->reopenCamera()V

    goto/16 :goto_1

    .line 414
    .end local v7    # "state":Lcom/android/camera/effect/EffectChooseState;
    :cond_9
    const-string v9, "pref_beauty"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 415
    invoke-static {p1}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 416
    iget-boolean v9, p0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    if-nez v9, :cond_a

    .line 417
    iget-boolean v9, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-eqz v9, :cond_b

    .line 418
    iput-boolean v8, p0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    .line 424
    :cond_a
    :goto_3
    iget-boolean v9, p0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    if-nez v9, :cond_5

    .line 425
    iget-boolean v9, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-eqz v9, :cond_c

    .line 426
    iput-boolean v5, p0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    goto/16 :goto_1

    .line 420
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/camera/SquareModule;->onReadyStateChanged(Z)V

    .line 421
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->reopenCamera()V

    goto :goto_3

    .line 428
    :cond_c
    invoke-virtual {p0, v5}, Lcom/android/camera/SquareModule;->onReadyStateChanged(Z)V

    .line 429
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->reopenCamera()V

    goto/16 :goto_1

    .line 434
    :cond_d
    iget-boolean v9, p0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    if-eqz v9, :cond_5

    .line 435
    iget-boolean v9, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-eqz v9, :cond_e

    .line 436
    iput-boolean v5, p0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    goto/16 :goto_1

    .line 438
    :cond_e
    invoke-virtual {p0, v5}, Lcom/android/camera/SquareModule;->onReadyStateChanged(Z)V

    .line 439
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->reopenCamera()V

    goto/16 :goto_1

    .line 458
    .restart local v2    # "dualCamControlValue":Ljava/lang/String;
    :cond_f
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0803e9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 459
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :goto_4
    goto/16 :goto_2

    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_10
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v9, v10}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    goto :goto_4

    .line 461
    :cond_11
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v9, v10}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_2

    .line 472
    :cond_12
    const/4 v9, 0x1

    :try_start_1
    iput-boolean v9, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    .line 473
    iget-object v9, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonClick()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 861
    iget-object v8, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v8, :cond_0

    .line 937
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v8, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_camera_effect_mode_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 865
    .local v1, "effectVal":I
    invoke-static {v1}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v8

    sget-object v9, Lcom/android/camera/effect/EffectChooseState;->LIGHTEN:Lcom/android/camera/effect/EffectChooseState;

    if-ne v8, v9, :cond_1

    move v2, v6

    .line 867
    .local v2, "isLighten":Z
    :goto_1
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->limitQueue()Z

    move-result v8

    if-eqz v8, :cond_2

    move v3, v6

    .line 869
    .local v3, "limitQueue":Z
    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/session/CaptureSessionManager;->getSessionsSize()I

    move-result v6

    sget v7, Lcom/android/camera/SquareModule;->MAX_QUEUE_SIZE:I

    if-le v6, v7, :cond_6

    .line 870
    sget-object v6, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "productLimitQueue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->limitQueue()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > MAX_QUEUE_SIZE return"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "isLighten":Z
    .end local v3    # "limitQueue":Z
    :cond_1
    move v2, v7

    .line 865
    goto :goto_1

    .line 867
    .restart local v2    # "isLighten":Z
    :cond_2
    iget-boolean v8, p0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-eqz v8, :cond_4

    :cond_3
    iget-boolean v8, p0, Lcom/android/camera/SquareModule;->mIsEffectEnabled:Z

    if-eqz v8, :cond_5

    if-eqz v2, :cond_5

    :cond_4
    move v3, v6

    goto :goto_2

    :cond_5
    move v3, v7

    goto :goto_2

    .line 874
    .restart local v3    # "limitQueue":Z
    :cond_6
    sget-object v6, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "onShutterButtonClick"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 877
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v6

    const-string v7, "default_scope"

    const-string v8, "pref_camera_countdown_duration_key"

    .line 878
    invoke-virtual {v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 880
    .local v0, "countDownDuration":I
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 881
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/GoogleAssistantManager;->getTimer()I

    move-result v0

    .line 882
    if-lez v0, :cond_7

    iget-object v6, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v6}, Lcom/android/camera/SquareModuleUI;->isCountingDown()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 884
    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->onFirstPreviewArrived()V

    .line 885
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mMainThread:Lcom/android/camera/async/MainThread;

    iget-object v7, p0, Lcom/android/camera/SquareModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v12, v13}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 887
    :cond_7
    iget-boolean v6, p0, Lcom/android/camera/SquareModule;->mFirstPreviewArrived:Z

    if-nez v6, :cond_8

    .line 888
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mMainThread:Lcom/android/camera/async/MainThread;

    iget-object v7, p0, Lcom/android/camera/SquareModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v12, v13}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 891
    :cond_8
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/GoogleAssistantManager;->finishOperation()V

    .line 896
    :cond_9
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v6, :cond_b

    .line 897
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v6}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v6}, Lcom/android/camera/burst/BurstFacade;->isBurstStopping()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 898
    :cond_a
    sget-object v6, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "onShutterButtonClick ignore - mBurstController busy"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 903
    :cond_b
    iget-boolean v6, p0, Lcom/android/camera/SquareModule;->mFirstPreviewArrived:Z

    if-nez v6, :cond_c

    .line 904
    sget-object v6, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "onShutterButtonClick ignore - First Preview Not Arrived"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 908
    :cond_c
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v6, :cond_d

    .line 909
    sget-object v6, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "onShutterButtonClick ignore - mActivity is null"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 913
    :cond_d
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    .line 915
    .local v4, "storageSpaceBytes":J
    const-wide/32 v6, 0x2faf080

    cmp-long v6, v4, v6

    if-gtz v6, :cond_e

    .line 916
    sget-object v6, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onShutterButtonClick ignore - Not enough space or storage not ready. remaining="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 920
    :cond_e
    const/4 v6, 0x6

    invoke-static {v6}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 922
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 926
    if-lez v0, :cond_f

    .line 928
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 929
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 930
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 931
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v6, p0}, Lcom/android/camera/SquareModuleUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 932
    iget-object v6, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v6, v0}, Lcom/android/camera/SquareModuleUI;->startCountdown(I)V

    goto/16 :goto_0

    .line 935
    :cond_f
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->takePictureNow()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 841
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 842
    if-nez p1, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->stopBurst()V

    .line 846
    :cond_0
    return-void
.end method

.method public onShutterButtonLongPressed()V
    .locals 14

    .prologue
    const-wide/32 v6, 0x2faf080

    .line 757
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-nez v1, :cond_0

    .line 816
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SquareModule;->mFirstPreviewArrived:Z

    if-nez v1, :cond_1

    .line 760
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed ignore - First Preview Not Arrived"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/SquareModule;->mIsBeautyEnabled:Z

    if-eqz v1, :cond_2

    .line 764
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f08010a

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 767
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/SquareModule;->mIsOpenGLEnabled:Z

    if-eqz v1, :cond_3

    .line 768
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed ignore - Effect Enabled"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :cond_3
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 773
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_shutter_control_boolean_key"

    .line 774
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 775
    .local v10, "enableShutterControl":Z
    if-nez v10, :cond_4

    .line 776
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "SettingsManager not enable ShutterControl"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :cond_4
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_5

    .line 781
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed ignore - mActivity is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_5
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v12

    .line 787
    .local v12, "storageSpaceBytes":J
    cmp-long v1, v12, v6

    if-gtz v1, :cond_6

    .line 788
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    goto/16 :goto_0

    .line 792
    :cond_6
    sub-long v8, v12, v6

    .line 793
    .local v8, "remainingStorageBytes":J
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    .line 797
    .local v5, "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v11

    .line 799
    .local v11, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    iget-object v2, p0, Lcom/android/camera/SquareModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/SquareModule$10;

    invoke-direct {v3, p0}, Lcom/android/camera/SquareModule$10;-><init>(Lcom/android/camera/SquareModule;)V

    sget-object v4, Lcom/android/camera/burst/BurstFacade$BurstIntent;->BURST:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    iget-object v6, p0, Lcom/android/camera/SquareModule;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 809
    invoke-interface {v6}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    .line 810
    invoke-interface {v11}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    .line 799
    invoke-interface/range {v1 .. v9}, Lcom/android/camera/burst/BurstFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 812
    .end local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v11    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start burst"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 820
    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/SquareModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 824
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 825
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 828
    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 829
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 830
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    if-nez v5, :cond_0

    .line 831
    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 832
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 835
    iget-object v5, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/camera/SquareModule;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 857
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SquareModuleUI;->setPictureTakingProgress(I)V

    .line 1734
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 1718
    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1719
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1309
    sget-object v0, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    .line 1311
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SquareModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1313
    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->stopBurst()V

    .line 1319
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->cancelCountDown()V

    .line 1321
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v0, :cond_2

    .line 1322
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1325
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1326
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/SquareModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1327
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1328
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseManager;->unregisterEffectChoose()V

    .line 1330
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->unRegisterSceneRecognition()V

    .line 1331
    invoke-virtual {p0}, Lcom/android/camera/SquareModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1332
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->closeCamera()V

    .line 1333
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->resetTextureBufferSize()V

    .line 1334
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayerLoaded:Z

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1336
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1337
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1338
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SquareModule;->mSoundPlayerLoaded:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1256
    sget-object v2, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resume : mShowErrorAndFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1257
    iget-boolean v2, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_0

    .line 1305
    :goto_0
    return-void

    .line 1260
    :cond_0
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v4, "SquareModule.resume"

    invoke-interface {v2, v4}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 1263
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1264
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/GoogleAssistantManager;->useFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1265
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v2, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 1266
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    iget-object v6, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080303

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->updateCameraCharacteristics()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    .line 1272
    iget-boolean v2, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_3

    .line 1273
    sget-object v2, Lcom/android/camera/SquareModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume : GOOGLE_ASSISTANT_FEATURE mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/SquareModule;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1268
    :cond_1
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v2, p0, Lcom/android/camera/SquareModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 1269
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    iget-object v6, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080302

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1271
    goto :goto_2

    .line 1279
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/SquareModule;->mPaused:Z

    .line 1281
    invoke-virtual {p0, v3}, Lcom/android/camera/SquareModule;->onReadyStateChanged(Z)V

    .line 1287
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 1289
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1290
    if-eqz v1, :cond_4

    .line 1291
    invoke-direct {p0}, Lcom/android/camera/SquareModule;->initSurfaceTextureConsumer()V

    .line 1292
    const-string v2, "initSurfaceTextureConsumer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1295
    :cond_4
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1296
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1299
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-virtual {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->registerSceneRecognition()V

    .line 1301
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_5

    .line 1302
    iget-object v2, p0, Lcom/android/camera/SquareModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1304
    :cond_5
    const-string v2, "resume end"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 941
    iput p1, p0, Lcom/android/camera/SquareModule;->mOrientation:I

    .line 942
    iget-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModule;->mUI:Lcom/android/camera/SquareModuleUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SquareModuleUI;->setOrientation(IZ)V

    .line 943
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

    .line 501
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    new-instance v2, Lcom/android/camera/SquareModule$6;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/SquareModule$6;-><init>(Lcom/android/camera/SquareModule;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    move-result v0

    .line 509
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 511
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 512
    iget-object v1, p0, Lcom/android/camera/SquareModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 514
    :cond_0
    return v0
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 1821
    iget-object v3, p0, Lcom/android/camera/SquareModule;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1822
    :try_start_0
    iget v1, p0, Lcom/android/camera/SquareModule;->mScreenWidth:I

    .line 1823
    .local v1, "width":I
    iget v0, p0, Lcom/android/camera/SquareModule;->mScreenHeight:I

    .line 1824
    .local v0, "height":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1825
    invoke-direct {p0, v1, v0}, Lcom/android/camera/SquareModule;->updatePreviewTransform(II)V

    .line 1826
    return-void

    .line 1824
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
