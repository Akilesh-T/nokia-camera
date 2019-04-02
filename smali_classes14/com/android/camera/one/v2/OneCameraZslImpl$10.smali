.class Lcom/android/camera/one/v2/OneCameraZslImpl$10;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "OneCameraZslImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;->setup(Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

.field final synthetic val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 748
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 749
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$CaptureReadyCallback;->onSetupFailed()V

    .line 726
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v1, p1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1202(Lcom/android/camera/one/v2/OneCameraZslImpl;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 731
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v2, v2, Lcom/android/camera/one/v2/OneCameraZslImpl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1302(Lcom/android/camera/one/v2/OneCameraZslImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 732
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v2, v2, Lcom/android/camera/one/v2/OneCameraZslImpl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1402(Lcom/android/camera/one/v2/OneCameraZslImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 733
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1502(Lcom/android/camera/one/v2/OneCameraZslImpl;F)F

    .line 734
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v3}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1500(Lcom/android/camera/one/v2/OneCameraZslImpl;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1700(Lcom/android/camera/one/v2/OneCameraZslImpl;F)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1602(Lcom/android/camera/one/v2/OneCameraZslImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 735
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1800(Lcom/android/camera/one/v2/OneCameraZslImpl;)Z

    move-result v0

    .line 736
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 737
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$200(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/util/ListenerCombiner;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;->CAPTURE_NOT_IN_PROGRESS:Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/util/ListenerCombiner;->setInput(Ljava/lang/Enum;Z)Z

    .line 739
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$200(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/util/ListenerCombiner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/ListenerCombiner;->notifyListeners()V

    .line 740
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$CaptureReadyCallback;->onReadyForCapture()V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$10;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$CaptureReadyCallback;->onSetupFailed()V

    goto :goto_0
.end method
