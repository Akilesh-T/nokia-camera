.class public Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;
.super Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
.source "MTKCaptureRequestExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTKCapReqExtension"

.field private static final VSDOF_KEY_VALUE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 28
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;->VSDOF_KEY_VALUE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
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
    .line 79
    return-void
.end method

.method public appendParamForBeautyCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 2
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
    .line 101
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "MTKCapReqExtension"

    const-string v1, "MTKCaptureRequestExtension->appendParamForBeautyCapture() append CONTROL_AE_MODE_ON_EXTERNAL_FLASH for front flash capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method public appendParamForBokehCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/BokehResultProvider;)V
    .locals 4
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p3, "bokehResultProvider"    # Lcom/android/camera/one/v2/photo/BokehResultProvider;

    .prologue
    .line 137
    invoke-interface {p3}, Lcom/android/camera/one/v2/photo/BokehResultProvider;->getBokehResult()I

    move-result v0

    .line 138
    .local v0, "result":I
    const-string v1, "MTKCapReqExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->MTK_VSDOF_FEATURE_CAPTURE_WARNING_MSG:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public appendParamForDCIRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    return-void
.end method

.method public appendParamForDCLowLightCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    return-void
.end method

.method public appendParamForDSCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    return-void
.end method

.method public appendParamForDenoiseCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    return-void
.end method

.method public appendParamForHDRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 2
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public appendParamForLowLightCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    return-void
.end method

.method public appendParamForManualCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 10
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
    .line 144
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->enableManualShutterSpeedPreviewEffect()Z

    move-result v4

    if-nez v4, :cond_1

    .line 145
    invoke-virtual {p4}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualExpTimeSetting()Lcom/android/camera/async/Observable;

    move-result-object v0

    .line 146
    .local v0, "manualExpTimeSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    invoke-virtual {p4}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualISOSetting()Lcom/android/camera/async/Observable;

    move-result-object v1

    .line 148
    .local v1, "manualISOSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    sget-object v5, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v4, v5}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    sget-object v5, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v4, v5}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_0

    invoke-interface {p2}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    const-string v4, "MTKCapReqExtension"

    const-string v5, "MTKCaptureRequestExtension->appendParamForManualCapture() append CONTROL_AE_MODE_ON_EXTERNAL_FLASH for front flash capture"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 153
    :cond_0
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 154
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 173
    .end local v0    # "manualExpTimeSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    .end local v1    # "manualISOSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    :cond_1
    :goto_0
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->PRO_CAPTURE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 174
    return-void

    .line 156
    .restart local v0    # "manualExpTimeSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    .restart local v1    # "manualISOSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    :cond_2
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    sget-object v5, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v4, v5}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    sget-object v5, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v4, v5}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 157
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 158
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 159
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v5, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_3
    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    sget-object v5, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v4, v5}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    sget-object v5, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v4, v5}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 161
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 162
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 163
    .local v2, "value":D
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v2

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 164
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 166
    .end local v2    # "value":D
    :cond_4
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 167
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 168
    .restart local v2    # "value":D
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v2

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 169
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v5, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public appendParamForNormalCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 2
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
    .line 83
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "MTKCapReqExtension"

    const-string v1, "MTKCaptureRequestExtension->appendParamForNormalCapture() append CONTROL_AE_MODE_ON_EXTERNAL_FLASH for front flash capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method public appendParamForPicSelfieCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 2
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
    .line 109
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "MTKCapReqExtension"

    const-string v1, "MTKCaptureRequestExtension->appendParamForPicSelfieCapture() append CONTROL_AE_MODE_ON_EXTERNAL_FLASH for front flash capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method public appendParamForPreview(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 7
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
    const/4 v6, 0x1

    .line 32
    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v2, p5, :cond_3

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v2

    sget-object v3, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v2, v3, :cond_3

    .line 33
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v3, :cond_2

    .line 34
    new-instance v0, Lcom/android/camera/one/v2/common/BokehSettingValue;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBokehLevelSetting()Lcom/android/camera/async/Observable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/one/v2/common/BokehSettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    .line 35
    .local v0, "bokehSettingValue":Lcom/android/camera/one/v2/common/BokehSettingValue;
    new-instance v1, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension$1;-><init>(Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;Lcom/android/camera/one/v2/common/BokehSettingValue;)V

    .line 42
    .local v1, "bokehSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<[I>;"
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->BOKEH_LEVEL_MTK:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Lcom/android/camera/one/v2/common/MTKBokehSettingValue;

    invoke-direct {v3, v1}, Lcom/android/camera/one/v2/common/MTKBokehSettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 43
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->VSDOF_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;->VSDOF_KEY_VALUE:[I

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 45
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBokehBeauty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "MTKCapReqExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " BeautyLevelvalue ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getmBeautyLevel()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v2, "MTKCapReqExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " BeautyLevelvalue ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getmBeautyLevel()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->BEAUTY_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getmBeautyLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 49
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->BEAUTY_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Lcom/android/camera/one/v2/common/BeautySettingValue;

    new-instance v4, Lcom/android/camera/one/v2/common/ControlBeautySelector;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautySetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/common/ControlBeautySelector;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-direct {v3, v4}, Lcom/android/camera/one/v2/common/BeautySettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 70
    .end local v0    # "bokehSettingValue":Lcom/android/camera/one/v2/common/BokehSettingValue;
    .end local v1    # "bokehSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<[I>;"
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->MANUAL:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v2, p5, :cond_1

    .line 71
    const-string v2, "MTKCapReqExtension"

    const-string v3, "into pro/manual mode preview settings"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->PRO_CAPTURE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 74
    :cond_1
    return-void

    .line 52
    :cond_2
    const-string v2, "MTKCapReqExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " BokehLevelvalue ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getmBokehLevel()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->TDC_BOKEH_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 54
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->BOKEH_LEVEL_MTK:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v3, v6, [I

    const/4 v4, 0x0

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getmBokehLevel()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 55
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->VSDOF_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;->VSDOF_KEY_VALUE:[I

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 57
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBokehBeauty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->BEAUTY_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Lcom/android/camera/one/v2/common/BeautySettingValue;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautyLevelSetting()Lcom/android/camera/async/Observable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/one/v2/common/BeautySettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 59
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->BEAUTY_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Lcom/android/camera/one/v2/common/BeautySettingValue;

    new-instance v4, Lcom/android/camera/one/v2/common/ControlBeautySelector;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautySetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/common/ControlBeautySelector;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-direct {v3, v4}, Lcom/android/camera/one/v2/common/BeautySettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    goto :goto_0

    .line 64
    :cond_3
    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v2, p5, :cond_0

    .line 65
    const-string v2, "MTKCapReqExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " BeautyLevelSetting ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautyLevelSetting()Lcom/android/camera/async/Observable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->BEAUTY_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Lcom/android/camera/one/v2/common/BeautySettingValue;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautyLevelSetting()Lcom/android/camera/async/Observable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/one/v2/common/BeautySettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 67
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->BEAUTY_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Lcom/android/camera/one/v2/common/BeautySettingValue;

    new-instance v4, Lcom/android/camera/one/v2/common/ControlBeautySelector;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautySetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/common/ControlBeautySelector;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-direct {v3, v4}, Lcom/android/camera/one/v2/common/BeautySettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    goto/16 :goto_0
.end method

.method public configureVideoSnapshotForNormalCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 196
    return-void
.end method

.method public configureZslParamForBurstCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V
    .locals 2
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enableZsl"    # Z

    .prologue
    .line 179
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 180
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 181
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
    .line 190
    return-void
.end method
