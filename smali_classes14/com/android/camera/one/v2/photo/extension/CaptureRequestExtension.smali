.class public abstract Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
.super Ljava/lang/Object;
.source "CaptureRequestExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract appendParamForAutoFocus(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .param p3    # Lcom/android/camera/one/v2/core/RequestTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForBeautyCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .param p1    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/camera/one/v2/photo/FlashDetector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForBokehCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/BokehResultProvider;)V
    .param p1    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForDCIRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .param p1    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForDCLowLightCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .param p1    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForDSCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .param p1    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForDenoiseCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .param p1    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForHDRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .param p1    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForLowLightCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .param p1    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForManualCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .param p1    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/camera/one/v2/photo/FlashDetector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForNormalCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .param p1    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/camera/one/v2/photo/FlashDetector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForPicSelfieCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .param p1    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/camera/one/v2/photo/FlashDetector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appendParamForPreview(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .param p1    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/camera/one/v2/core/RequestTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract configureVideoSnapshotForNormalCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .param p1    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract configureZslParamForBurstCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V
    .param p1    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract configureZslParamForNormalCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V
    .param p1    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
