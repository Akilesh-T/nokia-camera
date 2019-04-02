.class Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "AndroidCameraCaptureSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidCaptureCallback"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;

.field final synthetic this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->mCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;
    .param p2, "x1"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;
    .param p3, "x2"    # Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$1;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;)V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->mCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;->onCaptureCompleted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 63
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->mCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;->onCaptureFailed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 69
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->mCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;->onCaptureProgressed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 57
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->mCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    invoke-interface {v0, v1, p2}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;->onCaptureSequenceAborted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;I)V

    .line 81
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->mCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;->onCaptureSequenceCompleted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;IJ)V

    .line 76
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->mCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;

    iget-object v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;->onCaptureStarted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 50
    return-void
.end method
