.class public Lcom/android/camera/util/config/ProductConfig;
.super Ljava/lang/Object;
.source "ProductConfig.java"


# static fields
.field private static final BOKEH_LOGIC_CAMERA:I = 0x3


# instance fields
.field public final IS_CN_MDOEL:Z

.field public final PRODUCR_MODEL:Ljava/lang/String;

.field public final PRODUCT_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "productModel"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/util/config/ProductConfig;->PRODUCT_NAME:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/android/camera/util/config/ProductConfig;->PRODUCR_MODEL:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/android/camera/util/config/ProductConfig;->PRODUCR_MODEL:Ljava/lang/String;

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/config/ProductConfig;->PRODUCR_MODEL:Ljava/lang/String;

    const-string v1, "10"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/config/ProductConfig;->PRODUCR_MODEL:Ljava/lang/String;

    const-string v1, "0S"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/config/ProductConfig;->PRODUCR_MODEL:Ljava/lang/String;

    const-string v1, "12"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/config/ProductConfig;->PRODUCR_MODEL:Ljava/lang/String;

    const-string v1, "13"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/config/ProductConfig;->PRODUCR_MODEL:Ljava/lang/String;

    const-string v1, "1B"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/config/ProductConfig;->PRODUCR_MODEL:Ljava/lang/String;

    const-string v1, "0A"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/config/ProductConfig;->PRODUCR_MODEL:Ljava/lang/String;

    const-string v1, "0C"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/util/config/ProductConfig;->IS_CN_MDOEL:Z

    .line 34
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportFloatTexture()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public enableManualShutterSpeedPreviewEffect()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public enableQuickSwitch()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public generateMPOinHAL()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public generateMTKBokehinHAL()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultDisplaySize()Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 125
    .local v1, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 126
    .local v0, "res":Landroid/graphics/Point;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 127
    new-instance v2, Lcom/android/camera/util/Size;

    invoke-direct {v2, v0}, Lcom/android/camera/util/Size;-><init>(Landroid/graphics/Point;)V

    return-object v2
.end method

.method public getDefaultVideoQualityLevel(Lcom/android/camera/one/OneCamera$Facing;)I
    .locals 1
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 163
    const v0, 0x7f080427

    return v0
.end method

.method public getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    return-object v0
.end method

.method public getFrontCameraDefalutMode(Landroid/content/Context;)I
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/util/config/ProductConfig;->IS_CN_MDOEL:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLogicCameraIdForCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
    .locals 2
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 115
    sget-object v0, Lcom/android/camera/util/config/ProductConfig$1;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 117
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v0

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getLowLightImageNum()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x5

    return v0
.end method

.method public getLowLightVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "1.2"

    return-object v0
.end method

.method public getMinimunPictureSize()Lcom/android/camera/util/Size;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getPictureSizeForBokeh(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolutionMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "dynamic"

    return-object v0
.end method

.method public getSRScale()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x2

    return v0
.end method

.method public is18x9RatioScreen()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public isAFRequiredForcely()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public isEffectAllow()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public isHAL3Enabled()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public isLiveBroadcastAllow()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/camera/util/config/ProductConfig;->isReqPIP()Z

    move-result v0

    return v0
.end method

.method public isManualModeAllow()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedSceneRecognition()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public isPicSelfUseArcsoftBeautyCapture()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isProModeUI()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public isReqBeauty()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public isReqBokehBeauty()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isReqBurst()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public isReqPIP()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public isReqSuperResolution()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public isReqZeissBokeh()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public isReqZoomViewAlwaysShow()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportWideAndUltraWideMode()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public isUseMorphoDRChecker()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public isUseMorphoHDR()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public isWaterMarkAllow()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public isZeissLogo(Z)Z
    .locals 1
    .param p1, "isFrontFacing"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomViewAllow()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public limitQueue()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public prepareSlowMotionSurface()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public showHintForMainBokehCap()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public skipAEConvergeForcely()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public supportFixedFpsForMotion()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public supportUpgradeFromHAL1()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public triggerFlashIfNeedWhenAF()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public useFakeQCFASolution()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public useHWRotation()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public useMax4x3PictureSizeForBokeh(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 155
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useRelativeSensorCoordinate()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public useVendorBeautyForPreview()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public useVendorBokehForPreview(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p1, "mCameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 216
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
