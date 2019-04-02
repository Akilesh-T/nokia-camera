.class public abstract Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
.super Ljava/lang/Object;
.source "ReprocessRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createReprocessBurstRequestBuilder(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;IZ)Lcom/android/camera/one/v2/core/RequestBuilder;
    .param p1    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract createReprocessJpegRequestBuilder(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;IZ)Lcom/android/camera/one/v2/core/RequestBuilder;
    .param p1    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method
