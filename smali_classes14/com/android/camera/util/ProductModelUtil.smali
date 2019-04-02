.class public Lcom/android/camera/util/ProductModelUtil;
.super Ljava/lang/Object;
.source "ProductModelUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/ProductModelUtil$DualCamType;
    }
.end annotation


# static fields
.field public static final CurrentDevice:Lcom/android/camera/util/product/MobileDevice$Devices;

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final mProductConfig:Lcom/android/camera/util/config/ProductConfig;

.field private static sOpticalConfiguration:Lcom/android/camera/util/FihOpticalConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ProductModelUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/ProductModelUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/util/ProductModelUtil;->sOpticalConfiguration:Lcom/android/camera/util/FihOpticalConfiguration;

    .line 39
    sget-object v0, Lcom/android/camera/util/product/MobileDevice;->CurrentDevice:Lcom/android/camera/util/product/MobileDevice$Devices;

    sput-object v0, Lcom/android/camera/util/ProductModelUtil;->CurrentDevice:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 60
    invoke-static {}, Lcom/android/camera/util/config/ProductConfigCreator;->create()Lcom/android/camera/util/config/ProductConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableManualShutterSpeedPreviewEffect()Z
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->enableManualShutterSpeedPreviewEffect()Z

    move-result v0

    return v0
.end method

.method public static enableQuickSwitch()Z
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->enableQuickSwitch()Z

    move-result v0

    return v0
.end method

.method public static generateMPOinHAL()Z
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->generateMPOinHAL()Z

    move-result v0

    return v0
.end method

.method public static generateMTKBokehinHAL()Z
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->generateMTKBokehinHAL()Z

    move-result v0

    return v0
.end method

