.class public Lcom/android/ex/camera2/utils/Camera2CaptureCallbackSplitter;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2CaptureCallbackSplitter.java"


# instance fields
.field private final mRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 4
    .param p1, "recipients"    # [Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 35
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackSplitter;->mRecipients:Ljava/util/List;

    .line 42
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 43
    .local v0, "listener":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    if-eqz v0, :cond_0

    .line 44
    iget-object v3, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackSplitter;->mRecipients:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "listener":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackSplitter;->mRecipients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 53
    .local v0, "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    .line 55
    .end local v0    # "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    :cond_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackSplitter;->mRecipients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 61
    .local v0, "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    goto :goto_0

    .line 63
    .end local v0    # "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackSplitter;->mRecipients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 69
    .local v0, "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    .line 71
    .end local v0    # "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    :cond_0
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackSplitter;->mRecipients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 76
    .local v0, "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    goto :goto_0

    .line 78
    .end local v0    # "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    :cond_0
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackSplitter;->mRecipients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 84
    .local v0, "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    goto :goto_0

    .line 86
    .end local v0    # "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2CaptureCallbackSplitter;->mRecipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .local v1, "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 92
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    goto :goto_0

    .line 94
    .end local v1    # "target":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    :cond_0
    return-void
.end method
