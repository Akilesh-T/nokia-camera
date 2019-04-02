.class Lcom/android/camera/captureintent/state/StateReadyForCapture$2$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$2;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/state/StateReadyForCapture$2;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$2$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDownFinished()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$2$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$2;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$2;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$2$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$2;

    iget-object v2, v2, Lcom/android/camera/captureintent/state/StateReadyForCapture$2;->val$captureLoggingInfo:Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    invoke-direct {v1, v2}, Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;-><init>(Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 203
    return-void
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 1
    .param p1, "remainingSeconds"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$2$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$2;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$2;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    .line 195
    invoke-interface {v0, p1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->playCountDownSound(I)V

    .line 196
    return-void
.end method
