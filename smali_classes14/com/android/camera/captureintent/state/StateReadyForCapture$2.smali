.class Lcom/android/camera/captureintent/state/StateReadyForCapture$2;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture;->startCountDown(ILcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

.field final synthetic val$captureLoggingInfo:Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

.field final synthetic val$countDownDuration:I


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$2;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$2;->val$captureLoggingInfo:Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    iput p3, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$2;->val$countDownDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$2;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    .line 189
    .local v0, "moduleUI":Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    new-instance v1, Lcom/android/camera/captureintent/state/StateReadyForCapture$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$2$1;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 205
    iget v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$2;->val$countDownDuration:I

    invoke-virtual {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->startCountdown(I)V

    .line 206
    return-void
.end method
