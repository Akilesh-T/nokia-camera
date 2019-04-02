.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;->onPreviewStarted()V

    .line 845
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1802(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    .line 847
    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 837
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Failed to configure the camera for capture"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1702(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 831
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;I)V

    .line 832
    return-void
.end method
