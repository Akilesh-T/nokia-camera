.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAlreadyDispatched:Z

.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

.field final synthetic val$callback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->val$callback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->mAlreadyDispatched:Z

    return-void
.end method

.method private checkAfState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 427
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->mAlreadyDispatched:Z

    if-nez v0, :cond_0

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->mAlreadyDispatched:Z

    .line 432
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->val$callback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$402(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .line 435
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$500(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;->monitorControlStates(Landroid/hardware/camera2/CaptureResult;)V

    .line 437
    :cond_0
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 423
    invoke-direct {p0, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->checkAfState(Landroid/hardware/camera2/CaptureResult;)V

    .line 424
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 443
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focusing failed with reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->val$callback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;->onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 445
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 416
    invoke-direct {p0, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;->checkAfState(Landroid/hardware/camera2/CaptureResult;)V

    .line 417
    return-void
.end method
