.class public Lcom/android/camera/CaptureModule;
.super Lcom/android/camera/CameraModule;
.source "CaptureModule.java"

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
.implements Lcom/android/camera/ui/EffectChooseRootVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CaptureModule$ModuleState;
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

.field private mEnableUltraWideMode:Z

.field private mFirstPreviewArrived:Z

.field private mFocusController:Lcom/android/camera/ui/focus/FocusController;

.field private mFrontCameraMirror:Z

.field private mHdrPlusEnabled:Z

.field private mHdrSceneEnabled:Z

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsBeautyEnabled:Z

.field private mIsEffectEnabled:Z

.field private mIsEffectPanelVisible:Z

.field private mIsNeedToInitUltraWideModeSetting:Z

.field private mIsOpenGLEnabled:Z

.field private mIsOpenMicroVideo:Z

.field private mIsSREnable:Z

.field private mIsSRSettingEnable:Z

.field private mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private final mMotionCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mOrientation:I

.field private mPaused:Z

.field private final mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

.field private mPictureSize:Lcom/android/camera/util/Size;

.field mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

.field private mPreviewBufferHeight:I

.field private mPreviewBufferWidth:I

.field private mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

.field private mPreviewRenderFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

.field private final mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

.field private mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private mReadyState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

.field private mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowErrorAndFinish:Z

.field private mShutterSoundEnabled:Z

.field private mSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mSoundPlayerLoaded:Z

.field private mState:Lcom/android/camera/CaptureModule$ModuleState;

.field private final mStickyGcamCamera:Z

.field private final mSurfaceTextureLock:Ljava/lang/Object;

.field private mSwitchCamera:Z

.field private mUI:Lcom/android/camera/CaptureModuleUI;

