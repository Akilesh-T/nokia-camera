.class public abstract Lcom/android/camera/one/v2/core/ResponseListener;
.super Ljava/lang/Object;
.source "ResponseListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 58
    return-void
.end method

.method public onFailed(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .param p1, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 68
    return-void
.end method

.method public onProgressed(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 48
    return-void
.end method

.method public onSequenceAborted(I)V
    .locals 0
    .param p1, "sequenceId"    # I

    .prologue
    .line 78
    return-void
.end method

.method public onSequenceCompleted(IJ)V
    .locals 0
    .param p1, "sequenceId"    # I
    .param p2, "frameNumber"    # J

    .prologue
    .line 88
    return-void
.end method

.method public onStarted(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 38
    return-void
.end method
