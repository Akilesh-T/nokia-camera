.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;
.super Ljava/lang/Object;
.source "AndroidCamera2AgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

.field final synthetic val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;->val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1074
    const/4 v0, 0x0

    .line 1075
    .local v0, "cbForward":Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;->val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    if-eqz v1, :cond_0

    .line 1076
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;

    .end local v0    # "cbForward":Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;)V

    .line 1090
    .restart local v0    # "cbForward":Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->waitForStates(I)Z

    .line 1092
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    move-result-object v1

    const/16 v2, 0x12d

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1093
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1094
    return-void
.end method
