.class public Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2CaptureCallbackForwarder.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->mListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 37
    iput-object p2, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->mListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$1;-><init>(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$2;-><init>(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$3;-><init>(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$4;-><init>(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;Landroid/hardware/camera2/CameraCaptureSession;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 7
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .prologue
    .line 83
    iget-object v6, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$5;-><init>(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    .line 93
    iget-object v8, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder$6;-><init>(Lcom/android/ex/camera2/utils/Camera2CaptureCallbackForwarder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method
