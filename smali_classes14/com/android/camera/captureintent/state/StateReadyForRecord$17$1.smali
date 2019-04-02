.class Lcom/android/camera/captureintent/state/StateReadyForRecord$17$1;
.super Ljava/lang/Object;
.source "StateReadyForRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForRecord$17;->processEvent(Lcom/android/camera/captureintent/event/EventRecordTimeWarning;)Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$17;

.field final synthetic val$event:Lcom/android/camera/captureintent/event/EventRecordTimeWarning;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForRecord$17;Lcom/android/camera/captureintent/event/EventRecordTimeWarning;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/state/StateReadyForRecord$17;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$17$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$17;

    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$17$1;->val$event:Lcom/android/camera/captureintent/event/EventRecordTimeWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$17$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$17;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$17;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$17$1;->val$event:Lcom/android/camera/captureintent/event/EventRecordTimeWarning;

    invoke-virtual {v1}, Lcom/android/camera/captureintent/event/EventRecordTimeWarning;->isWarning()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->onRecordTimeWarning(Z)V

    .line 455
    return-void
.end method
