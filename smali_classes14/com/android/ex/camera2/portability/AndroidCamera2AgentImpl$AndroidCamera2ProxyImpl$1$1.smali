.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;
.super Ljava/lang/Object;
.source "AndroidCamera2AgentImpl.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "focused"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1086
    return-void
.end method
