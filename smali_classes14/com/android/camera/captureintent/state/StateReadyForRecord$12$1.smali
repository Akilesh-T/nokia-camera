.class Lcom/android/camera/captureintent/state/StateReadyForRecord$12$1;
.super Ljava/lang/Object;
.source "StateReadyForRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForRecord$12;->processEvent(Lcom/android/camera/captureintent/event/EventRecordStarting;)Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$12;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForRecord$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/state/StateReadyForRecord$12;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$12$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$12$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$12;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$500(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$12$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$12;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMediaActionSound()Landroid/media/MediaActionSound;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$12$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$12;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

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

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->onRecordingStarting()V

    .line 366
    return-void
.end method
