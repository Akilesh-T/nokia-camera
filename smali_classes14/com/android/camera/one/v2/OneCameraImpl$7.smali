.class Lcom/android/camera/one/v2/OneCameraImpl$7;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "OneCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/OneCameraImpl;->setup(Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraImpl;

.field final synthetic val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraImpl;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraImpl;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 609
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 610
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$CaptureReadyCallback;->onSetupFailed()V

    .line 590
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v1, p1}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1402(Lcom/android/camera/one/v2/OneCameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 595
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {}, Lcom/android/camera/one/v2/OneCameraImpl;->access$100()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/OneCameraImpl;->access$002(Lcom/android/camera/one/v2/OneCameraImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 596
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {}, Lcom/android/camera/one/v2/OneCameraImpl;->access$100()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/OneCameraImpl;->access$202(Lcom/android/camera/one/v2/OneCameraImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 597
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1502(Lcom/android/camera/one/v2/OneCameraImpl;F)F

    .line 598
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v3}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1500(Lcom/android/camera/one/v2/OneCameraImpl;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1700(Lcom/android/camera/one/v2/OneCameraImpl;F)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1602(Lcom/android/camera/one/v2/OneCameraImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 599
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/OneCameraImpl;->access$400(Lcom/android/camera/one/v2/OneCameraImpl;Ljava/lang/Object;)Z

    move-result v0

    .line 600
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$CaptureReadyCallback;->onReadyForCapture()V

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl$7;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$CaptureReadyCallback;->onSetupFailed()V

    goto :goto_0
.end method
