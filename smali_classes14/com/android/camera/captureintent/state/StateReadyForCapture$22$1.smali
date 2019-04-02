.class Lcom/android/camera/captureintent/state/StateReadyForCapture$22$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture$22;->processEvent(Lcom/android/camera/captureintent/event/EventCameraBusy;)Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$22;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/state/StateReadyForCapture$22;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$22$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$22$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$22;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$22;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->setShutterButtonEnabled(Z)V

    .line 666
    return-void
.end method
