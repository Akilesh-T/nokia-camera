.class Lcom/android/camera/captureintent/state/StateReadyForCapture$10;
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
        "Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;",
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
    .line 321
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;)Lcom/google/common/base/Optional;
    .locals 2
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$500(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$502(Lcom/android/camera/captureintent/state/StateReadyForCapture;Z)Z

    .line 326
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->showCaptureUI()V

    .line 327
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->setShutterButtonEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;->getCaptureLoggingInfo()Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$700(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V

    .line 330
    :cond_0
    sget-object v0, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 321
    check-cast p1, Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture$10;->processEvent(Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
