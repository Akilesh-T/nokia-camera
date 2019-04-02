.class Lcom/android/camera/captureintent/state/StateReadyForCapture$17$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture$17;->processEvent(Lcom/android/camera/captureintent/event/EventCameraQuickExpose;)Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$17;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/state/StateReadyForCapture$17;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$17$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 517
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$17$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$17;

    iget-object v1, v1, Lcom/android/camera/captureintent/state/StateReadyForCapture$17;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .line 518
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    .line 519
    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    .line 521
    .local v0, "resourceConstructed":Lcom/android/camera/captureintent/resource/ResourceConstructed;
    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v1

    .line 522
    invoke-virtual {v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->freezeScreenUntilPreviewReady()V

    .line 524
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$17$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$17;

    iget-object v1, v1, Lcom/android/camera/captureintent/state/StateReadyForCapture$17;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v1

    .line 525
    invoke-virtual {v1, v3}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->setShutterButtonEnabled(Z)V

    .line 527
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$17$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$17;

    iget-object v1, v1, Lcom/android/camera/captureintent/state/StateReadyForCapture$17;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v1

    const/4 v2, 0x1

    .line 528
    invoke-virtual {v1, v2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->startFlashAnimation(Z)V

    .line 529
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$17$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$17;

    iget-object v1, v1, Lcom/android/camera/captureintent/state/StateReadyForCapture$17;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$1200(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$17$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$17;

    iget-object v1, v1, Lcom/android/camera/captureintent/state/StateReadyForCapture$17;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMediaActionSound()Landroid/media/MediaActionSound;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/MediaActionSound;->play(I)V

    .line 533
    :cond_0
    return-void
.end method
