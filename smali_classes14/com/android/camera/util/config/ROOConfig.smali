.class public Lcom/android/camera/util/config/ROOConfig;
.super Lcom/android/camera/util/config/ProductConfig;
.source "ROOConfig.java"


# static fields
.field private static final BOKEH_LOGIC_CAMERA:I = 0x3


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "productModel"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/camera/util/config/ProductConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public enableManualShutterSpeedPreviewEffect()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public generateMPOinHAL()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public generateMTKBokehinHAL()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    return-object v0
.end method

.method public getLogicCameraIdForCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
    .locals 2
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 46
    sget-object v0, Lcom/android/camera/util/config/ROOConfig$1;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v0

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isAFRequiredForcely()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 3
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    const/4 v2, 0x1

    .line 69
    sget-object v0, Lcom/android/camera/util/config/ROOConfig$1;->$SwitchMap$com$android$camera$one$OneCamera$Facing:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$Facing;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    :pswitch_0
    return v2

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isEffectAllow()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public isPicSelfUseArcsoftBeautyCapture()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isProModeUI()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/camera/util/config/ROOConfig;->IS_CN_MDOEL:Z

    return v0
.end method

.method public isReqBeauty()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public isReqBokehBeauty()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public isReqPIP()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 2
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 92
    sget-object v0, Lcom/android/camera/util/config/ROOConfig$1;->$SwitchMap$com$android$camera$one$OneCamera$Facing:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$Facing;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 94
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isZeissLogo(Z)Z
    .locals 1
    .param p1, "isFrontFacing"    # Z

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public prepareSlowMotionSurface()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public showHintForMainBokehCap()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public skipAEConvergeForcely()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public supportFixedFpsForMotion()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public supportUpgradeFromHAL1()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public useHWRotation()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public useMax4x3PictureSizeForBokeh(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public useVendorBeautyForPreview()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public useVendorBokehForPreview(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p1, "mCameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method
