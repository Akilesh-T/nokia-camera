.class Lcom/android/camera/captureintent/state/StateReadyForCapture$24;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$24;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadyStateChanged(Z)V
    .locals 2
    .param p1, "readyForCapture"    # Z

    .prologue
    .line 694
    if-eqz p1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$24;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventCameraReady;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventCameraReady;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$24;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventCameraBusy;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventCameraBusy;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    goto :goto_0
.end method