.method public static getAlignmentHeight()D
    .locals 4

    .prologue
    .line 375
    const-wide/high16 v0, 0x4050000000000000L    # 64.0

    .line 376
    .local v0, "alignment":D
    sget-object v2, Lcom/android/camera/util/ProductModelUtil$1;->$SwitchMap$com$android$camera$util$product$MobileDevice$Devices:[I

    sget-object v3, Lcom/android/camera/util/ProductModelUtil;->CurrentDevice:Lcom/android/camera/util/product/MobileDevice$Devices;

    invoke-virtual {v3}, Lcom/android/camera/util/product/MobileDevice$Devices;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 385
    :goto_0
    return-wide v0

    .line 382
    :pswitch_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAlignmentWidth()D
    .locals 4

    .prologue
    .line 365
    const-wide/high16 v0, 0x4050000000000000L    # 64.0

    .line 366
    .local v0, "alignment":D
    sget-object v2, Lcom/android/camera/util/ProductModelUtil$1;->$SwitchMap$com$android$camera$util$product$MobileDevice$Devices:[I

    sget-object v3, Lcom/android/camera/util/ProductModelUtil;->CurrentDevice:Lcom/android/camera/util/product/MobileDevice$Devices;

    invoke-virtual {v3}, Lcom/android/camera/util/product/MobileDevice$Devices;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 371
    :goto_0
    return-wide v0

    .line 368
    :pswitch_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBrandLogo(Z)I
    .locals 3
    .param p0, "isFrontFacing"    # Z

    .prologue
    .line 129
    const-string v1, "ro.product.nickname"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "nickName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/camera/util/ProductModelUtil;->getBrandLogo(ZLjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getBrandLogo(ZLjava/lang/String;)I
    .locals 2
    .param p0, "isFrontFacing"    # Z
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nokia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    const v0, 0x7f020085

    .line 124
    :goto_0
    return v0

    .line 121
    :cond_1
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/config/ProductConfig;->isZeissLogo(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const v0, 0x7f02029b

    goto :goto_0

    .line 124
    :cond_2
    const v0, 0x7f02029a

    goto :goto_0
.end method

.method public static getDefaultDisplaySize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->getDefaultDisplaySize()Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultVideoQualityLevel(Lcom/android/camera/one/OneCamera$Facing;)I
    .locals 1
    .param p0, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 343
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/config/ProductConfig;->getDefaultVideoQualityLevel(Lcom/android/camera/one/OneCamera$Facing;)I

    move-result v0

    return v0
.end method

.method public static getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraVideoQualityMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x2718

    .line 134
    sget-object v2, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v2}, Lcom/android/camera/util/config/ProductConfig;->is18x9RatioScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 136
    .local v0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {v3}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "2160x1080"

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 143
    .end local v0    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getExtraVideoQualityNameMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    sget-object v1, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v1}, Lcom/android/camera/util/config/ProductConfig;->is18x9RatioScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 149
    .local v0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0x2718

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f080424

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .end local v0    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFrontCameraDefalutMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 95
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/config/ProductConfig;->getFrontCameraDefalutMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getLogicCameraIdForCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 203
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/config/ProductConfig;->getLogicCameraIdForCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public static getLowLightImageNum()I
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->getLowLightImageNum()I

    move-result v0

    return v0
.end method

.method public static getLowLightVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->getLowLightVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMinimunPictureSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->getMinimunPictureSize()Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static getOpticalConfiguration()Lcom/android/camera/util/FihOpticalConfiguration;
    .locals 3

    .prologue
    .line 219
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->sOpticalConfiguration:Lcom/android/camera/util/FihOpticalConfiguration;

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/android/camera/util/MorphoUtil;->getFOC()Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/ProductModelUtil;->sOpticalConfiguration:Lcom/android/camera/util/FihOpticalConfiguration;

    .line 223
    :cond_0
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->sOpticalConfiguration:Lcom/android/camera/util/FihOpticalConfiguration;

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FOC version ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/util/ProductModelUtil;->sOpticalConfiguration:Lcom/android/camera/util/FihOpticalConfiguration;

    invoke-virtual {v2}, Lcom/android/camera/util/FihOpticalConfiguration;->getOptical_config_version()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    :cond_1
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->sOpticalConfiguration:Lcom/android/camera/util/FihOpticalConfiguration;

    return-object v0
.end method

.method public static getPictureSizeForBokeh(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 339
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/config/ProductConfig;->getPictureSizeForBokeh(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static getResolutionMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->getResolutionMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSRScale()I
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->getSRScale()I

    move-result v0

    return v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 349
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 350
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .line 351
    .local v5, "x":I
    const/4 v4, 0x0

    .line 353
    .local v4, "sbar":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 355
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 361
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return v4

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/camera/util/ProductModelUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStatusBarHeight error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hasNotchFeature(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "ret":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    move v1, v0

    .line 183
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 180
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "cust.display.notch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 183
    .restart local v1    # "ret":I
    goto :goto_0

    .line 181
    .end local v1    # "ret":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static is18x9Layout()Z
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->is18x9RatioScreen()Z

    move-result v0

    return v0
.end method

.method public static isAFRequiredForcely()Z
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isAFRequiredForcely()Z

    move-result v0

    return v0
.end method

.method public static isAOPProject()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public static isAlignedYUVImageSource()Z
    .locals 4

    .prologue
    .line 230
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getAlignmentWidth()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAllowZoomView()Z
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isZoomViewAllow()Z

    move-result v0

    return v0
.end method

.method public static isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p0, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 191
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/config/ProductConfig;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    return v0
.end method

.method public static isCNModel()Z
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    iget-boolean v0, v0, Lcom/android/camera/util/config/ProductConfig;->IS_CN_MDOEL:Z

    return v0
.end method

.method public static isCustomShutterSound()Z
    .locals 4

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "isCustom":Z
    const-string v2, "ro.camera.shuttersound.skuid"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "skuid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    const-string v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 166
    :cond_0
    return v0
.end method

.method public static isGMSAvailable()Z
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    iget-boolean v0, v0, Lcom/android/camera/util/config/ProductConfig;->IS_CN_MDOEL:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHAL3Enabled()Z
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isHAL3Enabled()Z

    move-result v0

    return v0
.end method

.method public static isLargeScreen(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    const-class v5, Landroid/view/WindowManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 281
    .local v4, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 282
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 283
    .local v3, "outPoint":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 285
    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    if-le v5, v6, :cond_0

    .line 286
    iget v1, v3, Landroid/graphics/Point;->y:I

    .line 287
    .local v1, "mRealSizeHeight":I
    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 293
    .local v2, "mRealSizeWidth":I
    :goto_0
    div-int v5, v1, v2

    int-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_1

    .line 294
    const/4 v5, 0x1

    .line 296
    :goto_1
    return v5

    .line 289
    .end local v1    # "mRealSizeHeight":I
    .end local v2    # "mRealSizeWidth":I
    :cond_0
    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 290
    .restart local v1    # "mRealSizeHeight":I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .restart local v2    # "mRealSizeWidth":I
    goto :goto_0

    .line 296
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isNeedCheckNetwork()Z
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    iget-boolean v0, v0, Lcom/android/camera/util/config/ProductConfig;->IS_CN_MDOEL:Z

    return v0
.end method

.method public static isNeedSceneRecognition()Z
    .locals 2

    .prologue
    .line 389
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isNeedSceneRecognition()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    iget-boolean v0, v0, Lcom/android/camera/util/config/ProductConfig;->IS_CN_MDOEL:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPicSelfUseArcsoftBeautyCapture()Z
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isPicSelfUseArcsoftBeautyCapture()Z

    move-result v0

    return v0
.end method

.method public static isReqBarCode()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public static isReqBeauty()Z
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isReqBeauty()Z

    move-result v0

    return v0
.end method

.method public static isReqBokehBeauty()Z
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isReqBokehBeauty()Z

    move-result v0

    return v0
.end method

.method public static isReqBurst()Z
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isReqBurst()Z

    move-result v0

    return v0
.end method

.method public static isReqCNLiveBroadcast()Z
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    iget-boolean v0, v0, Lcom/android/camera/util/config/ProductConfig;->IS_CN_MDOEL:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isLiveBroadcastAllow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReqEffect()Z
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isEffectAllow()Z

    move-result v0

    return v0
.end method

.method public static isReqManualMode()Z
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isManualModeAllow()Z

    move-result v0

    return v0
.end method

.method public static isReqMicroVideo()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public static isReqPIP()Z
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isReqPIP()Z

    move-result v0

    return v0
.end method

.method public static isReqProModeUI()Z
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isProModeUI()Z

    move-result v0

    return v0
.end method

.method public static isReqSuperResolution()Z
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isReqSuperResolution()Z

    move-result v0

    return v0
.end method

.method public static isReqWWLiveBroadcast()Z
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    iget-boolean v0, v0, Lcom/android/camera/util/config/ProductConfig;->IS_CN_MDOEL:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isLiveBroadcastAllow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReqZeissBokeh()Z
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isReqZeissBokeh()Z

    move-result v0

    return v0
.end method

.method public static isReqZoomViewAlwaysShow()Z
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isReqZoomViewAlwaysShow()Z

    move-result v0

    return v0
.end method

.method public static isSelfieBokehCaptureUsingImageLabSolution()Z
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->IS_USE_PSMODEL:Z

    return v0
.end method

.method public static isSelfieBokehPreviewUsingImageLabSolution()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public static isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p0, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 195
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/config/ProductConfig;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    return v0
.end method

.method public static isSupportWideAndUltraWideMode()Z
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isSupportWideAndUltraWideMode()Z

    move-result v0

    return v0
.end method

.method public static isUseFihUndistortion()Z
    .locals 1

    .prologue
    .line 454
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->IS_USE_FIHUNDISTORTION:Z

    return v0
.end method

.method public static isUseMorphoDRChecker()Z
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isUseMorphoDRChecker()Z

    move-result v0

    return v0
.end method

.method public static isUseMorphoHDR()Z
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isUseMorphoHDR()Z

    move-result v0

    return v0
.end method

.method public static isWaterMarkAvailable()Z
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->isWaterMarkAllow()Z

    move-result v0

    return v0
.end method

.method public static limitQueue()Z
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->limitQueue()Z

    move-result v0

    return v0
.end method

.method public static prepareSlowMotionSurface()Z
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->prepareSlowMotionSurface()Z

    move-result v0

    return v0
.end method

.method public static rotationOfYUVImageSource()I
    .locals 1

    .prologue
    .line 240
    const/16 v0, 0x5a

    return v0
.end method

.method public static settingNotchEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notch_full_bezel"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static showHDRButton()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public static showHintForMainBokehCap()Z
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->showHintForMainBokehCap()Z

    move-result v0

    return v0
.end method

.method public static skipAEConvergeForcely()Z
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->skipAEConvergeForcely()Z

    move-result v0

    return v0
.end method

.method public static supportFixedFpsForMotion()Z
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->supportFixedFpsForMotion()Z

    move-result v0

    return v0
.end method

.method public static supportFloatTexture()Z
    .locals 1

    .prologue
    .line 402
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-static {}, Lcom/android/camera/util/config/ProductConfig;->supportFloatTexture()Z

    move-result v0

    return v0
.end method

.method public static supportUpgradeFromHAL1()Z
    .locals 1

    .prologue
    .line 451
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->supportUpgradeFromHAL1()Z

    move-result v0

    return v0
.end method

.method public static triggerFlashIfNeedWhenAF()Z
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->triggerFlashIfNeedWhenAF()Z

    move-result v0

    return v0
.end method

.method public static useFakeQCFASolution()Z
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->useFakeQCFASolution()Z

    move-result v0

    return v0
.end method

.method public static useHWRotation()Z
    .locals 1

    .prologue
    .line 458
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->useHWRotation()Z

    move-result v0

    return v0
.end method

.method public static useMax4x3PictureSizeForBokeh(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p0, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 335
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/config/ProductConfig;->useMax4x3PictureSizeForBokeh(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    return v0
.end method

.method public static useRelativeSensorCoordinate()Z
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->useRelativeSensorCoordinate()Z

    move-result v0

    return v0
.end method

.method public static useVendorBeautyForPreview()Z
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0}, Lcom/android/camera/util/config/ProductConfig;->useVendorBeautyForPreview()Z

    move-result v0

    return v0
.end method

.method public static useVendorBokehForPreview(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p0, "mCameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 437
    sget-object v0, Lcom/android/camera/util/ProductModelUtil;->mProductConfig:Lcom/android/camera/util/config/ProductConfig;

    invoke-virtual {v0, p0}, Lcom/android/camera/util/config/ProductConfig;->useVendorBokehForPreview(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    return v0
.end method
