.class Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$5;
.super Ljava/lang/Object;
.source "Camera2CaptureCallbackForwarder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

.field final synthetic val$frameNumber:J

.field final synthetic val$sequenceId:I

.field final synthetic val$session:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$5;->this$0:Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

    iput-object p2, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$5;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    iput p3, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$5;->val$sequenceId:I

    iput-wide p4, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$5;->val$frameNumber:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$5;->this$0:Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

    invoke-static {v0}, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->access$000(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$5;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    iget v2, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$5;->val$sequenceId:I

    iget-wide v4, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$5;->val$frameNumber:J

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 87
    return-void
.end method
