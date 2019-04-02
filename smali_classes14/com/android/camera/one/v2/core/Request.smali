.class public interface abstract Lcom/android/camera/one/v2/core/Request;
.super Ljava/lang/Object;
.source "Request.java"


# virtual methods
.method public abstract abort()V
.end method

.method public abstract allocateCaptureRequest()Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation
.end method

.method public abstract getResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;
.end method
