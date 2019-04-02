.class Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;
.super Ljava/lang/Object;
.source "TagDispatchCaptureSession.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureCallback"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/android/camera/one/v2/core/ResponseListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;->mListeners:Ljava/util/Map;

    .line 54
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "tag":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;->mListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    invoke-virtual {v1, p3}, Lcom/android/camera/one/v2/core/ResponseListener;->onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 75
    return-void
.end method

.method public onCaptureFailed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "tag":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;->mListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    invoke-virtual {v1, p3}, Lcom/android/camera/one/v2/core/ResponseListener;->onFailed(Landroid/hardware/camera2/CaptureFailure;)V

    .line 82
    return-void
.end method

.method public onCaptureProgressed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "tag":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;->mListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    invoke-virtual {v1, p3}, Lcom/android/camera/one/v2/core/ResponseListener;->onProgressed(Landroid/hardware/camera2/CaptureResult;)V

    .line 68
    return-void
.end method

.method public onCaptureSequenceAborted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;I)V
    .locals 3
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p2, "sequenceId"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 87
    .local v0, "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    invoke-virtual {v0, p2}, Lcom/android/camera/one/v2/core/ResponseListener;->onSequenceAborted(I)V

    goto :goto_0

    .line 89
    .end local v0    # "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    :cond_0
    return-void
.end method

.method public onCaptureSequenceCompleted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;IJ)V
    .locals 3
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 95
    .local v0, "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/camera/one/v2/core/ResponseListener;->onSequenceCompleted(IJ)V

    goto :goto_0

    .line 97
    .end local v0    # "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    :cond_0
    return-void
.end method

.method public onCaptureStarted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 3
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "tag":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;->mListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    invoke-virtual {v1, p3, p4}, Lcom/android/camera/one/v2/core/ResponseListener;->onStarted(J)V

    .line 61
    return-void
.end method
