.class public final Lcom/android/camera/captureintent/state/StateStartingPreview;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateStartingPreview.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
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

.field private final mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;",
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
    .line 51
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StStartingPreview"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/state/StateStartingPreview;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 9
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .param p4, "camera"    # Lcom/android/camera/one/OneCamera;
    .param p5, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p6, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p7, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p8, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p9, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
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
            "Lcom/android/camera/one/OneCamera;",
            "Lcom/android/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p3, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 90
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 91
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 92
    iput-object p3, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    .line 93
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 94
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v7

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->create(Lcom/android/camera/async/RefCountBase;Lcom/android/camera/app/OneCameraProvider;Lcom/android/camera/one/OneCamera;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/captureintent/state/StateStartingPreview;->registerEventHandlers()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateStartingPreview;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateStartingPreview;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateStartingPreview;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/camera/captureintent/state/StateStartingPreview;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method public static from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/captureintent/state/StateStartingPreview;
    .locals 10
    .param p0, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .param p3, "camera"    # Lcom/android/camera/one/OneCamera;
    .param p4, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p5, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p6, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p7, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p8, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
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
            "Lcom/android/camera/one/OneCamera;",
            "Lcom/android/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")",
            "Lcom/android/camera/captureintent/state/StateStartingPreview;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p2, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateStartingPreview;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/captureintent/state/StateStartingPreview;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    return-object v0
.end method


