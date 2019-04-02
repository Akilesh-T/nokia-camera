.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;
.super Ljava/lang/Object;
.source "AndroidCamera2AgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

.field final synthetic val$picListener:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;->val$picListener:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    const/16 v1, -0x10

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->waitForStates(I)Z

    .line 1179
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    move-result-object v0

    const/16 v1, 0x259

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;->val$picListener:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1180
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1181
    return-void
.end method
