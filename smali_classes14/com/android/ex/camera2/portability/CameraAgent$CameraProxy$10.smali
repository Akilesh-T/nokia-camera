.class Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$10;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->addCallbackBuffer([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$callbackBuffer:[B


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$10;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$10;->val$callbackBuffer:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$10;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    iget-object v2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$10;->val$callbackBuffer:[B

    .line 718
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 720
    return-void
.end method
