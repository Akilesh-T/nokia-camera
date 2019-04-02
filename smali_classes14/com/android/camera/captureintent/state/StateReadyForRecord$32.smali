.class Lcom/android/camera/captureintent/state/StateReadyForRecord$32;
.super Ljava/lang/Object;
.source "StateReadyForRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForRecord;->onPowerStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$32;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$32;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

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

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$32;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$100(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$32;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$200(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 816
    return-void
.end method
