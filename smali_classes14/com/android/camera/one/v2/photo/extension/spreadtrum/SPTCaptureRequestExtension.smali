.class public Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTCaptureRequestExtension;
.super Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
.source "SPTCaptureRequestExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public appendParamForAutoFocus(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p2, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "requestTemplate"    # Lcom/android/camera/one/v2/core/RequestTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "slaveRequestTemplate"    # Lcom/android/camera/one/v2/core/RequestTemplate;
    .param p5, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 26
    return-void
.end method

.method public appendParamForBeautyCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    return-void
.end method

.method public appendParamForBokehCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/BokehResultProvider;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p3, "bokehResultProvider"    # Lcom/android/camera/one/v2/photo/BokehResultProvider;

    .prologue
    .line 81
    return-void
.end method

.method public appendParamForDCIRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    return-void
.end method

.method public appendParamForDCLowLightCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    return-void
.end method

.method public appendParamForDSCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    return-void
.end method

.method public appendParamForDenoiseCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    return-void
.end method

.method public appendParamForHDRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    return-void
.end method

.method public appendParamForLowLightCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    return-void
.end method

.method public appendParamForManualCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;

    .prologue
    .line 76
    return-void
.end method

.method public appendParamForNormalCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    return-void
.end method

.method public appendParamForPicSelfieCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    return-void
.end method

.method public appendParamForPreview(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p2, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "requestTemplate"    # Lcom/android/camera/one/v2/core/RequestTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "slaveRequestTemplate"    # Lcom/android/camera/one/v2/core/RequestTemplate;
    .param p5, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p6, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;

    .prologue
    .line 21
    return-void
.end method

.method public configureVideoSnapshotForNormalCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    return-void
.end method

.method public configureZslParamForBurstCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enableZsl"    # Z

    .prologue
    .line 86
    return-void
.end method

.method public configureZslParamForNormalCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enableZsl"    # Z

    .prologue
    .line 91
    return-void
.end method
