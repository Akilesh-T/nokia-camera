.class Lcom/android/camera/captureintent/state/StateOpeningCamera$2;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateOpeningCamera;->registerEventHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/captureintent/stateful/EventHandler",
        "<",
        "Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateOpeningCamera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;)Lcom/google/common/base/Optional;
    .locals 24
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v20

    .line 137
    .local v20, "camera":Lcom/android/camera/one/OneCamera;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$000(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/Lifetime;->close()V

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 145
    invoke-static {v4}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 146
    invoke-static {v5}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$200(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v5

    .line 143
    invoke-static {v2, v4, v5}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    .line 277
    :goto_0
    return-object v2

    .line 150
    :cond_1
    sget-object v4, Lcom/android/camera/captureintent/state/StateOpeningCamera$6;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 273
    const/4 v3, 0x0

    .line 277
    .local v3, "videoController":Lcom/android/camera/video/VideoFacade;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 279
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 280
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$200(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v13

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 282
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$600(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/device/CameraId;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 283
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$700(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 284
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$300(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 285
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$800(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/util/Size;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 286
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$400(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v19

    .line 277
    invoke-static/range {v11 .. v19}, Lcom/android/camera/captureintent/state/StateStartingPreview;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/captureintent/state/StateStartingPreview;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    goto :goto_0

    .line 152
    .end local v3    # "videoController":Lcom/android/camera/video/VideoFacade;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->setCamcorderProfile(Landroid/media/CamcorderProfile;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->setPersistentInputSurfaceLifetime(Lcom/android/camera/async/Lifetime;)V

    .line 155
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v21

    .line 157
    .local v21, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 158
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 159
    invoke-static {v4}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 160
    invoke-static {v4}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$300(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 161
    invoke-static {v5}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$400(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v5

    new-instance v6, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$1;-><init>(Lcom/android/camera/captureintent/state/StateOpeningCamera$2;)V

    new-instance v7, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$2;-><init>(Lcom/android/camera/captureintent/state/StateOpeningCamera$2;)V

    .line 157
    invoke-static/range {v2 .. v7}, Lcom/android/camera/burst/BurstFacadeFactory;->create(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/burst/BurstReadyStateChangeListener;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v3

    check-cast v3, Lcom/android/camera/video/VideoFacade;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    .restart local v3    # "videoController":Lcom/android/camera/video/VideoFacade;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.intent.extra.durationLimit"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 212
    .local v23, "seconds":I
    move/from16 v0, v23

    mul-int/lit16 v7, v0, 0x3e8

    .line 217
    .end local v23    # "seconds":I
    .local v7, "maxVideoDuration":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.intent.extra.sizeLimit"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v4, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 219
    .local v8, "requestedSizeLimit":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "output"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 221
    .local v10, "saveUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$400(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$300(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getPersistentInputSurface()Lcom/android/camera/video/PersistentInputSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/video/PersistentInputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v11

    new-instance v12, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$3;-><init>(Lcom/android/camera/captureintent/state/StateOpeningCamera$2;)V

    const/4 v13, 0x0

    invoke-interface/range {v3 .. v13}, Lcom/android/camera/video/VideoFacade;->setRecordingInfo(Landroid/media/CamcorderProfile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;IJLandroid/net/Uri;Landroid/view/Surface;Lcom/android/camera/video/OnRecordTimeUpdateListener;Lcom/android/camera/async/Observable;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2, v3}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->setBurstFacade(Lcom/android/camera/burst/BurstFacade;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$000(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    invoke-static {}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v4, "Paused after mVideoController Inited"

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/burst/BurstFacade;->release()V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->setBurstFacade(Lcom/android/camera/burst/BurstFacade;)V

    .line 263
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/Lifetime;->close()V

    .line 266
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 268
    invoke-static {v4}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 269
    invoke-static {v5}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$200(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v5

    .line 266
    invoke-static {v2, v4, v5}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    goto/16 :goto_0

    .line 214
    .end local v7    # "maxVideoDuration":I
    .end local v8    # "requestedSizeLimit":J
    .end local v10    # "saveUri":Landroid/net/Uri;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/settings/SettingsUtil;->getMaxVideoDuration(Landroid/content/Context;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    .restart local v7    # "maxVideoDuration":I
    goto/16 :goto_1

    .line 234
    .end local v7    # "maxVideoDuration":I
    :catch_0
    move-exception v22

    .line 235
    .local v22, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-interface {v3}, Lcom/android/camera/video/VideoFacade;->release()V

    .line 236
    throw v22
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 238
    .end local v3    # "videoController":Lcom/android/camera/video/VideoFacade;
    .end local v21    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v22

    .line 239
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init mVideoController Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/burst/BurstFacade;->release()V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->setBurstFacade(Lcom/android/camera/burst/BurstFacade;)V

    .line 246
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/Lifetime;->close()V

    .line 249
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 251
    invoke-static {v4}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 252
    invoke-static {v5}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$200(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v5

    .line 249
    invoke-static {v2, v4, v5}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    goto/16 :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 133
    check-cast p1, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->processEvent(Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
