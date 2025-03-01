.class public Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;
.super Ljava/lang/Object;
.source "DeviceRequestsHelper.java"


# static fields
.field static final DEVICE_INFO_DEVICE:Ljava/lang/String; = "device"

.field static final DEVICE_INFO_MODEL:Ljava/lang/String; = "model"

.field public static final DEVICE_INFO_PARAM:Ljava/lang/String; = "device_info"

.field public static final DEVICE_TARGET_USER_ID:Ljava/lang/String; = "target_user_id"

.field static final SDK_FLAVOR:Ljava/lang/String; = "android"

.field static final SDK_HEADER:Ljava/lang/String; = "fbsdk"

.field static final SERVICE_TYPE:Ljava/lang/String; = "_fb._tcp."

.field private static final TAG:Ljava/lang/String;

.field private static deviceRequestsListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/nsd/NsdManager$RegistrationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanUpAdvertisementService(Ljava/lang/String;)V
    .locals 0
    .param p0, "userCode"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementServiceImpl(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private static cleanUpAdvertisementServiceImpl(Ljava/lang/String;)V
    .locals 5
    .param p0, "userCode"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 206
    sget-object v3, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    .line 207
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 208
    .local v2, "nsdRegistrationListener":Landroid/net/nsd/NsdManager$RegistrationListener;
    if-eqz v2, :cond_0

    .line 210
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "servicediscovery"

    .line 211
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager;

    .line 214
    .local v1, "nsdManager":Landroid/net/nsd/NsdManager;
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    sget-object v3, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v1    # "nsdManager":Landroid/net/nsd/NsdManager;
    :cond_0
    return-void

    .line 215
    .restart local v1    # "nsdManager":Landroid/net/nsd/NsdManager;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static generateQRCode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v9, 0x0

    .line 104
    .local v9, "qrCode":Landroid/graphics/Bitmap;
    new-instance v8, Ljava/util/EnumMap;

    const-class v3, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v8, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 105
    .local v8, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :try_start_0
    new-instance v3, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v3}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v6, 0xc8

    const/16 v7, 0xc8

    move-object/from16 v4, p0

    .line 108
    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v19

    .line 110
    .local v19, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v16

    .line 111
    .local v16, "h":I
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    .line 112
    .local v12, "w":I
    mul-int v3, v16, v12

    new-array v10, v3, [I

    .line 114
    .local v10, "pixels":[I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 115
    mul-int v20, v17, v12

    .line 116
    .local v20, "offset":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v12, :cond_1

    .line 117
    add-int v4, v20, v18

    .line 118
    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, -0x1000000

    :goto_2
    aput v3, v10, v4

    .line 116
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 118
    :cond_0
    const/4 v3, -0x1

    goto :goto_2

    .line 114
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 122
    .end local v18    # "j":I
    .end local v20    # "offset":I
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v12, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 123
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v12

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v10    # "pixels":[I
    .end local v12    # "w":I
    .end local v16    # "h":I
    .end local v17    # "i":I
    .end local v19    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :goto_3
    return-object v9

    .line 125
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v0, "deviceInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 2

    .prologue
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 98
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getSmartLoginOptions()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/facebook/internal/SmartLoginOption;->Enabled:Lcom/facebook/internal/SmartLoginOption;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startAdvertisementService(Ljava/lang/String;)Z
    .locals 1
    .param p0, "userCode"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->startAdvertisementServiceImpl(Ljava/lang/String;)Z

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startAdvertisementServiceImpl(Ljava/lang/String;)Z
    .locals 13
    .param p0, "userCode"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 138
    sget-object v5, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    :goto_0
    return v10

    .line 143
    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x7c

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "sdkVersion":Ljava/lang/String;
    const-string v5, "%s_%s_%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "fbsdk"

    aput-object v7, v6, v11

    const-string v7, "%s-%s"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "android"

    aput-object v9, v8, v11

    aput-object v4, v8, v10

    .line 151
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object p0, v6, v12

    .line 146
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "nsdServiceName":Ljava/lang/String;
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 163
    .local v0, "nsdLoginAdvertisementService":Landroid/net/nsd/NsdServiceInfo;
    const-string v5, "_fb._tcp."

    invoke-virtual {v0, v5}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v3}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 165
    const/16 v5, 0x50

    invoke-virtual {v0, v5}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 168
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "servicediscovery"

    .line 169
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager;

    .line 171
    .local v1, "nsdManager":Landroid/net/nsd/NsdManager;
    new-instance v2, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;

    invoke-direct {v2, v3, p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v2, "nsdRegistrationListener":Landroid/net/nsd/NsdManager$RegistrationListener;
    sget-object v5, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v1, v0, v10, v2}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    goto :goto_0
.end method
