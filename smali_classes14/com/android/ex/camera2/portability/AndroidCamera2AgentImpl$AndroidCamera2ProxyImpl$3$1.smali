.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;
.super Ljava/lang/Object;
.source "AndroidCamera2AgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->access$2600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Landroid/media/MediaActionSound;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->val$shutter:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;->onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 1153
    return-void
.end method