# virtual methods
.method public onEnter()Lcom/google/common/base/Optional;
    .locals 10
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
    .line 173
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    .line 174
    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 175
    .local v5, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 176
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/Lifetime;->close()V

    .line 179
    :cond_0
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-static {p0, v6}, Lcom/android/camera/captureintent/state/StateFatal;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateFatal;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    .line 249
    .end local v5    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :goto_0
    return-object v6

    .line 182
    .restart local v5    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_1
    sget-object v7, Lcom/android/camera/captureintent/state/StateStartingPreview$6;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 197
    sget-object v7, Lcom/android/camera/captureintent/state/StateStartingPreview;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected Captrue mode : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 199
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/Lifetime;->close()V

    .line 201
    :cond_2
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-static {p0, v6}, Lcom/android/camera/captureintent/state/StateFatal;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateFatal;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    goto :goto_0

    .line 184
    :pswitch_0
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 185
    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v7

    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    .line 186
    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v8

    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    .line 187
    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    .line 185
    invoke-virtual {v7, v8, v6}, Lcom/android/camera/settings/ResolutionSetting;->getPictureAspectRatio(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/exif/Rational;

    move-result-object v3

    .line 189
    .local v3, "pictureAspectRatio":Lcom/android/camera/exif/Rational;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/camera/util/Size;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/camera/util/Size;

    .line 190
    invoke-virtual {v3}, Lcom/android/camera/exif/Rational;->toDouble()D

    move-result-wide v8

    const/4 v7, 0x0

    .line 188
    invoke-static {v6, v8, v9, v7}, Lcom/android/camera/CaptureModuleUtil;->getOptimalPreviewSize([Lcom/android/camera/util/Size;DLjava/lang/Double;)Lcom/android/camera/util/Size;

    move-result-object v4

    .line 203
    .end local v3    # "pictureAspectRatio":Lcom/android/camera/exif/Rational;
    .local v4, "previewSize":Lcom/android/camera/util/Size;
    :goto_1
    sget-object v6, Lcom/android/camera/captureintent/state/StateStartingPreview;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preview Size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    if-nez v4, :cond_5

    .line 207
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 208
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/Lifetime;->close()V

    .line 210
    :cond_3
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-static {p0, v6}, Lcom/android/camera/captureintent/state/StateFatal;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateFatal;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    goto/16 :goto_0

    .line 194
    .end local v4    # "previewSize":Lcom/android/camera/util/Size;
    :pswitch_1
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v7

    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getPictureSize()Lcom/android/camera/util/Size;

    move-result-object v8

    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Lcom/android/camera/one/OneCamera;->pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 195
    .restart local v4    # "previewSize":Lcom/android/camera/util/Size;
    goto :goto_1

    .line 212
    .end local v4    # "previewSize":Lcom/android/camera/util/Size;
    .end local v5    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :catch_0
    move-exception v1

    .line 213
    .local v1, "ex":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 214
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/Lifetime;->close()V

    .line 216
    :cond_4
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-static {p0, v6}, Lcom/android/camera/captureintent/state/StateFatal;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateFatal;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    goto/16 :goto_0

    .line 224
    .end local v1    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v4    # "previewSize":Lcom/android/camera/util/Size;
    .restart local v5    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_5
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;

    invoke-interface {v6, v4}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;->setPreviewSize(Lcom/android/camera/util/Size;)V

    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v6, v7, :cond_6

    .line 227
    new-instance v2, Lcom/android/camera/async/Lifetime;

    .end local v2    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    invoke-direct {v2}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 228
    .restart local v2    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 231
    :cond_6
    new-instance v0, Lcom/android/camera/captureintent/state/StateStartingPreview$5;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateStartingPreview$5;-><init>(Lcom/android/camera/captureintent/state/StateStartingPreview;)V

    .line 244
    .local v0, "captureReadyCallback":Lcom/android/camera/one/OneCamera$CaptureReadyCallback;
    sget-object v6, Lcom/android/camera/captureintent/state/StateStartingPreview;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "starting preview ..."

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    iget-object v7, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    .line 248
    invoke-virtual {v7}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v7

    check-cast v7, Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;

    invoke-interface {v7}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;->createPreviewSurface()Landroid/view/Surface;

    move-result-object v7

    .line 247
    invoke-interface {v6, v7, v2, v0}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->startPreview(Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    .line 249
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    goto/16 :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 255
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 256
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 257
    return-void
.end method

.method public registerEventHandlers()V
    .locals 5

    .prologue
    .line 100
    new-instance v3, Lcom/android/camera/captureintent/state/StateStartingPreview$1;

    invoke-direct {v3, p0}, Lcom/android/camera/captureintent/state/StateStartingPreview$1;-><init>(Lcom/android/camera/captureintent/state/StateStartingPreview;)V

    .line 109
    .local v3, "pauseHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventPause;>;"
    const-class v4, Lcom/android/camera/captureintent/event/EventPause;

    invoke-virtual {p0, v4, v3}, Lcom/android/camera/captureintent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 112
    new-instance v2, Lcom/android/camera/captureintent/state/StateStartingPreview$2;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateStartingPreview$2;-><init>(Lcom/android/camera/captureintent/state/StateStartingPreview;)V

    .line 120
    .local v2, "onTextureViewLayoutChangedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;>;"
    const-class v4, Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/captureintent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 123
    new-instance v1, Lcom/android/camera/captureintent/state/StateStartingPreview$3;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateStartingPreview$3;-><init>(Lcom/android/camera/captureintent/state/StateStartingPreview;)V

    .line 153
    .local v1, "onStartPreviewSucceededHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnStartPreviewSucceeded;>;"
    const-class v4, Lcom/android/camera/captureintent/event/EventOnStartPreviewSucceeded;

    invoke-virtual {p0, v4, v1}, Lcom/android/camera/captureintent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 156
    new-instance v0, Lcom/android/camera/captureintent/state/StateStartingPreview$4;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateStartingPreview$4;-><init>(Lcom/android/camera/captureintent/state/StateStartingPreview;)V

    .line 165
    .local v0, "onStartPreviewFailedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnStartPreviewFailed;>;"
    const-class v4, Lcom/android/camera/captureintent/event/EventOnStartPreviewFailed;

    invoke-virtual {p0, v4, v0}, Lcom/android/camera/captureintent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 166
    return-void
.end method
