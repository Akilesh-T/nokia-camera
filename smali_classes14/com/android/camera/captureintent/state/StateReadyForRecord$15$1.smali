.class Lcom/android/camera/captureintent/state/StateReadyForRecord$15$1;
.super Ljava/lang/Object;
.source "StateReadyForRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForRecord$15;->processEvent(Lcom/android/camera/captureintent/event/EventRecordStoped;)Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$15;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForRecord$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/state/StateReadyForRecord$15;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$15;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->freezeScreenUntilPreviewReady()V

    .line 417
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$15;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

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

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$15;

    iget-object v1, v1, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$100(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$15;

    iget-object v2, v2, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$200(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 418
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$15;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

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

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->onRecordingStoped()V

    .line 419
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$15;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$500(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForRecord$15;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMediaActionSound()Landroid/media/MediaActionSound;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 423
    :cond_0
    return-void
.end method
