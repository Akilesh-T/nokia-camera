.class Lcom/android/camera/captureintent/state/StateOpeningCamera$2$3;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/video/OnRecordTimeUpdateListener;


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
    .line 221
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$3;->this$1:Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordTimeUpdate(Ljava/lang/String;)V
    .locals 2
    .param p1, "reordTimeText"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$3;->this$1:Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventRecordTimeUpdate;

    invoke-direct {v1, p1}, Lcom/android/camera/captureintent/event/EventRecordTimeUpdate;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 225
    return-void
.end method

.method public onRecordTimeWarning(Z)V
    .locals 2
    .param p1, "warning"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2$3;->this$1:Lcom/android/camera/captureintent/state/StateOpeningCamera$2;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventRecordTimeWarning;

    invoke-direct {v1, p1}, Lcom/android/camera/captureintent/event/EventRecordTimeWarning;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 230
    return-void
.end method
