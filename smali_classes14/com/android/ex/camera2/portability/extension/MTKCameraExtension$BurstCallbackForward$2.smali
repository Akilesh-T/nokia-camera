.class Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;
.super Ljava/lang/Object;
.source "MTKCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

.field final synthetic val$this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;->val$this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->access$108(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)I

    .line 88
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Burst: onPictureTaken received jpeg count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    invoke-static {v3}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->access$100(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 92
    .local v0, "isBursting":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->access$200(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;->onBurstPictureTaken([B)V

    .line 96
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->access$100(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->access$300(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->access$400(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->stopBurst(Landroid/os/Handler;)V

    .line 100
    :cond_2
    return-void

    .line 90
    .end local v0    # "isBursting":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