.field private final mUIListener:Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CaptureModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 152
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/CaptureModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    .line 158
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/CaptureModule;->CAPTURE_DEBUG_UI:Z

    .line 159
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->limitQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/camera/CaptureModule;->MAX_QUEUE_SIZE:I

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CaptureModule;-><init>(Lcom/android/camera/app/AppController;Z)V

    .line 625
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Z)V
    .locals 6
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "stickyHdr"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 629
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 160
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mDimensionLock:Ljava/lang/Object;

    .line 181
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 185
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mHdrSceneEnabled:Z

    .line 186
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mHdrPlusEnabled:Z

    .line 187
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceTextureLock:Ljava/lang/Object;

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 200
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mWatermarkEnabled:Z

    .line 201
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mBrandLogoEnabled:Z

    .line 202
    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mShutterSoundEnabled:Z

    .line 203
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    .line 204
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mIsOpenGLEnabled:Z

    .line 205
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    .line 206
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mFrontCameraMirror:Z

    .line 207
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mSwitchCamera:Z

    .line 208
    iput v4, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    .line 209
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 210
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewArrived:Z

    .line 211
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mReadyState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 212
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mIsSRSettingEnable:Z

    .line 213
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    .line 214
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mIsEffectPanelVisible:Z

    .line 215
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    .line 216
    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsNeedToInitUltraWideModeSetting:Z

    .line 219
    new-instance v1, Lcom/android/camera/CaptureModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$1;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 228
    new-instance v1, Lcom/android/camera/CaptureModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$2;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mUIListener:Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;

    .line 260
    new-instance v1, Lcom/android/camera/CaptureModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$3;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 272
    new-instance v1, Lcom/android/camera/CaptureModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$4;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 381
    new-instance v1, Lcom/android/camera/CaptureModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$5;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 574
    sget-object v1, Lcom/android/camera/CaptureModule$ModuleState;->IDLE:Lcom/android/camera/CaptureModule$ModuleState;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mState:Lcom/android/camera/CaptureModule$ModuleState;

    .line 576
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    .line 579
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/CaptureModule;->mAutoFocusScanStartFrame:J

    .line 589
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mSoundPlayerLoaded:Z

    .line 598
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    .line 617
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 619
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mAllocationLock:Ljava/lang/Object;

    .line 2956
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    .line 2959
    new-instance v1, Lcom/android/camera/CaptureModule$26;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$26;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mMotionCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 630
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new CaptureModule"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 631
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewArrived:Z

    .line 632
    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    .line 633
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 634
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 635
    iput-boolean p2, p0, Lcom/android/camera/CaptureModule;->mStickyGcamCamera:Z

    .line 636
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 637
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CaptureModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/CaptureModule;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CaptureModule;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CaptureModule;->updatePreviewTransform(IIZ)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/camera/CaptureModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->hideEffectAndShowBeautyOrZoomIfNeeded()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/CaptureModule;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->startActiveFocusAt(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/CaptureModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSurfaceTextureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/camera/CaptureModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->reopenCamera()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->stopBurst()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeCamera()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updatePreviewBufferSize()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModule$ModuleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:Lcom/android/camera/CaptureModule$ModuleState;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$ModuleState;)Lcom/android/camera/CaptureModule$ModuleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/CaptureModule$ModuleState;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mState:Lcom/android/camera/CaptureModule$ModuleState;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/CaptureModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/CaptureModule;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/camera/CaptureModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/media/MediaActionSound;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SoundPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/camera/CaptureModule;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/SoundPlayer;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayerLoaded:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mSoundPlayerLoaded:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/camera/CaptureModule;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mShutterSoundEnabled:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mFrontCameraMirror:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/burst/BurstFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/camera/CaptureModule;Lcom/android/camera/burst/BurstFacade;)Lcom/android/camera/burst/BurstFacade;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/burst/BurstFacade;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mBrandLogoEnabled:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mHdrPlusEnabled:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mHdrSceneEnabled:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mStickyGcamCamera:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->createAndStartUntrackedCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mReadyState:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->openCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->switchToRegularCapture()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/CaptureModule;I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->onSuperResolutionStateChange(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->onBeautyStateChanged(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateEffectBeautyZoomUI()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->determineIfNotDrawPreviewOverlay()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateCameraCharacteristics()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->setHDRBadgeVisible(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updatePreviewBufferDimension()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsOpenGLEnabled:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/camera/CaptureModule;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;)Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/android/camera/CaptureModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferWidth:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/camera/CaptureModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferHeight:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/CaptureModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->saveUWModeSetting(Z)V

    return-void
.end method

.method static synthetic access$6002(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera$FocusStateListener;)Lcom/android/camera/one/OneCamera$FocusStateListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$FocusStateListener;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mPreviewRenderFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/camera/CaptureModule;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/scenerecognition/SceneRecognitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;)Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setHDRBadgeVisible()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSwitchCamera:Z

    return v0
.end method

.method static synthetic access$6502(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mSwitchCamera:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsEffectPanelVisible:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/CaptureModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->switchCamera(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->setSRBadgeVisible(I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/camera/CaptureModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->onMotionStateChang(I)V

    return-void
.end method

.method static synthetic access$800()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method private cancelCountDown()V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModuleUI;->cancelCountDown()V

    .line 1244
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1245
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1246
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1248
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2849
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "CaptureModule.closeCamera()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 2851
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2855
    const-string v2, "mCameraOpenCloseLock.acquire()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2858
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v2, :cond_0

    .line 2859
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstFacade;->release()V

    .line 2860
    iput-object v4, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    .line 2862
    :cond_0
    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 2863
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 2866
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_2

    .line 2867
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2868
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2869
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2870
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V

    .line 2871
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V

    .line 2872
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2873
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2874
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 2875
    const-string v2, "mCamera.close()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2878
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2879
    invoke-virtual {p0, v5}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 2880
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/CaptureModule$25;

    invoke-direct {v3, p0}, Lcom/android/camera/CaptureModule$25;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2893
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2894
    return-void

    .line 2852
    :catch_0
    move-exception v0

    .line 2853
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2878
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2879
    invoke-virtual {p0, v5}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 2880
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/CaptureModule$25;

    invoke-direct {v4, p0}, Lcom/android/camera/CaptureModule$25;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v2
.end method

.method private createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;
    .locals 14
    .param p1, "orientation"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1085
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getSessionTime()J

    move-result-wide v2

    .line 1086
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 1087
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "title":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    if-eqz v0, :cond_6

    .line 1091
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    invoke-virtual {v0, p1}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->setOrientation(I)V

    .line 1092
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v6, :cond_5

    move v0, v12

    :goto_0
    invoke-virtual {v5, v0}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->setFront(Z)V

    .line 1093
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isAOPProject()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->setAOP(Z)V

    .line 1094
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1095
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/session/CaptureSessionManager;->createNewMicroVideoSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v11

    .line 1101
    .local v11, "session":Lcom/android/camera/session/CaptureSession;
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v5, "default_scope"

    const-string v6, "pref_camera_effect_mode_key"

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v8

    .line 1102
    .local v8, "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->STICKER:Lcom/android/camera/effect/EffectChooseState;

    if-eq v8, v0, :cond_0

    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->ANIMOJI:Lcom/android/camera/effect/EffectChooseState;

    if-ne v8, v0, :cond_7

    :cond_0
    move v10, v12

    .line 1117
    .local v10, "isPreviewOnly":Z
    :goto_2
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mBrandLogoEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v5, "WatermarkManager.getData"

    invoke-interface {v0, v5}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v9

    .line 1119
    .local v9, "guard":Lcom/android/camera/stats/profiler/Profile;
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create watermarkViewData with Picture Size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0, v10}, Lcom/android/camera/CaptureModule;->getBrandLogoViewData(Z)Lcom/android/camera/brandlogo/BrandLogoViewData;

    move-result-object v7

    .line 1121
    .local v7, "brandLogoViewData":Lcom/android/camera/brandlogo/BrandLogoViewData;
    const-string v0, "BrandLogoViewData get"

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1122
    if-eqz v7, :cond_8

    .line 1123
    iput p1, v7, Lcom/android/camera/brandlogo/BrandLogoViewData;->mOrientation:I

    .line 1124
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BrandLogoViewData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/camera/brandlogo/BrandLogoViewData;->dump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1125
    invoke-static {v7}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/android/camera/session/CaptureSession;->setBrandLogoViewData(Lcom/google/common/base/Optional;)V

    .line 1130
    .end local v7    # "brandLogoViewData":Lcom/android/camera/brandlogo/BrandLogoViewData;
    .end local v9    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_1
    :goto_3
    invoke-interface {v11, v10}, Lcom/android/camera/session/CaptureSession;->setPreviewOnly(Z)V

    .line 1133
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-eqz v0, :cond_2

    .line 1134
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {v0, v5, v12, v8}, Lcom/android/camera/stats/UsageStatistics;->faceEffectDoneEvent(Lcom/android/camera/app/AppController;ILcom/android/camera/effect/EffectChooseState;)V

    .line 1138
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->STICKER:Lcom/android/camera/effect/EffectChooseState;

    if-eq v8, v0, :cond_4

    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->ANIMOJI:Lcom/android/camera/effect/EffectChooseState;

    if-eq v8, v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFrontCameraMirror:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v5, :cond_4

    .line 1139
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFrontCameraMirror:Z

    invoke-interface {v11, v0}, Lcom/android/camera/session/CaptureSession;->setMirror(Z)V

    .line 1141
    :cond_4
    new-instance v0, Lcom/android/camera/stats/CaptureStats;

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mHdrPlusEnabled:Z

    invoke-direct {v0, v5}, Lcom/android/camera/stats/CaptureStats;-><init>(Z)V

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v11, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 1142
    return-object v11

    .end local v8    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    .end local v10    # "isPreviewOnly":Z
    .end local v11    # "session":Lcom/android/camera/session/CaptureSession;
    :cond_5
    move v0, v13

    .line 1092
    goto/16 :goto_0

    .line 1097
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1098
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v11

    .restart local v11    # "session":Lcom/android/camera/session/CaptureSession;
    goto/16 :goto_1

    .restart local v8    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    :cond_7
    move v10, v13

    .line 1102
    goto/16 :goto_2

    .line 1127
    .restart local v7    # "brandLogoViewData":Lcom/android/camera/brandlogo/BrandLogoViewData;
    .restart local v9    # "guard":Lcom/android/camera/stats/profiler/Profile;
    .restart local v10    # "isPreviewOnly":Z
    :cond_8
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "can\'t get BrandLogoViewData."

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private createAndStartUntrackedCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 7

    .prologue
    .line 1191
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getSessionTime()J

    move-result-wide v2

    .line 1192
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 1193
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstFolderName(J)Ljava/lang/String;

    move-result-object v1

    .line 1194
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1195
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewBurstSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 1196
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isSupportHWRotate()Z

    move-result v0

    invoke-interface {v6, v0}, Lcom/android/camera/session/CaptureSession;->setImageHWRotate(Z)V

    .line 1197
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 1198
    return-object v6
.end method

.method private decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V
    .locals 11
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    const/4 v5, 0x1

    .line 1016
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v10

    .line 1017
    .local v10, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->getCurrentResolution(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v2

    .line 1018
    .local v2, "pictureResolutionData":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/camera/settings/Keys;->isMotionOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v8

    .line 1019
    .local v8, "isMotionOn":Z
    invoke-static {v10}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v7

    .line 1021
    .local v7, "isBeautyOn":Z
    const/4 v9, 0x0

    .line 1022
    .local v9, "mode":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 1023
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1037
    :goto_0
    invoke-interface {p1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    .line 1038
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mWatermarkEnabled:Z

    const-wide/16 v4, 0x1

    .line 1037
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeCaptureRequest(ILjava/lang/String;ZJ)V

    .line 1044
    return-void

    .line 1025
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1027
    const-string v0, "default_scope"

    const-string v1, "pref_beauty_level_key"

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f08035f

    .line 1028
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1027
    invoke-virtual {v10, v0, v1, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v6

    .line 1029
    .local v6, "beautyLevel":I
    invoke-interface {p1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeBeautyCaptureRequest(IIZ)V

    goto :goto_0
.end method

.method private determineIfNotDrawPreviewOverlay()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsEffectPanelVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->forceHidePreviewOverlay(Z)V

    .line 1006
    return-void

    .line 1005
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBeautyButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 2106
    new-instance v0, Lcom/android/camera/CaptureModule$21;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$21;-><init>(Lcom/android/camera/CaptureModule;)V

    return-object v0
.end method

.method private getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 2033
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 2034
    new-instance v0, Lcom/android/camera/CaptureModule$18;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$18;-><init>(Lcom/android/camera/CaptureModule;)V

    .line 2062
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/CaptureModule$19;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$19;-><init>(Lcom/android/camera/CaptureModule;)V

    goto :goto_0
.end method

.method private getEffectChooseCallback()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 2120
    new-instance v0, Lcom/android/camera/CaptureModule$22;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$22;-><init>(Lcom/android/camera/CaptureModule;)V

    return-object v0
.end method

.method private getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 1980
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1981
    new-instance v0, Lcom/android/camera/CaptureModule$16;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$16;-><init>(Lcom/android/camera/CaptureModule;)V

    .line 2003
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/CaptureModule$17;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$17;-><init>(Lcom/android/camera/CaptureModule;)V

    goto :goto_0
.end method

.method private getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    return-object v0

    .line 1349
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
    .line 1203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSuperResolutionButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 2093
    new-instance v0, Lcom/android/camera/CaptureModule$20;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$20;-><init>(Lcom/android/camera/CaptureModule;)V

    return-object v0
.end method

.method private hideEffectAndShowBeautyOrZoomIfNeeded()V
    .locals 2

    .prologue
    .line 2149
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectChooseManager;->hide()V

    .line 2150
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v0

    .line 2151
    .local v0, "isBeautyOn":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/CaptureModule;->updateBeautyAndZoomUI(ZZ)V

    .line 2152
    return-void

    .line 2151
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initSurfaceTextureConsumer()V
    .locals 4

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1319
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1321
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1322
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    .line 1320
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1324
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->reopenCamera()V

    .line 1326
    return-void

    .line 1324
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

    .line 2275
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 2284
    :cond_0
    :goto_0
    return v1

    .line 2280
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 2281
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2284
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

    .line 2282
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

.method private isSupportHWRotate()Z
    .locals 4

    .prologue
    .line 3003
    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mIsOpenGLEnabled:Z

    if-eqz v3, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 3006
    .local v0, "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    :goto_0
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isSupportHWRotate()Z

    move-result v1

    .line 3007
    .local v1, "isHWRotate":Z
    invoke-static {v0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->useJpegPicture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    .line 3009
    .local v2, "isJpeg":Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 3003
    .end local v0    # "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .end local v1    # "isHWRotate":Z
    .end local v2    # "isJpeg":Z
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-eqz v3, :cond_1

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    goto :goto_0

    .line 3009
    .restart local v0    # "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .restart local v1    # "isHWRotate":Z
    .restart local v2    # "isJpeg":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V
    .locals 12
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "frameNumber"    # J

    .prologue
    .line 1810
    const/4 v3, 0x0

    .line 1811
    .local v3, "passive":Z
    sget-object v7, Lcom/android/camera/CaptureModule$27;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1836
    :cond_0
    :goto_0
    return-void

    .line 1814
    :pswitch_0
    iget-wide v8, p0, Lcom/android/camera/CaptureModule;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 1815
    iput-wide p2, p0, Lcom/android/camera/CaptureModule;->mAutoFocusScanStartFrame:J

    .line 1816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/CaptureModule;->mAutoFocusScanStartTime:J

    goto :goto_0

    .line 1821
    :pswitch_1
    const/4 v3, 0x1

    .line 1824
    :pswitch_2
    iget-wide v8, p0, Lcom/android/camera/CaptureModule;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1825
    iget-wide v8, p0, Lcom/android/camera/CaptureModule;->mAutoFocusScanStartFrame:J

    sub-long v4, p2, v8

    .line 1826
    .local v4, "frames":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/CaptureModule;->mAutoFocusScanStartTime:J

    sub-long v0, v8, v10

    .line 1827
    .local v0, "dt":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    long-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1828
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

    .line 1829
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1828
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1830
    .local v6, "report":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1831
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

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

    invoke-virtual {v7, v8}, Lcom/android/camera/CaptureModuleUI;->showDebugMessage(Ljava/lang/String;)V

    .line 1832
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/camera/CaptureModule;->mAutoFocusScanStartFrame:J

    goto :goto_0

    .line 1828
    .end local v6    # "report":Ljava/lang/String;
    :cond_1
    const-string v7, "AF"

    goto :goto_1

    .line 1811
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
    .line 2139
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_beauty"

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->getValueOfCurrentIndex(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2141
    .local v0, "beautyState":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080313

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2142
    .local v1, "isShow":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/camera/CaptureModule;->updateBeautyAndZoomUI(ZZ)V

    .line 2143
    return-void

    .line 2142
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onMotionStateChang(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const v4, 0x7f080313

    .line 2972
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_motion"

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/camera/settings/SettingsManager;->getValueOfCurrentIndex(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2974
    .local v0, "motionState":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2975
    invoke-virtual {v1, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2976
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 2977
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->reopenCamera()V

    .line 2979
    :cond_2
    return-void
.end method

.method private onPreviewStarted()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2178
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:Lcom/android/camera/CaptureModule$ModuleState;

    sget-object v2, Lcom/android/camera/CaptureModule$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/CaptureModule$ModuleState;

    if-ne v1, v2, :cond_0

    .line 2179
    sget-object v1, Lcom/android/camera/CaptureModule$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/CaptureModule$ModuleState;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mState:Lcom/android/camera/CaptureModule$ModuleState;

    .line 2181
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 2182
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2183
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 2184
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2185
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2186
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getDisplayOrientation(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/CaptureModuleUI;->onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 2187
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 2188
    return-void

    .line 2186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSuperResolutionStateChange(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2982
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_sr_control_boolean_key"

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/camera/settings/SettingsManager;->getValueOfCurrentIndex(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2986
    .local v0, "superResolutionState":Ljava/lang/String;
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SuperResolutionState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2987
    return-void
.end method

.method private openCameraAndStartPreview()V
    .locals 26

    .prologue
    .line 2320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v6, "CaptureModule.openCameraAndStartPreview()"

    invoke-interface {v4, v6}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v23

    .line 2323
    .local v23, "guard":Lcom/android/camera/stats/profiler/Profile;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsNeedToInitUltraWideModeSetting:Z

    if-eqz v4, :cond_0

    .line 2324
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsNeedToInitUltraWideModeSetting:Z

    .line 2325
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isSupportWideAndUltraWideMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2326
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/camera/CaptureModule;->saveUWModeSetting(Z)V

    .line 2337
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v6, 0x9c4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2339
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Time out waiting to acquire camera-open lock."

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2341
    :catch_0
    move-exception v20

    .line 2342
    .local v20, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Interrupted while waiting to acquire camera-open lock."

    move-object/from16 v0, v20

    invoke-direct {v4, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2345
    .end local v20    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v4, "Acquired mCameraOpenCloseLock"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v4, :cond_2

    .line 2349
    sget-object v4, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Camera already open, not re-opening."

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2351
    const-string v4, "Camera is already open"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2825
    :goto_0
    return-void

    .line 2357
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v6, :cond_a

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v4

    sget-object v6, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v4, v6, :cond_a

    .line 2358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v6, "default_scope"

    const-string v7, "pref_dual_cam_controller_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2359
    .local v19, "dualCamControlValue":Ljava/lang/String;
    sget-object v4, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

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

    if-eqz v4, :cond_7

    .line 2362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v6}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 2363
    .local v17, "cameraId":Lcom/android/camera/device/CameraId;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v25

    .line 2382
    .end local v19    # "dualCamControlValue":Ljava/lang/String;
    .local v25, "slaveCameraId":Lcom/android/camera/device/CameraId;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isSRSettingOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsSRSettingEnable:Z

    .line 2383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isSROn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v6, :cond_c

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    .line 2384
    sget-object v4, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsSREnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 2387
    .local v24, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-eqz v4, :cond_3

    .line 2388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v6, "default_scope"

    const-string v7, "pref_motion"

    const v8, 0x7f08040c

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    const v8, 0x7f080383

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v6, "default_scope"

    const-string v7, "pref_camera_sticker_key"

    const v8, 0x7f0803d1

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v6, "default_scope"

    const-string v7, "pref_beauty"

    const v8, 0x7f080360

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    .line 2395
    sget-object v4, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsBeautyEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v21

    .line 2397
    .local v21, "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    sget-object v4, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_d

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    .line 2398
    sget-object v4, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsEffectEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v6, Lcom/android/camera/CaptureModule$23;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/CaptureModule$23;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v4, v6}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2407
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useVendorBeautyForPreview()Z

    move-result v4

    if-nez v4, :cond_e

    :cond_4
    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsOpenGLEnabled:Z

    .line 2408
    sget-object v4, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsOpenGLEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/camera/CaptureModule;->mIsOpenGLEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2411
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-nez v4, :cond_f

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqMicroVideo()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f080313

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v6

    const-string v7, "default_scope"

    const-string v8, "pref_motion"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    .line 2412
    sget-object v4, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsOpenMicroVideo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2415
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2420
    .local v15, "settingScope":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    if-eqz v4, :cond_10

    .line 2421
    :cond_5
    sget-object v4, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Set resolution for SR or UW"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Lcom/android/camera/settings/ResolutionSetting;->getTheMaximumResolutionPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    .line 2430
    :goto_6
    const/4 v5, 0x0

    .line 2431
    .local v5, "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useVendorBeautyForPreview()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqEffect()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2432
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-eqz v4, :cond_11

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 2439
    :goto_7
    sget-object v4, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-eqz v12, :cond_16

    .line 2442
    invoke-static {}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->getMicroVideoPreviewFps()Landroid/util/Range;

    move-result-object v12

    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2443
    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    move/from16 v16, v0

    .line 2440
    invoke-static/range {v4 .. v16}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 2450
    .local v18, "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    const-string v4, "OneCameraCaptureSetting.get"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2452
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v4, :cond_17

    .line 2453
    sget-object v4, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Abort Camera Opened due to Module Paused"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2455
    const-string v4, "Abort Camera Opened due to Module Paused"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2363
    .end local v5    # "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .end local v15    # "settingScope":Ljava/lang/String;
    .end local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    .end local v21    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    .end local v24    # "res":Landroid/content/res/Resources;
    .end local v25    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    .restart local v19    # "dualCamControlValue":Ljava/lang/String;
    :cond_6
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 2364
    .end local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

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

    if-eqz v4, :cond_9

    .line 2365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 2366
    .restart local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    :goto_9
    const/16 v25, 0x0

    .restart local v25    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_1

    .line 2365
    .end local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v25    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v6}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    goto :goto_9

    .line 2368
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v6}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 2369
    .restart local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    const/16 v25, 0x0

    .restart local v25    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_1

    .line 2372
    .end local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v19    # "dualCamControlValue":Ljava/lang/String;
    .end local v25    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v6, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    if-eqz v4, :cond_b

    .line 2373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraManager;->getUltraWideCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 2378
    .restart local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    :goto_a
    const/16 v25, 0x0

    .restart local v25    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_1

    .line 2376
    .end local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v25    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v6}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .restart local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    goto :goto_a

    .line 2383
    .restart local v25    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2397
    .restart local v21    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    .restart local v24    # "res":Landroid/content/res/Resources;
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2407
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2411
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 2425
    .restart local v15    # "settingScope":Ljava/lang/String;
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;
    :try_end_2
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 2445
    :catch_1
    move-exception v22

    .line 2446
    .local v22, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 2447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 2432
    .end local v22    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v5    # "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-eqz v4, :cond_12

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    goto/16 :goto_7

    :cond_12
    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    goto/16 :goto_7

    .line 2435
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsOpenGLEnabled:Z

    if-eqz v4, :cond_14

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    :goto_b
    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-eqz v4, :cond_15

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    goto :goto_b

    :cond_15
    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    goto :goto_b

    .line 2442
    :cond_16
    sget-object v12, Lcom/android/camera/one/OneCameraCaptureSetting;->DEFAULT_PREVIEW_FPS:Landroid/util/Range;
    :try_end_3
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_8

    .line 2459
    .restart local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    new-instance v6, Lcom/android/camera/CaptureModule$24;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/camera/CaptureModule$24;-><init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/device/CameraId;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v4, v0, v1, v6}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0
.end method

.method private reopenCamera()V
    .locals 2

    .prologue
    .line 1329
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1344
    :goto_0
    return-void

    .line 1333
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->stopBurst()V

    .line 1335
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/CaptureModule$12;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$12;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requiresNexus4SpecificFixFor16By9Previews()Z
    .locals 1

    .prologue
    .line 2205
    sget-boolean v0, Lcom/android/camera/CaptureModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    .line 2206
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->is16by9AspectRatio(Lcom/android/camera/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2205
    :goto_0
    return v0

    .line 2206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTextureBufferSize()V
    .locals 0

    .prologue
    .line 2942
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updatePreviewBufferSize()V

    .line 2943
    return-void
.end method

.method private saveUWModeSetting(Z)V
    .locals 3
    .param p1, "uwModeEnabled"    # Z

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_ultra_wide_control_boolean_key"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2314
    return-void
.end method

.method private setHDRBadgeVisible()V
    .locals 2

    .prologue
    .line 2828
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2836
    :goto_0
    return-void

    .line 2831
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    if-ne v0, v1, :cond_1

    .line 2832
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setHDRBadgeVisible(I)V

    goto :goto_0

    .line 2834
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 2838
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    if-ne v0, v1, :cond_0

    .line 2839
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setHDRBadgeVisible(I)V

    .line 2843
    :goto_0
    return-void

    .line 2841
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setHDRBadgeVisible(I)V

    goto :goto_0
.end method

.method private setSRBadgeVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setSRBadgeVisible(I)V

    .line 2847
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

    .line 1699
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v3, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1705
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v3, :cond_2

    .line 1706
    sget-object v3, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "CaptureModule mFocusController is null!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1710
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1711
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1712
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 1719
    :goto_1
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 1720
    .local v0, "points":[F
    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v5

    .line 1721
    int-to-float v3, p2

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v8

    .line 1724
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1725
    .local v1, "rotationMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1726
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    .line 1728
    :cond_3
    iget v3, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1729
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1732
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    .line 1733
    aget v3, v0, v5

    sub-float v3, v7, v3

    aput v3, v0, v5

    .line 1736
    :cond_4
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    aget v4, v0, v5

    aget v5, v0, v8

    invoke-interface {v3, v4, v5}, Lcom/android/camera/one/OneCamera;->triggerFocusAndMeterAtPoint(FF)V

    .line 1739
    iget v3, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_0

    .line 1740
    new-instance v2, Lcom/android/camera/ui/TouchCoordinate;

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    .line 1743
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    .line 1744
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/ui/TouchCoordinate;-><init>(FFFF)V

    .line 1746
    .local v2, "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 1714
    .end local v0    # "points":[F
    .end local v1    # "rotationMatrix":Landroid/graphics/Matrix;
    .end local v2    # "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    :cond_5
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1715
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V

    goto/16 :goto_1
.end method

.method private startPassiveFocus()V
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 1762
    :goto_0
    return-void

    .line 1761
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0
.end method

.method private stopBurst()V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->stopBurst()Z

    .line 912
    :cond_0
    return-void
.end method

.method private switchCamera(Z)V
    .locals 4
    .param p1, "needAnimation"    # Z

    .prologue
    .line 2900
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchCamera : mShowErrorAndFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2901
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    if-eqz v1, :cond_1

    .line 2922
    :cond_0
    :goto_0
    return-void

    .line 2904
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v1, :cond_0

    .line 2907
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "switchCamera"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2909
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->needEffectForCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    .line 2910
    .local v0, "needEffectAfterSwitch":Z
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2911
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 2912
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2913
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->presetEffectForCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)V

    .line 2914
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "preset effect setting done"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2916
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mSwitchCamera:Z

    .line 2917
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->cancelCountDown()V

    .line 2918
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModuleUI;->clearFaces()V

    .line 2919
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initSurfaceTextureConsumer()V

    .line 2920
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, p1}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    .line 2921
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->onCameraFacingChange(Lcom/android/camera/one/OneCamera$Facing;)V

    goto :goto_0

    .line 2911
    :cond_3
    if-eqz v0, :cond_2

    goto :goto_1
.end method

.method private switchToRegularCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 2160
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2161
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2165
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 2166
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 2167
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 2168
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 2170
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 2171
    return-void
.end method

.method private takePictureNow()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 1047
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 1048
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Not taking picture since Camera is closed."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1078
    :goto_0
    return-void

    .line 1052
    :cond_0
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->TOAST_CAP_MODE:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsOpenGLEnabled:Z

    if-nez v1, :cond_1

    .line 1053
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1056
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    .line 1057
    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 1058
    .local v2, "orientation":I
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;

    move-result-object v12

    .line 1060
    .local v12, "session":Lcom/android/camera/session/CaptureSession;
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isSupportHWRotate()Z

    move-result v1

    invoke-interface {v12, v1}, Lcom/android/camera/session/CaptureSession;->setImageHWRotate(Z)V

    .line 1061
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-eqz v1, :cond_2

    .line 1062
    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->BEAUTY:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Lcom/android/camera/session/CaptureSession;->setSceneMode(Ljava/lang/String;)V

    .line 1069
    :goto_1
    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/DebugYuvDumpUtil;->setSessionTitle(Ljava/lang/String;)V

    .line 1070
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/DebugYuvDumpUtil;->setCameraId(Ljava/lang/String;)V

    .line 1073
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 1074
    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1075
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v6}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v8

    :goto_2
    iget v9, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-nez v6, :cond_5

    const/4 v11, 0x1

    :goto_3
    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFFZ)V

    .line 1076
    .local v0, "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    invoke-direct {p0, v12}, Lcom/android/camera/CaptureModule;->decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V

    .line 1077
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1, v0, v12}, Lcom/android/camera/one/OneCamera;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto/16 :goto_0

    .line 1063
    .end local v0    # "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-eqz v1, :cond_3

    .line 1064
    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->SR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Lcom/android/camera/session/CaptureSession;->setSceneMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1066
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Lcom/android/camera/session/CaptureSession;->setSceneMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v8, v5

    .line 1075
    goto :goto_2

    :cond_5
    move v11, v5

    goto :goto_3
.end method

.method private updateBeautyAndZoomUI(ZZ)V
    .locals 2
    .param p1, "isBeautyShow"    # Z
    .param p2, "isZoomShow"    # Z

    .prologue
    .line 2145
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/CaptureModuleUI;->setBeautyVisibility(I)V

    .line 2147
    return-void

    .line 2145
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateCameraCharacteristics()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 722
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v3

    sget-object v4, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v3, v4, :cond_4

    .line 723
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_dual_cam_controller_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "dualCamControlValue":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 725
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 726
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 739
    .end local v1    # "dualCamControlValue":Ljava/lang/String;
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 740
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 741
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 747
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_0
    :goto_1
    return v2

    .line 727
    .restart local v1    # "dualCamControlValue":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 728
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :goto_2
    goto :goto_0

    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    goto :goto_2

    .line 730
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    goto :goto_0

    .line 733
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v1    # "dualCamControlValue":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    if-eqz v3, :cond_5

    .line 734
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraManager;->getUltraWideCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    goto :goto_0

    .line 736
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_5
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_0

    .line 743
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :catch_0
    move-exception v3

    .line 746
    :cond_6
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 2129
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    if-nez v4, :cond_0

    .line 2137
    :goto_0
    return-void

    .line 2130
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseManager;->isShow()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 2131
    .local v0, "hide":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 2132
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    .line 2133
    .local v1, "isBeautyOn":Z
    if-nez v1, :cond_2

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/android/camera/CaptureModule;->updateBeautyAndZoomUI(ZZ)V

    goto :goto_0

    .end local v0    # "hide":Z
    .end local v1    # "isBeautyOn":Z
    :cond_1
    move v0, v3

    .line 2130
    goto :goto_1

    .restart local v0    # "hide":Z
    .restart local v1    # "isBeautyOn":Z
    :cond_2
    move v2, v3

    .line 2133
    goto :goto_2

    .line 2135
    .end local v1    # "isBeautyOn":Z
    :cond_3
    invoke-direct {p0, v3, v3}, Lcom/android/camera/CaptureModule;->updateBeautyAndZoomUI(ZZ)V

    goto :goto_0
.end method

.method private updatePreviewBufferDimension()V
    .locals 4

    .prologue
    .line 2293
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 2310
    :goto_0
    return-void

    .line 2297
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/OneCamera;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 2298
    .local v0, "previewBufferSize":Lcom/android/camera/util/Size;
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferWidth:I

    .line 2299
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferHeight:I

    .line 2302
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2306
    const/16 v1, 0x500

    iput v1, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferWidth:I

    .line 2307
    const/16 v1, 0x3c0

    iput v1, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferHeight:I

    .line 2309
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updatePreviewBufferSize()V

    goto :goto_0
.end method

.method private updatePreviewBufferSize()V
    .locals 4

    .prologue
    .line 1353
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1354
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferWidth:I

    iget v3, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/app/CameraAppUI;->setSurfaceTextureDefaultBufferSize(II)V

    .line 1360
    :cond_0
    monitor-exit v1

    .line 1361
    return-void

    .line 1360
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
    .line 2195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/CaptureModule;->updatePreviewTransform(IIZ)V

    .line 2196
    return-void
.end method

.method private updatePreviewTransform(IIZ)V
    .locals 8
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 2215
    sget-object v2, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2217
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2218
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 2220
    .local v0, "incomingRotation":I
    iget v2, p0, Lcom/android/camera/CaptureModule;->mScreenHeight:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/camera/CaptureModule;->mScreenWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 2222
    monitor-exit v3

    .line 2264
    :goto_0
    return-void

    .line 2225
    :cond_0
    iput v0, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    .line 2226
    iput p1, p0, Lcom/android/camera/CaptureModule;->mScreenWidth:I

    .line 2227
    iput p2, p0, Lcom/android/camera/CaptureModule;->mScreenHeight:I

    .line 2228
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updatePreviewBufferDimension()V

    .line 2241
    sget-boolean v2, Lcom/android/camera/CaptureModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 2243
    iget v2, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferHeight:I

    if-eqz v2, :cond_1

    .line 2244
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2247
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    const v4, 0x3fe38e39

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 2263
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

    .line 2249
    .restart local v0    # "incomingRotation":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    iget v4, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    goto :goto_1

    .line 2254
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v2, :cond_4

    .line 2255
    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2256
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 2258
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v4, Lcom/android/camera/util/Size;

    iget v5, p0, Lcom/android/camera/CaptureModule;->mScreenWidth:I

    iget v6, p0, Lcom/android/camera/CaptureModule;->mScreenHeight:I

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v5, Lcom/android/camera/util/Size;

    iget v6, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferWidth:I

    iget v7, p0, Lcom/android/camera/CaptureModule;->mPreviewBufferHeight:I

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 2261
    .local v1, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 1461
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1463
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isSupportWideAndUltraWideMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    if-eqz v0, :cond_0

    .line 1465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    .line 1466
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->saveUWModeSetting(Z)V

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v0, :cond_1

    .line 1471
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 1472
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 1473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_2

    .line 1476
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 1477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1479
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 1483
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1485
    return-void

    .line 1483
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

    .line 1575
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 1576
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v3

    .line 1577
    .local v3, "powerMgr":Lcom/android/camera/PowerStateManager;
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 1578
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1579
    if-nez v3, :cond_0

    move v2, v4

    .line 1580
    .local v2, "isLowPower":Z
    :goto_0
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v6

    .line 1581
    .local v1, "isHdrOn":Z
    :goto_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-nez v5, :cond_2

    move v5, v6

    :goto_2
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 1582
    sget-object v5, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1583
    sget-object v5, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1584
    sget-object v5, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1586
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 1587
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getHdrButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hdrCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1588
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 1589
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 1590
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 1591
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1592
    invoke-interface {v5}, Lcom/android/camera/one/OneCameraCharacteristics;->isExposureCompensationSupported()Z

    move-result v5

    :goto_3
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 1593
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 1595
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 1596
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 1597
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-nez v5, :cond_4

    move v5, v6

    :goto_4
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 1598
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqPIP()Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v6

    :goto_5
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCameraScreen:Z

    .line 1600
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 1601
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 1603
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v5

    sget-object v7, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v5, v7, :cond_6

    move v5, v6

    :goto_6
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 1604
    iget-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v5, v7, :cond_7

    move v5, v6

    :goto_7
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 1605
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 1607
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-nez v5, :cond_8

    move v5, v6

    :goto_8
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableEffect:Z

    .line 1608
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getEffectChooseCallback()Landroid/view/View$OnClickListener;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->effectCallback:Landroid/view/View$OnClickListener;

    .line 1610
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showBeauty:Z

    .line 1611
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-nez v5, :cond_9

    move v5, v6

    :goto_9
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableBeauty:Z

    .line 1612
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getBeautyButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->beautyCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1615
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSuperResolution:Z

    .line 1616
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqSuperResolution()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsSRSettingEnable:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v5, v7, :cond_a

    move v5, v6

    :goto_a
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSuperResolution:Z

    .line 1618
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getSuperResolutionButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->superResolutionCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1621
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->isGoogleLensAvailable()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-nez v5, :cond_b

    move v5, v6

    :goto_b
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showLens:Z

    .line 1622
    iget-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showLens:Z

    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLens:Z

    .line 1627
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showMotion:Z

    .line 1628
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-nez v5, :cond_c

    :goto_c
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableMotion:Z

    .line 1630
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mMotionCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->motionCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1634
    iget-boolean v4, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    .line 1635
    return-object v0

    .line 1579
    .end local v1    # "isHdrOn":Z
    .end local v2    # "isLowPower":Z
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v2

    goto/16 :goto_0

    .restart local v2    # "isLowPower":Z
    :cond_1
    move v1, v4

    .line 1580
    goto/16 :goto_1

    .restart local v1    # "isHdrOn":Z
    :cond_2
    move v5, v4

    .line 1581
    goto/16 :goto_2

    :cond_3
    move v5, v4

    .line 1592
    goto/16 :goto_3

    :cond_4
    move v5, v4

    .line 1597
    goto/16 :goto_4

    :cond_5
    move v5, v4

    .line 1598
    goto/16 :goto_5

    :cond_6
    move v5, v4

    .line 1603
    goto/16 :goto_6

    :cond_7
    move v5, v4

    .line 1604
    goto/16 :goto_7

    :cond_8
    move v5, v4

    .line 1607
    goto/16 :goto_8

    :cond_9
    move v5, v4

    .line 1611
    goto :goto_9

    :cond_a
    move v5, v4

    .line 1616
    goto :goto_a

    :cond_b
    move v5, v4

    .line 1621
    goto :goto_b

    :cond_c
    move v6, v4

    .line 1628
    goto :goto_c
.end method

.method public getBrandLogoViewData(Z)Lcom/android/camera/brandlogo/BrandLogoViewData;
    .locals 13
    .param p1, "previewOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1145
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1146
    .local v12, "scale":F
    if-eqz p1, :cond_3

    .line 1147
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1151
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->getBrandLogo(Z)I

    move-result v2

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1152
    .local v0, "oribitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 1153
    .local v11, "left":I
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 1156
    .local v7, "bottom":I
    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_5

    .line 1157
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    int-to-float v8, v2

    .line 1158
    .local v8, "childCenterX":F
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v9, v2, v3

    .line 1165
    .local v9, "childCenterY":F
    :goto_2
    new-instance v10, Lcom/android/camera/brandlogo/BrandLogoViewData;

    invoke-direct {v10}, Lcom/android/camera/brandlogo/BrandLogoViewData;-><init>()V

    .line 1166
    .local v10, "data":Lcom/android/camera/brandlogo/BrandLogoViewData;
    mul-float v2, v8, v12

    iput v2, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterX:F

    .line 1167
    mul-float v2, v9, v12

    iput v2, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterY:F

    .line 1169
    if-eqz v0, :cond_0

    .line 1170
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1171
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1172
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    .line 1174
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1175
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1176
    const/4 v0, 0x0

    .line 1179
    :cond_1
    int-to-float v1, v11

    mul-float/2addr v1, v12

    float-to-int v1, v1

    iput v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->offset:I

    .line 1180
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1181
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/camera/util/FileUtil;->bitmapToNV21A(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mNV21A:[B

    .line 1182
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    iput v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoWidth:I

    .line 1183
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    iput v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoHeight:I

    .line 1186
    :cond_2
    return-object v10

    .line 1149
    .end local v0    # "oribitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bottom":I
    .end local v8    # "childCenterX":F
    .end local v9    # "childCenterY":F
    .end local v10    # "data":Lcom/android/camera/brandlogo/BrandLogoViewData;
    .end local v11    # "left":I
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v12, v2, v3

    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 1151
    goto/16 :goto_1

    .line 1160
    .restart local v0    # "oribitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bottom":I
    .restart local v11    # "left":I
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    int-to-float v8, v2

    .line 1161
    .restart local v8    # "childCenterX":F
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 526
    sget-object v0, Lcom/android/camera/CaptureModule$27;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 534
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 528
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 530
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 532
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 526
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
    .line 1510
    new-instance v0, Lcom/android/camera/CaptureModule$13;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$13;-><init>(Lcom/android/camera/CaptureModule;)V

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1859
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1858
    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

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
    .line 1499
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1502
    const-string v0, "default_scope"

    const-string v1, "pref_camera_hdr_plus_key"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1503
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1504
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1503
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    :cond_0
    return-void
.end method

.method public hideScreenFlash()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/CaptureModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$7;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 9
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v1, "CaptureModule.init"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v7

    .line 753
    .local v7, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 755
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSceneRecognitionManager()Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .line 756
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init UseAutotransformUiLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/camera/CaptureModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 759
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 758
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 761
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->useFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 767
    :cond_0
    const-string v0, "get Camera Facing"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 768
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateCameraCharacteristics()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    .line 769
    const-string v0, "update Camera Characteristics"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 770
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_2

    .line 771
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 772
    const-string v0, "Error"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 803
    :goto_1
    return-void

    .line 768
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    .line 776
    .local v8, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v0, "default_scope"

    const-string v1, "pref_beauty_level_key"

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f08035f

    .line 777
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 776
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v4

    .line 778
    .local v4, "level":I
    invoke-static {v8}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    .line 780
    .local v5, "isBeautyOn":Z
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 781
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseManager;->getIsLastModuelShowEffectPanel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 782
    const/4 v5, 0x0

    .line 784
    :cond_3
    new-instance v0, Lcom/android/camera/CaptureModuleUI;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUIListener:Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/CaptureModuleUI;-><init>(Lcom/android/camera/CameraActivity;Landroid/view/View;Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;IZ)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    .line 785
    const-string v0, "CaptureModuleUI.init"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 787
    const-string v0, "PreviewStatusListener.init"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 791
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    const-string v0, "PreviewSurfaceTexture.init"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 794
    const v0, 0x7f0f00ba

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 795
    .local v6, "cancelButton":Landroid/view/View;
    new-instance v0, Lcom/android/camera/CaptureModule$9;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$9;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    invoke-interface {v7}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto :goto_1

    .line 791
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
    .line 1640
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 2947
    const/4 v0, 0x1

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1495
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1209
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1210
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1211
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1215
    :goto_0
    return-void

    .line 1214
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->takePictureNow()V

    goto :goto_0
.end method

.method public onEffectChooseRootVisibilityChanged(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 715
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsEffectPanelVisible:Z

    .line 716
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->determineIfNotDrawPreviewOverlay()V

    .line 717
    return-void

    .line 715
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFirstPreviewArrived()V
    .locals 5

    .prologue
    .line 641
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 642
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/CaptureModule$8;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$8;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 695
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModuleUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 698
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 699
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 700
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 702
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModuleUI;->loadModuleLayout()V

    .line 710
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/effect/EffectChooseManager;->registerEffectChoose(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/ui/EffectChooseRootVisibilityListener;)V

    .line 711
    :cond_2
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 3
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    .line 1769
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1806
    :cond_0
    :goto_0
    return-void

    .line 1770
    :cond_1
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1772
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRenderFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    if-eqz v0, :cond_2

    .line 1773
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRenderFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/one/OneCamera$FocusStateListener;->onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V

    .line 1776
    :cond_2
    sget-object v0, Lcom/android/camera/CaptureModule$27;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1803
    :goto_1
    sget-boolean v0, Lcom/android/camera/CaptureModule;->CAPTURE_DEBUG_UI:Z

    if-eqz v0, :cond_0

    .line 1804
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/CaptureModule;->measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V

    goto :goto_0

    .line 1778
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1779
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->startPassiveFocus()V

    goto :goto_1

    .line 1782
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1785
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1789
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1793
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1796
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1776
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

    .line 1656
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1673
    :cond_0
    :goto_0
    return v0

    .line 1657
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1673
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1660
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModuleUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1661
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->cancelCountDown()V

    goto :goto_0

    .line 1662
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1664
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1665
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1666
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1671
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/camera/CaptureModule;->handleKeyDownEventForVolumeKey(Landroid/view/KeyEvent;Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;)Z

    move-result v0

    goto :goto_0

    .line 1657
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
    .line 1645
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModuleUI;->isCountingDown()Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    new-instance v7, Lcom/android/camera/CaptureModule$14;

    invoke-direct {v7, p0}, Lcom/android/camera/CaptureModule$14;-><init>(Lcom/android/camera/CaptureModule;)V

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/CaptureModule;->handleKeyLongPressForBurstShot(IZLcom/android/camera/one/OneCamera;Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Lcom/android/camera/burst/BurstFacade;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1678
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 1691
    :goto_0
    return v0

    .line 1679
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1691
    const/4 v0, 0x0

    goto :goto_0

    .line 1682
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1683
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1684
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1685
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onShutterButtonClick()V

    .line 1688
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->stopBurst()V

    goto :goto_0

    .line 1679
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
    .line 1489
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1490
    return-void
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1875
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1870
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 2

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1885
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1888
    const/4 v1, 0x0

    .line 1890
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    :goto_0
    new-instance v2, Lcom/android/camera/CaptureModule$15;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/CaptureModule$15;-><init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/session/CaptureSession;)V

    .line 1953
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 1954
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1958
    :goto_1
    return-void

    .line 1891
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 1892
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1893
    const/4 v1, 0x1

    goto :goto_0

    .line 1956
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "runnable":Ljava/lang/Runnable;
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 1252
    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 1308
    :goto_0
    return-void

    .line 1253
    :cond_0
    const/4 v1, 0x0

    .line 1255
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    :goto_1
    new-instance v2, Lcom/android/camera/CaptureModule$11;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureModule$11;-><init>(Lcom/android/camera/CaptureModule;)V

    .line 1303
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 1304
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1256
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1258
    const/4 v1, 0x1

    goto :goto_1

    .line 1306
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
    .line 1840
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mReadyState:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1841
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mReadyState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1842
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    if-eqz p1, :cond_0

    .line 1844
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1846
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1854
    :goto_0
    return-void

    .line 1842
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1849
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectChooseManager;->onReadyStateChanged(Z)V

    .line 1850
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1851
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1852
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 1219
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-nez v0, :cond_2

    .line 1221
    new-instance v0, Lcom/android/camera/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1224
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayerLoaded:Z

    if-nez v0, :cond_4

    .line 1225
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1226
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1227
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1228
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mSoundPlayerLoaded:Z

    .line 1231
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_0

    .line 1232
    if-ne p1, v3, :cond_5

    .line 1233
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0

    .line 1234
    :cond_5
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1235
    :cond_6
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 1312
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRemoteShutterPress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1314
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->takePictureNow()V

    .line 1315
    return-void
.end method

.method public onSessionDone()V
    .locals 1

    .prologue
    .line 2993
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsOpenGLEnabled:Z

    if-nez v0, :cond_0

    .line 2994
    invoke-static {}, Lcom/android/camera/DebugManager;->getInstance()Lcom/android/camera/DebugManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DebugManager;->gotoNext()V

    .line 2995
    invoke-static {}, Lcom/android/camera/DebugManager;->getInstance()Lcom/android/camera/DebugManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DebugManager;->isStartMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2996
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 2997
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->reopenCamera()V

    .line 3000
    :cond_0
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 12
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 397
    const-string v9, "pref_camera_screen_key"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 398
    const-string v9, "default_scope"

    invoke-virtual {p1, v9, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 399
    .local v1, "currentValue":I
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 400
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x7f0803c4

    .line 401
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eq v1, v9, :cond_0

    const v9, 0x7f0803c6

    .line 402
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v1, v9, :cond_1

    :cond_0
    move v5, v8

    .line 403
    .local v5, "isPIPOn":Z
    :cond_1
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v9, :cond_6

    if-eqz v5, :cond_6

    .line 404
    const v8, 0x7f0b0011

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 405
    .local v4, "index":I
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/camera/app/CameraAppUI;->showModeBlurCover(I)V

    .line 406
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/camera/app/CameraAppUI;->onCameraModeSelected(I)V

    .line 522
    .end local v1    # "currentValue":I
    .end local v4    # "index":I
    .end local v5    # "isPIPOn":Z
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    return-void

    .line 409
    :cond_3
    const-string v9, "pref_camera_effect_mode_key"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 410
    const-string v9, "default_scope"

    invoke-virtual {p1, v9, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v7

    .line 411
    .local v7, "state":Lcom/android/camera/effect/EffectChooseState;
    sget-object v9, Lcom/android/camera/CaptureModule$27;->$SwitchMap$com$android$camera$effect$EffectChooseState:[I

    invoke-virtual {v7}, Lcom/android/camera/effect/EffectChooseState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 425
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-nez v9, :cond_5

    .line 426
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-eqz v9, :cond_9

    .line 427
    iput-boolean v8, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    .line 428
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v5}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V

    .line 429
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    iget-boolean v10, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-nez v10, :cond_4

    move v5, v8

    :cond_4
    invoke-virtual {v9, v5}, Lcom/android/camera/CaptureModuleUI;->setZoomEnable(Z)V

    .line 437
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->determineIfNotDrawPreviewOverlay()V

    .line 490
    .end local v7    # "state":Lcom/android/camera/effect/EffectChooseState;
    :cond_6
    :goto_2
    const-string v9, "pref_dual_cam_controller_key"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v9, v10, :cond_2

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v9

    sget-object v10, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v9, v10, :cond_2

    .line 491
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v9

    const-string v10, "default_scope"

    const-string v11, "pref_dual_cam_controller_key"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "dualCamControlValue":Ljava/lang/String;
    sget-object v9, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 495
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0803e8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 496
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v9, v10}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 504
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    :goto_3
    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 505
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 507
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v9, :cond_16

    .line 508
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 509
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->reopenCamera()V
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 516
    :catch_0
    move-exception v3

    .line 517
    .local v3, "ignored":Lcom/android/camera/one/OneCameraAccessException;
    iput-boolean v8, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    .line 518
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto/16 :goto_0

    .line 413
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v2    # "dualCamControlValue":Ljava/lang/String;
    .end local v3    # "ignored":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v7    # "state":Lcom/android/camera/effect/EffectChooseState;
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-eqz v9, :cond_5

    .line 414
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-eqz v9, :cond_8

    .line 415
    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    .line 416
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v5}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V

    .line 417
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    iget-boolean v10, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-nez v10, :cond_7

    move v5, v8

    :cond_7
    invoke-virtual {v9, v5}, Lcom/android/camera/CaptureModuleUI;->setZoomEnable(Z)V

    goto/16 :goto_1

    .line 419
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 420
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->reopenCamera()V

    goto/16 :goto_1

    .line 431
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 432
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->reopenCamera()V

    goto/16 :goto_1

    .line 438
    .end local v7    # "state":Lcom/android/camera/effect/EffectChooseState;
    :cond_a
    const-string v9, "pref_beauty"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 439
    invoke-static {p1}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 440
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-nez v9, :cond_b

    .line 441
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-eqz v9, :cond_c

    .line 442
    iput-boolean v8, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    .line 458
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->determineIfNotDrawPreviewOverlay()V

    goto/16 :goto_2

    .line 444
    :cond_c
    invoke-virtual {p0, v5}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 445
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->reopenCamera()V

    goto :goto_4

    .line 449
    :cond_d
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-eqz v9, :cond_b

    .line 450
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-eqz v9, :cond_e

    .line 451
    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    goto :goto_4

    .line 453
    :cond_e
    invoke-virtual {p0, v5}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 454
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->reopenCamera()V

    goto :goto_4

    .line 459
    :cond_f
    const-string v9, "pref_sr_control_boolean_key"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 460
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v9

    invoke-static {v9}, Lcom/android/camera/settings/Keys;->isSROn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 461
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-nez v9, :cond_11

    .line 464
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isSupportWideAndUltraWideMode()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 465
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    if-eqz v9, :cond_10

    .line 466
    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    .line 467
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mEnableUltraWideMode:Z

    invoke-direct {p0, v9}, Lcom/android/camera/CaptureModule;->saveUWModeSetting(Z)V

    .line 470
    :cond_10
    iput-boolean v8, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    .line 471
    invoke-virtual {p0, v5}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 472
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->reopenCamera()V

    .line 481
    :cond_11
    :goto_5
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->determineIfNotDrawPreviewOverlay()V

    goto/16 :goto_2

    .line 475
    :cond_12
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-eqz v9, :cond_11

    .line 476
    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    .line 477
    invoke-virtual {p0, v5}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 478
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->reopenCamera()V

    goto :goto_5

    .line 497
    .restart local v2    # "dualCamControlValue":Ljava/lang/String;
    :cond_13
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0803e9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 498
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :goto_6
    goto/16 :goto_3

    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_14
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v9, v10}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    goto :goto_6

    .line 500
    :cond_15
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v9, v10}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_3

    .line 511
    :cond_16
    const/4 v9, 0x1

    :try_start_1
    iput-boolean v9, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    .line 512
    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonClick()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xc8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 920
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v8, :cond_0

    .line 996
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_camera_effect_mode_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 924
    .local v1, "effectVal":I
    invoke-static {v1}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v8

    sget-object v9, Lcom/android/camera/effect/EffectChooseState;->LIGHTEN:Lcom/android/camera/effect/EffectChooseState;

    if-ne v8, v9, :cond_1

    move v2, v6

    .line 926
    .local v2, "isLighten":Z
    :goto_1
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->limitQueue()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    sget-object v9, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->LOWLIGHT:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    if-ne v8, v9, :cond_2

    move v3, v6

    .line 928
    .local v3, "limitQueue":Z
    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/session/CaptureSessionManager;->getSessionsSize()I

    move-result v6

    sget v7, Lcom/android/camera/CaptureModule;->MAX_QUEUE_SIZE:I

    if-le v6, v7, :cond_7

    .line 929
    sget-object v6, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "productLimitQueue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->limitQueue()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sceneMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "isLighten":Z
    .end local v3    # "limitQueue":Z
    :cond_1
    move v2, v7

    .line 924
    goto :goto_1

    .restart local v2    # "isLighten":Z
    :cond_2
    move v3, v7

    .line 926
    goto :goto_2

    :cond_3
    iget-boolean v8, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-eqz v8, :cond_5

    :cond_4
    iget-boolean v8, p0, Lcom/android/camera/CaptureModule;->mIsEffectEnabled:Z

    if-eqz v8, :cond_6

    if-eqz v2, :cond_6

    :cond_5
    move v3, v6

    goto :goto_2

    :cond_6
    move v3, v7

    goto :goto_2

    .line 933
    .restart local v3    # "limitQueue":Z
    :cond_7
    sget-object v6, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "onShutterButtonClick"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 936
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v6

    const-string v7, "default_scope"

    const-string v8, "pref_camera_countdown_duration_key"

    .line 937
    invoke-virtual {v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 939
    .local v0, "countDownDuration":I
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 940
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/GoogleAssistantManager;->getTimer()I

    move-result v0

    .line 941
    if-lez v0, :cond_8

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v6}, Lcom/android/camera/CaptureModuleUI;->isCountingDown()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 943
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onFirstPreviewArrived()V

    .line 944
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v12, v13}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 946
    :cond_8
    iget-boolean v6, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewArrived:Z

    if-nez v6, :cond_9

    .line 947
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v12, v13}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 950
    :cond_9
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/GoogleAssistantManager;->finishOperation()V

    .line 955
    :cond_a
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v6, :cond_c

    .line 956
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v6}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v6}, Lcom/android/camera/burst/BurstFacade;->isBurstStopping()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 957
    :cond_b
    sget-object v6, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "onShutterButtonClick ignore - mBurstController busy"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 962
    :cond_c
    iget-boolean v6, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewArrived:Z

    if-nez v6, :cond_d

    .line 963
    sget-object v6, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "onShutterButtonClick ignore - First Preview Not Arrived"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 967
    :cond_d
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v6, :cond_e

    .line 968
    sget-object v6, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "onShutterButtonClick ignore - mActivity is null"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 972
    :cond_e
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    .line 974
    .local v4, "storageSpaceBytes":J
    const-wide/32 v6, 0x2faf080

    cmp-long v6, v4, v6

    if-gtz v6, :cond_f

    .line 975
    sget-object v6, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 979
    :cond_f
    const/4 v6, 0x6

    invoke-static {v6}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 981
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 985
    if-lez v0, :cond_10

    .line 987
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 988
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 989
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 990
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v6, p0}, Lcom/android/camera/CaptureModuleUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 991
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v6, v0}, Lcom/android/camera/CaptureModuleUI;->startCountdown(I)V

    goto/16 :goto_0

    .line 994
    :cond_10
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->takePictureNow()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 902
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 903
    if-nez p1, :cond_0

    .line 905
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->stopBurst()V

    .line 907
    :cond_0
    return-void
.end method

.method public onShutterButtonLongPressed()V
    .locals 14

    .prologue
    .line 807
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-nez v1, :cond_0

    .line 877
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewArrived:Z

    if-nez v1, :cond_1

    .line 810
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed ignore - First Preview Not Arrived"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsOpenGLEnabled:Z

    if-eqz v1, :cond_2

    .line 814
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed ignore - Effect Enabled"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsSREnable:Z

    if-eqz v1, :cond_3

    .line 818
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed ignore - SR Enabled"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_3
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_shutter_control_boolean_key"

    .line 824
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 826
    .local v10, "enableShutterControl":Z
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsOpenMicroVideo:Z

    if-eqz v1, :cond_4

    if-eqz v10, :cond_4

    .line 827
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed ignore - MicroVideo Enabled"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 828
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f080317

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto :goto_0

    .line 831
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsBeautyEnabled:Z

    if-eqz v1, :cond_5

    if-eqz v10, :cond_5

    .line 832
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed ignore - Beauty Enabled"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 833
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f08010a

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto/16 :goto_0

    .line 837
    :cond_5
    if-nez v10, :cond_6

    .line 838
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "SettingsManager not enable ShutterControl"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 842
    :cond_6
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_7

    .line 843
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed ignore - mActivity is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 847
    :cond_7
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v12

    .line 849
    .local v12, "storageSpaceBytes":J
    const-wide/32 v2, 0x2faf080

    cmp-long v1, v12, v2

    if-gtz v1, :cond_8

    .line 850
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 854
    :cond_8
    const-wide/32 v2, 0x2faf080

    sub-long v8, v12, v2

    .line 855
    .local v8, "remainingStorageBytes":J
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 857
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    .line 858
    .local v5, "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v11

    .line 860
    .local v11, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/CaptureModule$10;

    invoke-direct {v3, p0}, Lcom/android/camera/CaptureModule$10;-><init>(Lcom/android/camera/CaptureModule;)V

    sget-object v4, Lcom/android/camera/burst/BurstFacade$BurstIntent;->BURST:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 870
    invoke-interface {v6}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    .line 871
    invoke-interface {v11}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    .line 860
    invoke-interface/range {v1 .. v9}, Lcom/android/camera/burst/BurstFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 873
    .end local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v11    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start burst"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 881
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 885
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 886
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 889
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 890
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 891
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v5, :cond_0

    .line 892
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 893
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 896
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 916
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureModuleUI;->setPictureTakingProgress(I)V

    .line 1880
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 1864
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1865
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1418
    sget-object v0, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    .line 1420
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1422
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->stopBurst()V

    .line 1429
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBarCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1430
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    if-eqz v0, :cond_2

    .line 1431
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    invoke-virtual {v0}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->stopBarcode()V

    .line 1436
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->cancelCountDown()V

    .line 1438
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v0, :cond_3

    .line 1439
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1442
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1443
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1444
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1445
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseManager;->unregisterEffectChoose()V

    .line 1447
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->unRegisterSceneRecognition()V

    .line 1448
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1449
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeCamera()V

    .line 1450
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->resetTextureBufferSize()V

    .line 1451
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayerLoaded:Z

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1453
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1454
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1455
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSoundPlayerLoaded:Z

    goto/16 :goto_0
.end method

.method public resume()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1365
    sget-object v2, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resume : mShowErrorAndFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1366
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_0

    .line 1414
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v4, "CaptureModule.resume"

    invoke-interface {v2, v4}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 1372
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1373
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/GoogleAssistantManager;->useFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1374
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 1375
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080303

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateCameraCharacteristics()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    .line 1381
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_3

    .line 1382
    sget-object v2, Lcom/android/camera/CaptureModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume : GOOGLE_ASSISTANT_FEATURE mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/CaptureModule;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1377
    :cond_1
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 1378
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080302

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1380
    goto :goto_2

    .line 1388
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    .line 1390
    invoke-virtual {p0, v3}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 1396
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 1398
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1399
    if-eqz v1, :cond_4

    .line 1400
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initSurfaceTextureConsumer()V

    .line 1401
    const-string v2, "initSurfaceTextureConsumer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1404
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1405
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1408
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-virtual {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->registerSceneRecognition()V

    .line 1410
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_5

    .line 1411
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1413
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
    .line 1000
    iput p1, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    .line 1001
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureModuleUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/CaptureModuleUI;->setOrientation(IZ)V

    .line 1002
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

    .line 540
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    new-instance v2, Lcom/android/camera/CaptureModule$6;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/CaptureModule$6;-><init>(Lcom/android/camera/CaptureModule;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    move-result v0

    .line 548
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 550
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 551
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 553
    :cond_0
    return v0
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 1967
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1968
    :try_start_0
    iget v1, p0, Lcom/android/camera/CaptureModule;->mScreenWidth:I

    .line 1969
    .local v1, "width":I
    iget v0, p0, Lcom/android/camera/CaptureModule;->mScreenHeight:I

    .line 1970
    .local v0, "height":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1971
    invoke-direct {p0, v1, v0}, Lcom/android/camera/CaptureModule;->updatePreviewTransform(II)V

    .line 1972
    return-void

    .line 1970
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
