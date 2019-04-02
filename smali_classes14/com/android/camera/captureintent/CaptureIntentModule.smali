.class public Lcom/android/camera/captureintent/CaptureIntentModule;
.super Lcom/android/camera/CameraModule;
.source "CaptureIntentModule.java"

# interfaces
.implements Lcom/android/camera/captureintent/CaptureDataKeeper;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mCapturePhotoInfo:Lcom/android/camera/captureintent/CapturePhotoInfo;

.field private mCaptureVideoInfo:Lcom/android/camera/captureintent/CaptureVideoInfo;

.field private mFirstPreviewArrived:Z

.field private final mIntent:Landroid/content/Intent;

.field private mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

.field private mOrientation:I

.field private mPaused:Z

.field private final mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private mResourceConstructed:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingScopeNamespace:Ljava/lang/String;

.field private final mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureAvailable:Z

.field private mTouchPointInsideShutterButton:Lcom/android/camera/ui/TouchCoordinate;

.field private final mUIListener:Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CapIntModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/CaptureIntentModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "settingScopeNamespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 87
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 91
    iput v3, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mOrientation:I

    .line 92
    iput-boolean v3, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mFirstPreviewArrived:Z

    .line 347
    new-instance v1, Lcom/android/camera/captureintent/CaptureIntentModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/CaptureIntentModule$3;-><init>(Lcom/android/camera/captureintent/CaptureIntentModule;)V

    iput-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mUIListener:Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;

    .line 377
    new-instance v1, Lcom/android/camera/captureintent/CaptureIntentModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/CaptureIntentModule$4;-><init>(Lcom/android/camera/captureintent/CaptureIntentModule;)V

    iput-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 102
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new CaptureIntentModule"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 103
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v3, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mFirstPreviewArrived:Z

    .line 104
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 105
    iput-object p2, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mIntent:Landroid/content/Intent;

    .line 106
    iput-object p3, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mSettingScopeNamespace:Ljava/lang/String;

    .line 107
    new-instance v1, Lcom/android/camera/captureintent/stateful/StateMachineImpl;

    invoke-direct {v1}, Lcom/android/camera/captureintent/stateful/StateMachineImpl;-><init>()V

    iput-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mPaused:Z

    .line 109
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/CaptureIntentModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModule;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/captureintent/CaptureIntentModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModule;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/captureintent/CaptureIntentModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModule;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModule;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/captureintent/stateful/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModule;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/captureintent/CaptureIntentModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModule;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/captureintent/CaptureIntentModule;->isVideoCaptureIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/camera/captureintent/CaptureIntentModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/captureintent/CaptureIntentModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModule;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mSurfaceTextureAvailable:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/captureintent/CaptureIntentModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModule;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 457
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 456
    :goto_0
    return v1

    .line 457
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 451
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearCaptureData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 478
    invoke-direct {p0}, Lcom/android/camera/captureintent/CaptureIntentModule;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCapturePhotoInfo:Lcom/android/camera/captureintent/CapturePhotoInfo;

    if-eqz v0, :cond_0

    .line 480
    iput-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCapturePhotoInfo:Lcom/android/camera/captureintent/CapturePhotoInfo;

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/captureintent/CaptureIntentModule;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCaptureVideoInfo:Lcom/android/camera/captureintent/CaptureVideoInfo;

    if-eqz v0, :cond_0

    .line 484
    iput-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCaptureVideoInfo:Lcom/android/camera/captureintent/CaptureVideoInfo;

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->close()V

    .line 263
    invoke-direct {p0}, Lcom/android/camera/captureintent/CaptureIntentModule;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCapturePhotoInfo:Lcom/android/camera/captureintent/CapturePhotoInfo;

    if-eqz v0, :cond_0

    .line 265
    iput-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCapturePhotoInfo:Lcom/android/camera/captureintent/CapturePhotoInfo;

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/captureintent/CaptureIntentModule;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCaptureVideoInfo:Lcom/android/camera/captureintent/CaptureVideoInfo;

    if-eqz v0, :cond_0

    .line 269
    iput-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCaptureVideoInfo:Lcom/android/camera/captureintent/CaptureVideoInfo;

    goto :goto_0
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapturePhotoInfo()Lcom/android/camera/captureintent/CapturePhotoInfo;
    .locals 1

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/android/camera/captureintent/CaptureIntentModule;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCapturePhotoInfo:Lcom/android/camera/captureintent/CapturePhotoInfo;

    .line 473
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCaptureVideoInfo()Lcom/android/camera/captureintent/CaptureVideoInfo;
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/camera/captureintent/CaptureIntentModule;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCaptureVideoInfo:Lcom/android/camera/captureintent/CaptureVideoInfo;

    .line 465
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080130

    .line 317
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    return-object v0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 287
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 20
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "CaptureIntentModule.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v18

    .line 180
    .local v18, "guard":Lcom/android/camera/stats/profiler/Profile;
    new-instance v1, Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mUIListener:Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/captureintent/CaptureIntentModule;->isVideoCaptureIntent()Z

    move-result v6

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/CameraAppUI;Landroid/view/View;Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .line 186
    const-string v1, "mModuleUI.init"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mSettingScopeNamespace:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v4

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraActivity;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v6

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraActivity;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v7

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v8

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v9

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v10

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraActivity;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v11

    const/4 v12, 0x0

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/captureintent/CaptureIntentModule;->isVideoCaptureIntent()Z

    move-result v13

    if-eqz v13, :cond_0

    sget-object v14, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    move-object/from16 v16, v0

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraActivity;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v17

    move-object/from16 v13, p1

    move-object/from16 v15, p0

    .line 187
    invoke-static/range {v1 .. v17}, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->create(Landroid/content/Intent;Lcom/android/camera/captureintent/CaptureIntentModuleUI;Ljava/lang/String;Lcom/android/camera/async/MainThread;Landroid/content/Context;Lcom/android/camera/app/OneCameraProvider;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/app/LocationManager;Lcom/android/camera/app/OrientationManager;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/PowerStateManager;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/captureintent/CaptureDataKeeper;Lcom/android/camera/captureintent/stateful/StateMachine;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 205
    const-string v1, "mResourceConstructed.init"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-static {v1, v2}, Lcom/android/camera/captureintent/state/StateBackground;->create(Lcom/android/camera/captureintent/stateful/StateMachine;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateBackground;

    move-result-object v19

    .line 207
    .local v19, "initialState":Lcom/android/camera/captureintent/stateful/State;
    const-string v1, "initialState.ready"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    move-object/from16 v0, v19

    invoke-interface {v1, v0}, Lcom/android/camera/captureintent/stateful/StateMachine;->setInitialState(Lcom/android/camera/captureintent/stateful/State;)Z

    .line 210
    const-string v1, "setInitialState done"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 213
    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 214
    const-string v1, "setPreviewStatusListener done"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/captureintent/CaptureIntentModule;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    new-instance v2, Lcom/android/camera/captureintent/CaptureIntentModule$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/captureintent/CaptureIntentModule$2;-><init>(Lcom/android/camera/captureintent/CaptureIntentModule;)V

    .line 219
    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setCancelShutterButtonListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const-string v1, "setCancelShutterButtonListener done"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 226
    invoke-interface/range {v18 .. v18}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 227
    return-void

    .line 201
    .end local v19    # "initialState":Lcom/android/camera/captureintent/stateful/State;
    :cond_0
    sget-object v14, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    goto/16 :goto_0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    new-instance v1, Lcom/android/camera/captureintent/event/EventOnBackPress;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventOnBackPress;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 142
    return-void
.end method

.method public onFirstPreviewArrived()V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/android/camera/captureintent/CaptureIntentModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/captureintent/CaptureIntentModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/CaptureIntentModule$1;-><init>(Lcom/android/camera/captureintent/CaptureIntentModule;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->loadModuleLayout()V

    .line 130
    :cond_0
    sget-object v0, Lcom/android/camera/captureintent/CaptureIntentModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 322
    packed-switch p1, :pswitch_data_0

    .line 332
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 325
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    new-instance v2, Lcom/android/camera/captureintent/event/EventClickOnCameraKey;

    invoke-direct {v2}, Lcom/android/camera/captureintent/event/EventClickOnCameraKey;-><init>()V

    invoke-interface {v1, v2}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 337
    packed-switch p1, :pswitch_data_0

    .line 343
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    new-instance v1, Lcom/android/camera/captureintent/event/EventClickOnCameraKey;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventClickOnCameraKey;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 341
    const/4 v0, 0x1

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLayoutOrientationChanged(Z)V
    .locals 0
    .param p1, "isLandscape"    # Z

    .prologue
    .line 282
    return-void
.end method

.method public onPreviewVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 277
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    new-instance v1, Lcom/android/camera/captureintent/event/EventTapOnShutterButton;

    iget-object v2, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mTouchPointInsideShutterButton:Lcom/android/camera/ui/TouchCoordinate;

    invoke-direct {v1, v2}, Lcom/android/camera/captureintent/event/EventTapOnShutterButton;-><init>(Lcom/android/camera/ui/TouchCoordinate;)V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 157
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 147
    return-void
.end method

.method public onShutterButtonLongPressed()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 0
    .param p1, "swiped"    # I

    .prologue
    .line 167
    return-void
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "touchCoordinate"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mTouchPointInsideShutterButton:Lcom/android/camera/ui/TouchCoordinate;

    .line 152
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 242
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mPaused:Z

    .line 243
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 244
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->onModulePaused()V

    .line 246
    invoke-direct {p0}, Lcom/android/camera/captureintent/CaptureIntentModule;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    new-instance v0, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;

    invoke-direct {v0}, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;-><init>()V

    .line 248
    .local v0, "eventRetrieveCaptureInfo":Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    invoke-interface {v1, v0}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 249
    invoke-virtual {v0}, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;->getCapturePhotoInfo()Lcom/android/camera/captureintent/CapturePhotoInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCapturePhotoInfo:Lcom/android/camera/captureintent/CapturePhotoInfo;

    .line 256
    .end local v0    # "eventRetrieveCaptureInfo":Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    new-instance v2, Lcom/android/camera/captureintent/event/EventPause;

    invoke-direct {v2}, Lcom/android/camera/captureintent/event/EventPause;-><init>()V

    invoke-interface {v1, v2}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 257
    return-void

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/captureintent/CaptureIntentModule;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    new-instance v0, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;

    invoke-direct {v0}, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;-><init>()V

    .line 252
    .restart local v0    # "eventRetrieveCaptureInfo":Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    invoke-interface {v1, v0}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 253
    invoke-virtual {v0}, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;->getCaptureVideoInfo()Lcom/android/camera/captureintent/CaptureVideoInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mCaptureVideoInfo:Lcom/android/camera/captureintent/CaptureVideoInfo;

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mPaused:Z

    .line 232
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->onModuleResumed()V

    .line 233
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mSurfaceTextureAvailable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    new-instance v1, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;

    iget-object v2, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    new-instance v1, Lcom/android/camera/captureintent/event/EventResume;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventResume;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 135
    iput p1, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mOrientation:I

    .line 136
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule;->mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->setOrientation(IZ)V

    .line 137
    :cond_0
    return-void
.end method
