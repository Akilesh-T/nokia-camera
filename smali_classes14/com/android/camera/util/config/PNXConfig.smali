.class public Lcom/android/camera/util/config/PNXConfig;
.super Lcom/android/camera/util/config/ProductConfig;
.source "PNXConfig.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "productModel"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/camera/util/config/ProductConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static supportFloatTexture()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public enableManualShutterSpeedPreviewEffect()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public enableQuickSwitch()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public generateMPOinHAL()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultDisplaySize()Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0x438

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getDefaultVideoQualityLevel(Lcom/android/camera/one/OneCamera$Facing;)I
    .locals 1
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 69
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v0, :cond_0

    .line 70
    const v0, 0x7f080427

    .line 72
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080426

    goto :goto_0
.end method

.method public getLowLightVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "1.6"

    return-object v0
.end method

.method public getMinimunPictureSize()Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0xa20

    const/16 v2, 0x798

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getPictureSizeForBokeh(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    .locals 3
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 61
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0xfc0

    const/16 v2, 0xbd0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedSceneRecognition()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public isReqBokehBeauty()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public isReqZeissBokeh()Z
    .locals 3

    .prologue
    .line 94
    const-string v0, "1"

    const-string v1, "camera.zeiss.bokeh.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 2
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 21
    sget-object v0, Lcom/android/camera/util/config/PNXConfig$1;->$SwitchMap$com$android$camera$one$OneCamera$Facing:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$Facing;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 25
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 23
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public triggerFlashIfNeedWhenAF()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public useFakeQCFASolution()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
