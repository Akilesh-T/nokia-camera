.class Lcom/android/camera/captureintent/state/StateReadyForCapture$14;
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
        "Lcom/android/camera/captureintent/event/EventPictureCompressed;",
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
    .line 437
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$14;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventPictureCompressed;)Lcom/google/common/base/Optional;
    .locals 7
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventPictureCompressed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventPictureCompressed;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$14;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v4}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$900(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 441
    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$14;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v4, v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$902(Lcom/android/camera/captureintent/state/StateReadyForCapture;Z)Z

    .line 442
    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$14;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$1002(Lcom/android/camera/captureintent/state/StateReadyForCapture;Z)Z

    .line 444
    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventPictureCompressed;->getPictureData()[B

    move-result-object v2

    .line 445
    .local v2, "pictureData":[B
    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventPictureCompressed;->getOrientation()I

    move-result v3

    .line 447
    .local v3, "pictureOrientation":I
    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$14;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v4}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v0

    .line 448
    .local v0, "camera":Lcom/android/camera/one/OneCamera;
    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-eq v4, v5, :cond_1

    .line 449
    .local v1, "mirrorSettings":Z
    :goto_0
    invoke-static {}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$1100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get mirrorFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 451
    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$14;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v4}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCameraHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/camera/captureintent/state/StateReadyForCapture$14$1;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture$14$1;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture$14;[BIZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    .end local v0    # "camera":Lcom/android/camera/one/OneCamera;
    .end local v1    # "mirrorSettings":Z
    .end local v2    # "pictureData":[B
    .end local v3    # "pictureOrientation":I
    :cond_0
    sget-object v4, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v4

    .line 448
    .restart local v0    # "camera":Lcom/android/camera/one/OneCamera;
    .restart local v2    # "pictureData":[B
    .restart local v3    # "pictureOrientation":I
    :cond_1
    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$14;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v4}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->getMirrorSetting()Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 437
    check-cast p1, Lcom/android/camera/captureintent/event/EventPictureCompressed;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture$14;->processEvent(Lcom/android/camera/captureintent/event/EventPictureCompressed;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
