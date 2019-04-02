.class Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$1;
.super Ljava/lang/Object;
.source "Camera2CaptureCallbackForwarder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

.field final synthetic val$request:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic val$result:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic val$session:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$1;->this$0:Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

    iput-object p2, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$1;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$1;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$1;->val$result:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$1;->this$0:Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

    invoke-static {v0}, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->access$000(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$1;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$1;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$1;->val$result:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 47
    return-void
.end method
