.class Lcom/android/camera/captureintent/state/StateReadyForCapture$11$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture$11;->processEvent(Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;)Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$11;

.field final synthetic val$resourceConstructed:Lcom/android/camera/captureintent/resource/ResourceConstructed;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture$11;Lcom/android/camera/captureintent/resource/ResourceConstructed;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/state/StateReadyForCapture$11;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$11$1;->this$1:Lcom/android/camera/captureintent/state/StateReadyForCapture$11;

    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$11$1;->val$resourceConstructed:Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$11$1;->val$resourceConstructed:Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->startSwitchCameraAnimation()V

    .line 348
    return-void
.end method
