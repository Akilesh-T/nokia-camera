.class Lcom/android/camera/captureintent/state/StateOpeningCamera$2$2;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/video/RecordReadyStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->processEvent(Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;)Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/state/StateOpeningCamera$2;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateOpeningCamera$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$2;->this$1:Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstReadyStateChanged(Z)V
    .locals 0
    .param p1, "ready"    # Z

    .prologue
    .line 205
    return-void
.end method

.method public onRecordingStarted(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$2;->this$1:Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventRecordStarted;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventRecordStarted;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 184
    return-void
.end method

.method public onRecordingStarting()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$2;->this$1:Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventRecordStarting;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventRecordStarting;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 179
    return-void
.end method

.method public onRecordingStoped()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$2;->this$1:Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$2;->this$1:Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isAppDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$2;->this$1:Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventRecordStoped;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventRecordStoped;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    goto :goto_0
.end method

.method public onRecordingStoping()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$2;->this$1:Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventRecordStoping;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventRecordStoping;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 189
    return-void
.end method

.method public onRecordingUIChanged(Z)V
    .locals 0
    .param p1, "showed"    # Z

    .prologue
    .line 200
    return-void
.end method
