.class Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;
.super Ljava/lang/Object;
.source "Camera2CaptureCallbackForwarder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

.field final synthetic val$frameNumber:J

.field final synthetic val$request:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic val$session:Landroid/hardware/camera2/CameraCaptureSession;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;->this$0:Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

    iput-object p2, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iput-wide p4, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;->val$timestamp:J

    iput-wide p6, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;->val$frameNumber:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;->this$0:Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

    invoke-static {v0}, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->access$000(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iget-wide v4, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;->val$timestamp:J

    iget-wide v6, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;->val$frameNumber:J

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 97
    return-void
.end method
