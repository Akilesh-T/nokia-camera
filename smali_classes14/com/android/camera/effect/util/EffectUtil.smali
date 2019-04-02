.class public Lcom/android/camera/effect/util/EffectUtil;
.super Ljava/lang/Object;
.source "EffectUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 493
    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 494
    .local v0, "aryPassword":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 495
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x2

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public static Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 484
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 485
    .local v0, "aryRegID":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 486
    aget-byte v2, v0, v1

    shr-int/lit8 v2, v2, 0x2

    aget-byte v3, v0, v1

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    :cond_0
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static calCurrentValueIsWhichEffect(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    const-string v0, "none"

    .line 281
    .local v0, "currentValue":Ljava/lang/String;
    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 434
    if-nez p0, :cond_1

    .line 435
    const/4 v3, 0x0

    .line 480
    :cond_0
    :goto_0
    return-object v3

    .line 438
    :cond_1
    const-string v3, ""

    .line 440
    .local v3, "strNetworkType":Ljava/lang/String;
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 441
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 443
    const-string v3, "WIFI"

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 446
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "_strSubTypeName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 450
    .local v2, "networkType":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 456
    :pswitch_0
    const-string v3, "2G"

    .line 457
    goto :goto_0

    .line 467
    :pswitch_1
    const-string v3, "3G"

    .line 468
    goto :goto_0

    .line 470
    :pswitch_2
    const-string v3, "4G"

    .line 471
    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingEffectKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "effectCategory"    # I

    .prologue
    .line 307
    invoke-static {p1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getStringFromValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/effect/util/EffectUtil;->getSettingEffectKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingEffectKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "effectKey"    # Ljava/lang/String;

    .prologue
    .line 313
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 314
    :cond_0
    if-nez p0, :cond_1

    .line 315
    const-string v2, "EffectUtil"

    const-string v3, "context == null"

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_1
    if-nez p1, :cond_2

    .line 318
    const-string v2, "EffectUtil"

    const-string v3, "effectKey == null"

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_2
    const/4 v0, 0x0

    .line 339
    :goto_0
    return-object v0

    .line 323
    :cond_3
    const/4 v0, 0x0

    .line 324
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 325
    .local v1, "resources":Landroid/content/res/Resources;
    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 326
    const-string v0, "pref_camera_sticker_key"

    .line 338
    :cond_4
    :goto_1
    const-string v2, "EffectUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSettingEffectKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_5
    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 328
    const-string v0, "pref_camera_animoji_key"

    goto :goto_1

    .line 329
    :cond_6
    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_LIGHTING:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 330
    const-string v0, "pref_camera_portrait_key"

    goto :goto_1

    .line 331
    :cond_7
    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 332
    const-string v0, "pref_camera_theme_key"

    goto :goto_1
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 408
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 410
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    :goto_0
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 415
    .local v3, "version":I
    return v3

    .line 411
    .end local v3    # "version":I
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 420
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 422
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 426
    :goto_0
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v3

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    if-nez p0, :cond_0

    .line 541
    const/4 v0, 0x0

    .line 544
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isAvailable()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-static {}, Lcom/android/camera/effect/util/EffectUtil;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    if-eqz p1, :cond_0

    .line 294
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGLRecording(Lcom/android/camera/pip/opengl/GLRenderer;)Z
    .locals 2
    .param p0, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-static {}, Lcom/android/camera/effect/util/EffectUtil;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    if-nez p0, :cond_0

    goto :goto_0
.end method

.method public static isStyleTransfer(Lcom/android/camera/effect/util/EngineStyleInfo;)Z
    .locals 1
    .param p0, "styleInfo"    # Lcom/android/camera/effect/util/EngineStyleInfo;

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public static produceUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    const/4 v2, 0x0

    .line 387
    .local v2, "serial":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "35"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 388
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 389
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 390
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 391
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 392
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 393
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 394
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "m_szDevIDShort":Ljava/lang/String;
    :try_start_0
    const-class v3, Landroid/os/Build;

    const-string v4, "SERIAL"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 402
    :goto_0
    return-object v3

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "serial"

    .line 402
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static resetEffectValueToDefault(Lcom/android/camera/settings/SettingsManager;)V
    .locals 2
    .param p0, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 245
    invoke-static {}, Lcom/android/camera/effect/util/EffectUtil;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    if-eqz p0, :cond_0

    .line 248
    const-string v0, "default_scope"

    const-string v1, "pref_camera_animoji_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "default_scope"

    const-string v1, "pref_camera_portrait_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "default_scope"

    const-string v1, "pref_camera_sticker_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static resetOtherEffectValueToDefault(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p1, "effectKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {}, Lcom/android/camera/effect/util/EffectUtil;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    if-nez p0, :cond_0

    goto :goto_0
.end method

.method public static updateAnimoji(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/pip/opengl/GLRenderer;Lcom/android/camera/app/AppController;Lcom/android/camera/effect/util/EngineStyleInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;
    .param p3, "appController"    # Lcom/android/camera/app/AppController;
    .param p4, "engineStyleInfo"    # Lcom/android/camera/effect/util/EngineStyleInfo;

    .prologue
    .line 95
    invoke-static {}, Lcom/android/camera/effect/util/EffectUtil;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v3, "default_scope"

    const-string v4, "pref_beauty"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "currentBeauty":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default_scope"

    const-string v5, "pref_beauty_level_key"

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "currentValue_Level":Ljava/lang/String;
    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    const-string v3, "default_scope"

    const-string v4, "pref_beauty_level_key"

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08035f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_2
    const-string v3, "default_scope"

    const-string v4, "pref_camera_animoji_key"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080362

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public static updateBeauty(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/pip/opengl/GLRenderer;Lcom/android/camera/app/AppController;Lcom/android/camera/effect/util/EngineStyleInfo;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;
    .param p3, "appController"    # Lcom/android/camera/app/AppController;
    .param p4, "engineStyleInfo"    # Lcom/android/camera/effect/util/EngineStyleInfo;

    .prologue
    .line 218
    invoke-static {}, Lcom/android/camera/effect/util/EffectUtil;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v2, "default_scope"

    const-string v3, "pref_beauty"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "currentValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_scope"

    const-string v4, "pref_beauty_level_key"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "currentValue_Level":Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const-string v2, "default_scope"

    const-string v3, "pref_beauty_level_key"

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08035f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static updateBeautyBeforeAddSettingManagerListener(Lcom/android/camera/pip/opengl/GLRenderer;Lcom/android/camera/app/AppController;Lcom/android/camera/effect/util/EngineStyleInfo;Z)V
    .locals 0
    .param p0, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "engineStyleInfo"    # Lcom/android/camera/effect/util/EngineStyleInfo;
    .param p3, "isBeautyOn"    # Z

    .prologue
    .line 537
    return-void
.end method

.method public static updateEffectBeforeAddSettingManagerListener(Lcom/android/camera/pip/opengl/GLRenderer;Lcom/android/camera/app/AppController;Lcom/android/camera/effect/util/EngineStyleInfo;)V
    .locals 0
    .param p0, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "engineStyleInfo"    # Lcom/android/camera/effect/util/EngineStyleInfo;

    .prologue
    .line 528
    return-void
.end method

.method public static updatePortraitLigthen(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/pip/opengl/GLRenderer;Lcom/android/camera/app/AppController;Lcom/android/camera/effect/util/EngineStyleInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;
    .param p3, "appController"    # Lcom/android/camera/app/AppController;
    .param p4, "engineStyleInfo"    # Lcom/android/camera/effect/util/EngineStyleInfo;

    .prologue
    .line 140
    invoke-static {}, Lcom/android/camera/effect/util/EffectUtil;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v3, "default_scope"

    const-string v4, "pref_beauty"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "currentBeauty":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default_scope"

    const-string v5, "pref_beauty_level_key"

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "currentValue_Level":Ljava/lang/String;
    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    const-string v3, "default_scope"

    const-string v4, "pref_beauty_level_key"

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08035f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    :cond_2
    const-string v3, "default_scope"

    const-string v4, "pref_camera_portrait_key"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public static updateSticker(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/pip/opengl/GLRenderer;Lcom/android/camera/app/AppController;Lcom/android/camera/effect/util/EngineStyleInfo;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;
    .param p3, "appController"    # Lcom/android/camera/app/AppController;
    .param p4, "engineStyleInfo"    # Lcom/android/camera/effect/util/EngineStyleInfo;

    .prologue
    .line 91
    return-void
.end method

.method public static updateStyleTransfer(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/pip/opengl/GLRenderer;Lcom/android/camera/app/AppController;Lcom/android/camera/effect/util/EngineStyleInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;
    .param p3, "appController"    # Lcom/android/camera/app/AppController;
    .param p4, "engineStyleInfo"    # Lcom/android/camera/effect/util/EngineStyleInfo;

    .prologue
    .line 344
    invoke-static {}, Lcom/android/camera/effect/util/EffectUtil;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    :cond_0
    return-void
.end method

.method public static updateTheme(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/pip/opengl/GLRenderer;Lcom/android/camera/app/AppController;Lcom/android/camera/effect/util/EngineStyleInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;
    .param p3, "appController"    # Lcom/android/camera/app/AppController;
    .param p4, "engineStyleInfo"    # Lcom/android/camera/effect/util/EngineStyleInfo;

    .prologue
    .line 188
    invoke-static {}, Lcom/android/camera/effect/util/EffectUtil;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :cond_0
    return-void
.end method

.method public static usePostProcessingCapture(Lcom/android/camera/effect/util/EngineStyleInfo;)Z
    .locals 1
    .param p0, "styleInfo"    # Lcom/android/camera/effect/util/EngineStyleInfo;

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public static usePreviewAsCapture(Lcom/android/camera/effect/util/EngineStyleInfo;Z)Z
    .locals 1
    .param p0, "styleInfo"    # Lcom/android/camera/effect/util/EngineStyleInfo;
    .param p1, "isPhotoModule"    # Z

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method
