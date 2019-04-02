.class public Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;
.super Ljava/lang/Object;
.source "CameraDeviceRequestBuilderFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/RequestBuilder$Factory;


# instance fields
.field private final mCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;)V
    .locals 0
    .param p1, "cameraDevice"    # Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;->mCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 34
    return-void
.end method


# virtual methods
.method public create(I)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 3
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/android/camera/one/v2/core/RequestBuilder;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    iget-object v2, p0, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;->mCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 39
    invoke-interface {v2, p1}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;)V

    .line 38
    return-object v0
.end method

.method public createNonPreview(I)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 3
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/android/camera/one/v2/core/RequestBuilder;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    iget-object v2, p0, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;->mCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 45
    invoke-interface {v2, p1}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;)V

    .line 44
    return-object v0
.end method

.method public createRecordOnly(I)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 3
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/android/camera/one/v2/core/RequestBuilder;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    iget-object v2, p0, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;->mCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 51
    invoke-interface {v2, p1}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;)V

    .line 50
    return-object v0
.end method

.method public createReprocess(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 4
    .param p1, "captureResultProxy"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/android/camera/one/v2/core/RequestBuilder;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    iget-object v2, p0, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;->mCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 57
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getOriginalResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;)V

    .line 56
    return-object v0
.end method
