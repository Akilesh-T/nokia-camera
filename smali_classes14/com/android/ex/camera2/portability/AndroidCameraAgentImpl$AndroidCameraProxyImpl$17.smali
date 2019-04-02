.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$17;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->stopBurst()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    .prologue
    .line 1687
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$17;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$17;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$17;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$17;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$700(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->requestStopBurst()V

    goto :goto_0
.end method
