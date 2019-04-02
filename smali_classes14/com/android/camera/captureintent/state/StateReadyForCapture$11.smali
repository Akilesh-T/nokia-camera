.class Lcom/android/camera/captureintent/state/StateReadyForCapture$11;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture;->registerEventHandlers()V
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
        "Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;)Lcom/google/common/base/Optional;
    .locals 8
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .line 341
    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v7

    check-cast v7, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    .line 344
    .local v7, "resourceConstructed":Lcom/android/camera/captureintent/resource/ResourceConstructed;
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/state/StateReadyForCapture$11$1;

    invoke-direct {v1, p0, v7}, Lcom/android/camera/captureintent/state/StateReadyForCapture$11$1;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture$11;Lcom/android/camera/captureintent/resource/ResourceConstructed;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 352
    invoke-interface {v7}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCameraFacingSetting()Lcom/android/camera/settings/CameraFacingSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/settings/CameraFacingSetting;->getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    .line 353
    .local v3, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    invoke-interface {v7}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v0

    .line 354
    invoke-interface {v0, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v4

    .line 357
    .local v4, "cameraId":Lcom/android/camera/device/CameraId;
    :try_start_0
    invoke-interface {v7}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v0

    .line 358
    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 365
    .local v5, "characteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .line 367
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .line 368
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceSurfaceTexture()Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    .line 365
    invoke-static/range {v0 .. v5}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/captureintent/state/StateOpeningCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .end local v5    # "characteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    :goto_0
    return-object v0

    .line 359
    :catch_0
    move-exception v6

    .line 360
    .local v6, "ex":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .line 362
    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    .line 360
    invoke-static {v1, v0}, Lcom/android/camera/captureintent/state/StateFatal;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateFatal;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 337
    check-cast p1, Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture$11;->processEvent(Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
