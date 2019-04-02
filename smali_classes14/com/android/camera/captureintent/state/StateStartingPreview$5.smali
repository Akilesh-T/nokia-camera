.class Lcom/android/camera/captureintent/state/StateStartingPreview$5;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateStartingPreview;->onEnter()Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateStartingPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateStartingPreview;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$5;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadyForCapture()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$5;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateStartingPreview;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventOnStartPreviewSucceeded;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventOnStartPreviewSucceeded;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 241
    return-void
.end method

.method public onSetupFailed()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$5;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateStartingPreview;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventOnStartPreviewFailed;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventOnStartPreviewFailed;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 236
    return-void
.end method
