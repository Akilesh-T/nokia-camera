.class Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput-boolean p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1050
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1f5

    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;->val$enable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1051
    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1053
    return-void

    :cond_0
    move v0, v1

    .line 1050
    goto :goto_0
.end method
