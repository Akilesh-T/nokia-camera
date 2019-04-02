.class Lcom/android/camera/captureintent/state/StateReadyForRecord$24$1;
.super Ljava/lang/Object;
.source "StateReadyForRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForRecord$24;->processEvent(Lcom/android/camera/captureintent/event/EventCameraBusy;)Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$24;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForRecord$24;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/state/StateReadyForRecord$24;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$24$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$24$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$24;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$24;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$24$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$24;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$24;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->setShutterButtonEnabled(Z)V

    goto :goto_0
.end method
