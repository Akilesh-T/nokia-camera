.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1$1;
.super Ljava/lang/Object;
.source "AndroidCamera2AgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;->onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;

.field final synthetic val$camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$focused:Z


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "this$3"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1$1;->this$3:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;

    iput-boolean p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1$1;->val$focused:Z

    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1$1;->val$camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1$1;->this$3:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;->val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1$1;->val$focused:Z

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1$1$1;->val$camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-interface {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;->onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 1084
    return-void
.end method
