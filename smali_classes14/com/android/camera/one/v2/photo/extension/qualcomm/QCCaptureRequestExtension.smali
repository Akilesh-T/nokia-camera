.class public Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequestExtension;
.super Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
.source "QCCaptureRequestExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
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
    .line 101
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
    .line 121
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
    .line 202
    return-void
.end method

.method public appendParamForDCIRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    return-void
.end method

.method public appendParamForDCLowLightCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    return-void
.end method

.method public appendParamForDSCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 146
    return-void
.end method

.method public appendParamForDenoiseCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    return-void
.end method

.method public appendParamForHDRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    return-void
.end method

.method public appendParamForLowLightCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 0
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
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
    const-wide/16 v8, 0x0

    .line 151
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->enableManualShutterSpeedPreviewEffect()Z

    move-result v6

    if-nez v6, :cond_2

    .line 152
    invoke-virtual {p4}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualExpTimeSetting()Lcom/android/camera/async/Observable;

    move-result-object v2

    .line 153
    .local v2, "manualExpTimeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    invoke-virtual {p4}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualISOSetting()Lcom/android/camera/async/Observable;

    move-result-object v3

    .line 155
    .local v3, "manualISOSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    const/4 v0, 0x0

    .line 156
    .local v0, "isoExpSelectPriorityValue":Ljava/lang/Integer;
    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    sget-object v7, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v6, v7}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 157
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 161
    :cond_0
    :goto_0
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->IsoExpSelectPriority:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v6, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "isoExpValue":Ljava/lang/Long;
    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    sget-object v7, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v6, v7}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 165
    sget-object v7, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequestExtension$1;->$SwitchMap$com$android$camera$one$OneCamera$PhotoCaptureParameters$ISO:[I

    invoke-interface {v3}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v6}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 188
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 195
    :cond_1
    :goto_1
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->IsoExp:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v6, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 197
    .end local v0    # "isoExpSelectPriorityValue":Ljava/lang/Integer;
    .end local v1    # "isoExpValue":Ljava/lang/Long;
    .end local v2    # "manualExpTimeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    .end local v3    # "manualISOSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    :cond_2
    return-void

    .line 158
    .restart local v0    # "isoExpSelectPriorityValue":Ljava/lang/Integer;
    .restart local v2    # "manualExpTimeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    .restart local v3    # "manualISOSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    :cond_3
    invoke-interface {v3}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    sget-object v7, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v6, v7}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 167
    .restart local v1    # "isoExpValue":Ljava/lang/Long;
    :pswitch_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 168
    goto :goto_1

    .line 170
    :pswitch_1
    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 171
    goto :goto_1

    .line 173
    :pswitch_2
    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 174
    goto :goto_1

    .line 176
    :pswitch_3
    const-wide/16 v6, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 177
    goto :goto_1

    .line 179
    :pswitch_4
    const-wide/16 v6, 0x5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 180
    goto :goto_1

    .line 182
    :pswitch_5
    const-wide/16 v6, 0x6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 183
    goto :goto_1

    .line 185
    :pswitch_6
    const-wide/16 v6, 0x7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 186
    goto :goto_1

    .line 191
    :cond_4
    invoke-interface {v3}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    sget-object v7, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v6, v7}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 192
    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v6}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 193
    .local v4, "value":D
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
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
    .line 106
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
    .line 126
    return-void
.end method

.method public appendParamForPreview(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 9
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p2, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "requestTemplate"    # Lcom/android/camera/one/v2/core/RequestTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "slaveRequestTemplate"    # Lcom/android/camera/one/v2/core/RequestTemplate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p6, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 46
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isNeedSceneRecognition()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->SceneClassifyMode:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyModeSelector;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneDetectionSetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneClassifyModeSetting()Lcom/android/camera/async/Observable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p5}, Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyModeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 49
    :cond_0
    invoke-static {p5}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isNeedSceneUpdateIQParmeter(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneDetectionSetting()Lcom/android/camera/async/Observable;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->SceneClassifyOrientation:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyOrientationSelector;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneClassifyOrientationSetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneClassifyModeSetting()Lcom/android/camera/async/Observable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p5}, Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyOrientationSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 51
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->SATURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/qualcomm/QCSaturationSettingValue;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSaturationSetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/common/qualcomm/QCSaturationSettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 52
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->Contrast:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/qualcomm/QCContrastSettingValue;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getContrastSetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/common/qualcomm/QCContrastSettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 53
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->sharpness_control:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/qualcomm/QCSharpnessSettingValue;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSharpnessSetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/common/qualcomm/QCSharpnessSettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 54
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->AWBGains:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/ControlWBValuesSelector;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneWBSetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualWbValueSettings()Lcom/android/camera/async/Observable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/camera/one/v2/common/ControlWBValuesSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 56
    :cond_1
    invoke-static {p5}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 57
    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualExpTimeSetting()Lcom/android/camera/async/Observable;

    move-result-object v0

    .line 58
    .local v0, "manualExpTimeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualISOSetting()Lcom/android/camera/async/Observable;

    move-result-object v2

    .line 60
    .local v2, "manualISOSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->IsoExpSelectPriority:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/qualcomm/QCIsoExpPrioritySelector;

    invoke-direct {v4, v2, v0}, Lcom/android/camera/one/v2/common/qualcomm/QCIsoExpPrioritySelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 61
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->IsoExp:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/qualcomm/QCIsoExpSelector;

    invoke-direct {v4, v2, v0}, Lcom/android/camera/one/v2/common/qualcomm/QCIsoExpSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 87
    .end local v0    # "manualExpTimeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    .end local v2    # "manualISOSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->isMonoCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/camera/product_utils/ProductUtil;->DUALCAM_LINK_ENABLE:Z

    if-eqz v3, :cond_3

    .line 88
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 89
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 90
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 92
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 93
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 94
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 96
    :cond_3
    return-void

    .line 63
    :cond_4
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v3, p5, :cond_6

    .line 64
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_6

    .line 65
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v3

    sget-object v4, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v3, v4, :cond_6

    .line 68
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->generateMPOinHAL()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 69
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->BOKEH_LEVEL_SNAPDRAGON:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/BokehSettingValue;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBokehLevelSetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/common/BokehSettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 70
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 71
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->BOKEH_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 78
    :goto_1
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBokehBeauty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->BOKEH_BEAUTY_SWITCH:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/ControlBokehBeautySelector;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautySetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/common/ControlBokehBeautySelector;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    goto/16 :goto_0

    .line 75
    :cond_5
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->BOKEH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/BokehSettingValue;

    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBokehLevelSetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/common/BokehSettingValue;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    goto :goto_1

    .line 81
    :cond_6
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v3, p5, :cond_2

    .line 82
    invoke-virtual {p6}, Lcom/android/camera/one/OneCameraCaptureSetting;->getHdrSceneSetting()Lcom/android/camera/async/Observable;

    move-result-object v1

    .line 83
    .local v1, "manualHDRSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->DR_CHECKER_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Lcom/android/camera/one/v2/common/qualcomm/QCHDRStates;

    invoke-direct {v4, v1}, Lcom/android/camera/one/v2/common/qualcomm/QCHDRStates;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    goto/16 :goto_0
.end method

.method public configureVideoSnapshotForNormalCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 2
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 216
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 218
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
    .line 206
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public configureZslParamForNormalCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V
    .locals 2
    .param p1, "requestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enableZsl"    # Z

    .prologue
    .line 211
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 212
    return-void
.end method
