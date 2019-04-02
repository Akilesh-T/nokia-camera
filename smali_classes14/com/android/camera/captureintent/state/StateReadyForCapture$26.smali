.class Lcom/android/camera/captureintent/state/StateReadyForCapture$26;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$ScreenFlashController;


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
    .line 735
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$26;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideScreenFlash()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$26;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->stopFlashAnimationAfterTakePicture(Z)V

    .line 754
    return-void
.end method

.method public showScreenFlash(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 738
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$26;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v1

    new-instance v2, Lcom/android/camera/captureintent/state/StateReadyForCapture$26$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture$26$1;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture$26;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    move-result v0

    .line 745
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 746
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$26;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 748
    :cond_0
    return v0
.end method
