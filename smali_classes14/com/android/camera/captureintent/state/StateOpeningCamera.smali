.class public final Lcom/android/camera/captureintent/state/StateOpeningCamera;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateOpeningCamera.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private final mCameraId:Lcom/android/camera/device/CameraId;

.field private final mCameraSettingsScope:Ljava/lang/String;

.field private mIsPaused:Z

.field private mOneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private mPictureSize:Lcom/android/camera/util/Size;

.field private final mResourceConstructed:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StateOpeningCamera"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 1
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .param p4, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p5, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p6, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p3, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 108
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 109
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 110
    iput-object p3, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    .line 111
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 112
    iput-object p4, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 113
    iput-object p5, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraId:Lcom/android/camera/device/CameraId;

    .line 114
    iput-object p6, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mIsPaused:Z

    .line 116
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraId:Lcom/android/camera/device/CameraId;

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraSettingsScope:Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->registerEventHandlers()V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/captureintent/state/StateOpeningCamera;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCaptureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mOneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraId:Lcom/android/camera/device/CameraId;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mPictureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public static from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/captureintent/state/StateOpeningCamera;
    .locals 7
    .param p0, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .param p3, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p4, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p5, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Lcom/android/camera/captureintent/state/StateOpeningCamera;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p2, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/captureintent/state/StateOpeningCamera;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;)V

    return-object v0
.end method

.method private getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateOpeningCamera$5;-><init>(Lcom/android/camera/captureintent/state/StateOpeningCamera;)V

    return-object v0
.end method

.method private registerEventHandlers()V
    .locals 4

    .prologue
    .line 122
    new-instance v2, Lcom/android/camera/captureintent/state/StateOpeningCamera$1;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateOpeningCamera$1;-><init>(Lcom/android/camera/captureintent/state/StateOpeningCamera;)V

    .line 129
    .local v2, "pauseHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventPause;>;"
    const-class v3, Lcom/android/camera/captureintent/event/EventPause;

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 132
    new-instance v1, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;-><init>(Lcom/android/camera/captureintent/state/StateOpeningCamera;)V

    .line 289
    .local v1, "onOpenCameraSucceededHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;>;"
    const-class v3, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;

    invoke-virtual {p0, v3, v1}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 292
    new-instance v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateOpeningCamera$3;-><init>(Lcom/android/camera/captureintent/state/StateOpeningCamera;)V

    .line 301
    .local v0, "onOpenCameraFailedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnOpenCameraFailed;>;"
    const-class v3, Lcom/android/camera/captureintent/event/EventOnOpenCameraFailed;

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 302
    return-void
.end method


# virtual methods
.method public isPaused()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mIsPaused:Z

    return v0
.end method

.method public onEnter()Lcom/google/common/base/Optional;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-nez v4, :cond_0

    .line 307
    sget-object v4, Lcom/android/camera/captureintent/state/StateOpeningCamera;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "mCameraCharacteristics is null"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/camera/captureintent/state/StateFatal;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateFatal;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 382
    :goto_0
    return-object v4

    .line 311
    :cond_0
    new-instance v20, Lcom/android/camera/async/Lifetime;

    invoke-direct/range {v20 .. v20}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 316
    .local v20, "persistentInputSurfaceLifetime":Lcom/android/camera/async/Lifetime;
    :try_start_0
    sget-object v5, Lcom/android/camera/captureintent/state/StateOpeningCamera$6;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 331
    sget-object v5, Lcom/android/camera/captureintent/state/StateOpeningCamera;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected CaptureMode : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/camera/captureintent/state/StateFatal;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateFatal;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    goto :goto_0

    .line 318
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraId:Lcom/android/camera/device/CameraId;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mPictureSize:Lcom/android/camera/util/Size;

    .line 320
    const/16 v17, 0x0

    .line 321
    .local v17, "camcorderProfile":Landroid/media/CamcorderProfile;
    const/16 v19, 0x0

    .line 322
    .local v19, "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    sget-object v12, Lcom/android/camera/one/OneCameraCaptureSetting;->DEFAULT_PREVIEW_FPS:Landroid/util/Range;

    .line 334
    .local v12, "previewFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_1
    sget-object v4, Lcom/android/camera/captureintent/state/StateOpeningCamera;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPictureSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 337
    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 338
    invoke-virtual {v5}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v5

    check-cast v5, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v5}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mPictureSize:Lcom/android/camera/util/Size;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 346
    invoke-virtual {v13}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v13

    check-cast v13, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v13}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v13

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraSettingsScope:Ljava/lang/String;

    const/16 v16, 0x0

    .line 336
    invoke-static/range {v4 .. v16}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mOneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraId:Lcom/android/camera/device/CameraId;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;-><init>(Lcom/android/camera/captureintent/state/StateOpeningCamera;Lcom/android/camera/async/Lifetime;Lcom/android/camera/video/PersistentInputSurface;Landroid/media/CamcorderProfile;)V

    invoke-interface {v4, v5, v6, v7}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    .line 382
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    goto/16 :goto_0

    .line 325
    .end local v12    # "previewFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v17    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .end local v19    # "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraId:Lcom/android/camera/device/CameraId;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v8, "android.intent.extra.videoQuality"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sget-object v8, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-virtual {v5, v6, v7, v4, v8}, Lcom/android/camera/settings/ResolutionSetting;->getVideoProfile(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;ILcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Landroid/media/CamcorderProfile;

    move-result-object v17

    .line 326
    .restart local v17    # "camcorderProfile":Landroid/media/CamcorderProfile;
    new-instance v19, Lcom/android/camera/video/PersistentInputSurface;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/camera/video/PersistentInputSurface;-><init>(Lcom/android/camera/async/Lifetime;Landroid/media/CamcorderProfile;)V

    .line 327
    .restart local v19    # "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/16 v5, 0x100

    invoke-interface {v4, v5}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v4, v5, v6}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mPictureSize:Lcom/android/camera/util/Size;

    .line 328
    new-instance v12, Landroid/util/Range;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v12, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    .restart local v12    # "previewFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_1

    .line 351
    .end local v12    # "previewFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v17    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .end local v19    # "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    :catch_0
    move-exception v18

    .line 352
    .local v18, "ex":Lcom/android/camera/one/OneCameraAccessException;
    sget-object v4, Lcom/android/camera/captureintent/state/StateOpeningCamera;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Failed while open camera"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    if-eqz v20, :cond_1

    .line 354
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/async/Lifetime;->close()V

    .line 356
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/camera/captureintent/state/StateFatal;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateFatal;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    goto/16 :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 388
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 389
    return-void
.end method
