.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;
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

.field final synthetic val$listener:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;->val$listener:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;->mAlreadyDispatched:Z

    return-void
.end method

.method private checkAeState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 606
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;->mAlreadyDispatched:Z

    if-nez v0, :cond_0

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;->mAlreadyDispatched:Z

    .line 611
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;->val$listener:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$702(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    .line 614
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$500(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;->monitorControlStates(Landroid/hardware/camera2/CaptureResult;)V

    .line 616
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
    .line 602
    invoke-direct {p0, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;->checkAeState(Landroid/hardware/camera2/CaptureResult;)V

    .line 603
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 622
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Autoexposure and capture failed with reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 623
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 595
    invoke-direct {p0, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;->checkAeState(Landroid/hardware/camera2/CaptureResult;)V

    .line 596
    return-void
.end method
