.class public Lcom/android/camera/ManualDataUtil;
.super Ljava/lang/Object;
.source "ManualDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ManualDataUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ManualDataUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndFilterAwbItems(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;Z)Ljava/util/ArrayList;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "isProMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v20, "whiteBalanceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 43
    .local v16, "key":[Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 44
    .local v18, "value":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    const v1, 0x7f0d0061

    :goto_1
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v13

    .line 45
    .local v13, "icons":[I
    const v1, 0x7f0d005f

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v17

    .line 46
    .local v17, "mainIcons":[I
    const v1, 0x7f0d0059

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v10

    .line 47
    .local v10, "circleIcons":[I
    const v1, 0x7f0d005d

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v14

    .line 48
    .local v14, "indicatorIcons":[I
    const v1, 0x7f0d005e

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v15

    .line 50
    .local v15, "indicatorPressedIcons":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v12, v1, :cond_3

    .line 51
    aget-object v1, v16, v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0803d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v2, v16, v12

    aget-object v3, v18, v12

    aget v4, v13, v12

    aget v5, v17, v12

    aget v6, v10, v12

    aget v7, v14, v12

    aget v8, v15, v12

    sget-object v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 43
    .end local v10    # "circleIcons":[I
    .end local v12    # "i":I
    .end local v13    # "icons":[I
    .end local v14    # "indicatorIcons":[I
    .end local v15    # "indicatorPressedIcons":[I
    .end local v17    # "mainIcons":[I
    .end local v18    # "value":[Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 44
    .restart local v18    # "value":[Ljava/lang/String;
    :cond_1
    const v1, 0x7f0d005c

    goto :goto_1

    .line 56
    .restart local v10    # "circleIcons":[I
    .restart local v12    # "i":I
    .restart local v13    # "icons":[I
    .restart local v14    # "indicatorIcons":[I
    .restart local v15    # "indicatorPressedIcons":[I
    .restart local v17    # "mainIcons":[I
    :cond_2
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v2, v16, v12

    aget-object v3, v18, v12

    aget v4, v13, v12

    aget v5, v17, v12

    aget v6, v10, v12

    aget v7, v14, v12

    aget v8, v15, v12

    sget-object v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->ICON:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 62
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    :goto_4
    if-ltz v12, :cond_5

    .line 63
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v1}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v19

    .line 65
    .local v19, "whiteBalanceKey":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v19 .. v19}, Lcom/android/camera/ManualDataUtil;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 66
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_4
    :goto_5
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 68
    :catch_0
    move-exception v11

    .line 69
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 74
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .end local v19    # "whiteBalanceKey":Ljava/lang/String;
    :cond_5
    return-object v20
.end method

.method public static getAutoExposureMetering(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v3, "meterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "key":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "value":[Ljava/lang/String;
    const v5, 0x7f0d0042

    invoke-static {p0, v5}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v1

    .line 367
    .local v1, "icons":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 368
    new-instance v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v6, v2, v0

    aget-object v7, v4, v0

    aget v8, v1, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    return-object v3
.end method

.method public static getAutoExposureMetering(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, "meterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "key":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "value":[Ljava/lang/String;
    const v5, 0x7f0d0042

    invoke-static {p0, v5}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v1

    .line 145
    .local v1, "icons":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 146
    new-instance v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v6, v2, v0

    aget-object v7, v4, v0

    aget v8, v1, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-object v3
.end method

.method public static getAutoExposureTimeItems(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/ArrayList;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxSensorExposureTime()J

    move-result-wide v18

    .line 438
    .local v18, "max":J
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinSensorExposureTime()J

    move-result-wide v20

    .line 439
    .local v20, "min":J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v11, "exposureTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 441
    .local v15, "key":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 442
    .local v17, "value":[Ljava/lang/String;
    const v2, 0x7f0d0048

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v16

    .line 443
    .local v16, "maniIcons":[I
    const v2, 0x7f0d0043

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v10

    .line 444
    .local v10, "circleIcons":[I
    const v2, 0x7f0d0046

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v13

    .line 445
    .local v13, "indicatorIcons":[I
    const v2, 0x7f0d0047

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v14

    .line 446
    .local v14, "indicatorPressedIcons":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v2, v15

    if-ge v12, v2, :cond_2

    .line 447
    aget-object v2, v15, v12

    const v3, 0x7f080404

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    aget-object v2, v15, v12

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v0, v2

    move-wide/from16 v22, v0

    .line 449
    .local v22, "target":J
    cmp-long v2, v22, v18

    if-gtz v2, :cond_0

    cmp-long v2, v22, v20

    if-ltz v2, :cond_0

    .line 450
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v3, v15, v12

    aget-object v4, v17, v12

    const/4 v5, 0x0

    aget v6, v16, v12

    aget v7, v10, v12

    aget v8, v13, v12

    aget v9, v14, v12

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v22    # "target":J
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 453
    :cond_1
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v3, v15, v12

    aget-object v4, v17, v12

    const/4 v5, 0x0

    aget v6, v16, v12

    aget v7, v10, v12

    aget v8, v13, v12

    aget v9, v14, v12

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 457
    :cond_2
    return-object v11
.end method

.method public static getAutoExposureTimeItems(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;)Ljava/util/ArrayList;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxManualExposureTime()D

    move-result-wide v18

    .line 237
    .local v18, "max":D
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinManualExposureTime()D

    move-result-wide v20

    .line 238
    .local v20, "min":D
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v11, "exposureTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 240
    .local v15, "key":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 241
    .local v17, "value":[Ljava/lang/String;
    const v2, 0x7f0d0048

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v16

    .line 242
    .local v16, "maniIcons":[I
    const v2, 0x7f0d0043

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v10

    .line 243
    .local v10, "circleIcons":[I
    const v2, 0x7f0d0046

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v13

    .line 244
    .local v13, "indicatorIcons":[I
    const v2, 0x7f0d0047

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v14

    .line 245
    .local v14, "indicatorPressedIcons":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v2, v15

    if-ge v12, v2, :cond_2

    .line 246
    aget-object v2, v15, v12

    const v3, 0x7f080404

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    aget-object v2, v15, v12

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v22, v2, v4

    .line 248
    .local v22, "target":D
    cmpg-double v2, v22, v18

    if-gtz v2, :cond_0

    cmpl-double v2, v22, v20

    if-ltz v2, :cond_0

    .line 249
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v17, v12

    const/4 v5, 0x0

    aget v6, v16, v12

    aget v7, v10, v12

    aget v8, v13, v12

    aget v9, v14, v12

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v22    # "target":D
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 252
    :cond_1
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v3, v15, v12

    aget-object v4, v17, v12

    const/4 v5, 0x0

    aget v6, v16, v12

    aget v7, v10, v12

    aget v8, v13, v12

    aget v9, v14, v12

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    :cond_2
    return-object v11
.end method

.method public static getBokehModeItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v10, "exposureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    const v1, 0x7f0d00e8

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v12

    .line 126
    .local v12, "icons":[I
    const v1, 0x7f0d00e8

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v15

    .line 127
    .local v15, "maniIcons":[I
    const v1, 0x7f0d00e8

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v9

    .line 128
    .local v9, "circleIcons":[I
    const v1, 0x7f0d00e8

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v13

    .line 129
    .local v13, "indicatorIcons":[I
    const v1, 0x7f0d00e8

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v14

    .line 130
    .local v14, "indicatorPressedIcons":[I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 131
    .local v16, "values":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v1, v12

    if-ge v11, v1, :cond_0

    .line 132
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v2, v16, v11

    const-string v3, ""

    aget v4, v12, v11

    aget v5, v15, v11

    aget v6, v9, v11

    aget v7, v13, v11

    aget v8, v14, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    .line 133
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-object v10
.end method

.method public static getExposureCompensationItems(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/ArrayList;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxExposureCompensation()I

    move-result v22

    .line 375
    .local v22, "max":I
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinExposureCompensation()I

    move-result v24

    .line 376
    .local v24, "min":I
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getExposureCompensationStep()F

    move-result v27

    .line 378
    .local v27, "step":F
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v14, "exposureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    move/from16 v0, v22

    int-to-float v2, v0

    mul-float v2, v2, v27

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v23, v0

    .line 381
    .local v23, "maxValue":I
    move/from16 v0, v24

    int-to-float v2, v0

    mul-float v2, v2, v27

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v25, v0

    .line 382
    .local v25, "minValue":I
    sub-int v2, v23, v25

    add-int/lit8 v2, v2, 0x1

    new-array v12, v2, [Ljava/lang/CharSequence;

    .line 383
    .local v12, "entries":[Ljava/lang/CharSequence;
    sub-int v2, v23, v25

    add-int/lit8 v2, v2, 0x1

    new-array v13, v2, [Ljava/lang/CharSequence;

    .line 384
    .local v13, "entryValues":[Ljava/lang/CharSequence;
    move/from16 v15, v25

    .local v15, "i":I
    :goto_0
    move/from16 v0, v23

    if-gt v15, v0, :cond_1

    .line 385
    add-int v2, v23, v15

    int-to-float v5, v15

    div-float v5, v5, v27

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v2

    .line 386
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v10, "builder":Ljava/lang/StringBuilder;
    if-lez v15, :cond_0

    const/16 v2, 0x2b

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    :cond_0
    add-int v2, v23, v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v2

    .line 384
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 391
    .end local v10    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v26, 0x4

    .line 392
    .local v26, "requireStep":I
    const v2, 0x7f0d004a

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v17

    .line 393
    .local v17, "icons":[I
    const v2, 0x7f0d004d

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v21

    .line 394
    .local v21, "maniIcons":[I
    const v2, 0x7f0d0049

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v11

    .line 395
    .local v11, "circleIcons":[I
    const v2, 0x7f0d004b

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v19

    .line 396
    .local v19, "indicatorIcons":[I
    const v2, 0x7f0d004c

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v20

    .line 397
    .local v20, "indicatorPressedIcons":[I
    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v26

    if-gt v15, v0, :cond_4

    .line 400
    add-int/lit8 v16, v15, -0x2

    .line 402
    .local v16, "iShowText":I
    array-length v2, v13

    mul-int/2addr v2, v15

    div-int/lit8 v18, v2, 0x4

    .line 403
    .local v18, "index":I
    array-length v2, v13

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    add-int/lit8 v18, v18, -0x1

    .line 404
    :cond_2
    aget-object v2, v13, v18

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .restart local v10    # "builder":Ljava/lang/StringBuilder;
    if-lez v16, :cond_3

    const/16 v2, 0x2b

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    :cond_3
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "showString":Ljava/lang/String;
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget v5, v17, v15

    aget v6, v21, v15

    aget v7, v11, v15

    aget v8, v19, v15

    aget v9, v20, v15

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    .line 409
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 412
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "showString":Ljava/lang/String;
    .end local v10    # "builder":Ljava/lang/StringBuilder;
    .end local v16    # "iShowText":I
    .end local v18    # "index":I
    :cond_4
    return-object v14
.end method

.method public static getExposureCompensationItems(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;)Ljava/util/ArrayList;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getExposureCompensationStep()F

    move-result v27

    .line 81
    .local v27, "step":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v22

    .line 82
    .local v22, "max":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v24

    .line 84
    .local v24, "min":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v14, "exposureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    move/from16 v0, v22

    int-to-float v2, v0

    mul-float v2, v2, v27

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v23, v0

    .line 87
    .local v23, "maxValue":I
    move/from16 v0, v24

    int-to-float v2, v0

    mul-float v2, v2, v27

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v25, v0

    .line 88
    .local v25, "minValue":I
    sub-int v2, v23, v25

    add-int/lit8 v2, v2, 0x1

    new-array v12, v2, [Ljava/lang/CharSequence;

    .line 89
    .local v12, "entries":[Ljava/lang/CharSequence;
    sub-int v2, v23, v25

    add-int/lit8 v2, v2, 0x1

    new-array v13, v2, [Ljava/lang/CharSequence;

    .line 90
    .local v13, "entryValues":[Ljava/lang/CharSequence;
    move/from16 v15, v25

    .local v15, "i":I
    :goto_0
    move/from16 v0, v23

    if-gt v15, v0, :cond_1

    .line 91
    add-int v2, v23, v15

    int-to-float v5, v15

    div-float v5, v5, v27

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v2

    .line 92
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v10, "builder":Ljava/lang/StringBuilder;
    if-lez v15, :cond_0

    const/16 v2, 0x2b

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    add-int v2, v23, v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v2

    .line 90
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 97
    .end local v10    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v26, 0x4

    .line 98
    .local v26, "requireStep":I
    const v2, 0x7f0d004a

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v17

    .line 99
    .local v17, "icons":[I
    const v2, 0x7f0d004d

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v21

    .line 100
    .local v21, "maniIcons":[I
    const v2, 0x7f0d0049

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v11

    .line 101
    .local v11, "circleIcons":[I
    const v2, 0x7f0d004b

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v19

    .line 102
    .local v19, "indicatorIcons":[I
    const v2, 0x7f0d004c

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v20

    .line 103
    .local v20, "indicatorPressedIcons":[I
    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v26

    if-gt v15, v0, :cond_4

    .line 106
    add-int/lit8 v16, v15, -0x2

    .line 108
    .local v16, "iShowText":I
    array-length v2, v13

    mul-int/2addr v2, v15

    div-int/lit8 v18, v2, 0x4

    .line 109
    .local v18, "index":I
    array-length v2, v13

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    add-int/lit8 v18, v18, -0x1

    .line 110
    :cond_2
    aget-object v2, v13, v18

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .restart local v10    # "builder":Ljava/lang/StringBuilder;
    if-lez v16, :cond_3

    const/16 v2, 0x2b

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :cond_3
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "showString":Ljava/lang/String;
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget v5, v17, v15

    aget v6, v21, v15

    aget v7, v11, v15

    aget v8, v19, v15

    aget v9, v20, v15

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    .line 115
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 118
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "showString":Ljava/lang/String;
    .end local v10    # "builder":Ljava/lang/StringBuilder;
    .end local v16    # "iShowText":I
    .end local v18    # "index":I
    :cond_4
    return-object v14
.end method

.method public static getFocusModes(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;Z)Ljava/util/ArrayList;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p2, "isProMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v15, "focusModeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    if-nez p2, :cond_2

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 311
    .local v22, "key":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    .line 312
    .local v26, "value":[Ljava/lang/String;
    const v1, 0x7f0d004f

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v17

    .line 313
    .local v17, "icons":[I
    const v1, 0x7f0d0052

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v23

    .line 314
    .local v23, "maniIcons":[I
    const v1, 0x7f0d004e

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v11

    .line 315
    .local v11, "circleIcons":[I
    const v1, 0x7f0d0050

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v18

    .line 316
    .local v18, "indicatorIcons":[I
    const v1, 0x7f0d0051

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v19

    .line 318
    .local v19, "indicatorPressedIcons":[I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, v22

    array-length v1, v0

    move/from16 v0, v16

    if-ge v0, v1, :cond_4

    .line 319
    const/4 v12, 0x0

    .line 320
    .local v12, "distance":F
    aget-object v1, v22, v16

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08038c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinimumFocusDistance()F

    move-result v12

    .line 322
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v26, v16

    aget v4, v17, v16

    aget v5, v23, v16

    aget v6, v11, v16

    aget v7, v18, v16

    aget v8, v19, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 323
    :cond_0
    aget-object v1, v22, v16

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08038b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    const/4 v12, 0x0

    .line 325
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v26, v16

    aget v4, v17, v16

    aget v5, v23, v16

    aget v6, v11, v16

    aget v7, v18, v16

    aget v8, v19, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 327
    :cond_1
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v2, v22, v16

    aget-object v3, v26, v16

    aget v4, v17, v16

    aget v5, v23, v16

    aget v6, v11, v16

    aget v7, v18, v16

    aget v8, v19, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 331
    .end local v11    # "circleIcons":[I
    .end local v12    # "distance":F
    .end local v16    # "i":I
    .end local v17    # "icons":[I
    .end local v18    # "indicatorIcons":[I
    .end local v19    # "indicatorPressedIcons":[I
    .end local v22    # "key":[Ljava/lang/String;
    .end local v23    # "maniIcons":[I
    .end local v26    # "value":[Ljava/lang/String;
    :cond_2
    const/16 v21, 0x64

    .line 332
    .local v21, "itemSize":I
    const/4 v10, 0x0

    .line 333
    .local v10, "autoIndex":I
    const/16 v20, 0x63

    .line 335
    .local v20, "infiniteIndex":I
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080314

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02029c

    const v5, 0x7f02026a

    const v6, 0x7f0200b1

    const v7, 0x7f020134

    const v8, 0x7f020135

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    .line 335
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const/16 v25, 0x0

    .line 340
    .local v25, "minDistance":F
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinimumFocusDistance()F

    move-result v24

    .line 341
    .local v24, "maxDistance":F
    sub-float v13, v24, v25

    .line 343
    .local v13, "distanceDiff":F
    const/4 v1, 0x0

    cmpl-float v1, v13, v1

    if-lez v1, :cond_4

    .line 344
    const/16 v16, 0x1

    .restart local v16    # "i":I
    :goto_2
    const/16 v1, 0x63

    move/from16 v0, v16

    if-ge v0, v1, :cond_3

    .line 345
    const/high16 v1, 0x3f800000    # 1.0f

    add-int/lit8 v2, v16, 0x0

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x42c40000    # 98.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float v14, v1, v13

    .line 346
    .local v14, "focusDistance":F
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08042b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02029c

    const v5, 0x7f02026a

    const v6, 0x7f0200b1

    const v7, 0x7f020134

    const v8, 0x7f020135

    sget-object v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_LARGE:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;)V

    .line 346
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 352
    .end local v14    # "focusDistance":F
    :cond_3
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08042c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02024b

    const v5, 0x7f02026a

    const v6, 0x7f0200b9

    const v7, 0x7f020134

    const v8, 0x7f020135

    sget-object v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_LARGE:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;)V

    .line 352
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v10    # "autoIndex":I
    .end local v13    # "distanceDiff":F
    .end local v16    # "i":I
    .end local v20    # "infiniteIndex":I
    .end local v21    # "itemSize":I
    .end local v24    # "maxDistance":F
    .end local v25    # "minDistance":F
    :cond_4
    return-object v15
.end method

.method public static getFocusModes(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;Z)Ljava/util/ArrayList;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "isProMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v16, "focusModeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 157
    .local v24, "key":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v29

    .line 159
    .local v29, "value":[Ljava/lang/String;
    :goto_1
    const v2, 0x7f0d004f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v19

    .line 160
    .local v19, "icons":[I
    const v2, 0x7f0d0052

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v26

    .line 161
    .local v26, "maniIcons":[I
    const v2, 0x7f0d004e

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v12

    .line 162
    .local v12, "circleIcons":[I
    const v2, 0x7f0d0050

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v20

    .line 163
    .local v20, "indicatorIcons":[I
    const v2, 0x7f0d0051

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v21

    .line 165
    .local v21, "indicatorPressedIcons":[I
    if-nez p2, :cond_4

    .line 166
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    .line 167
    const/4 v13, 0x0

    .line 168
    .local v13, "distance":I
    aget-object v2, v24, v17

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinManualFocusScale()I

    move-result v13

    .line 170
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v29, v17

    aget v5, v19, v17

    aget v6, v26, v17

    aget v7, v12, v17

    aget v8, v20, v17

    aget v9, v21, v17

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 156
    .end local v12    # "circleIcons":[I
    .end local v13    # "distance":I
    .end local v17    # "i":I
    .end local v19    # "icons":[I
    .end local v20    # "indicatorIcons":[I
    .end local v21    # "indicatorPressedIcons":[I
    .end local v24    # "key":[Ljava/lang/String;
    .end local v26    # "maniIcons":[I
    .end local v29    # "value":[Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 158
    .restart local v24    # "key":[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_1

    .line 171
    .restart local v12    # "circleIcons":[I
    .restart local v13    # "distance":I
    .restart local v17    # "i":I
    .restart local v19    # "icons":[I
    .restart local v20    # "indicatorIcons":[I
    .restart local v21    # "indicatorPressedIcons":[I
    .restart local v26    # "maniIcons":[I
    .restart local v29    # "value":[Ljava/lang/String;
    :cond_2
    aget-object v2, v24, v17

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08038b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxManualFocusScale()I

    move-result v13

    .line 173
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v29, v17

    aget v5, v19, v17

    aget v6, v26, v17

    aget v7, v12, v17

    aget v8, v20, v17

    aget v9, v21, v17

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 175
    :cond_3
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v3, v24, v17

    aget-object v4, v29, v17

    aget v5, v19, v17

    aget v6, v26, v17

    aget v7, v12, v17

    aget v8, v20, v17

    aget v9, v21, v17

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 179
    .end local v13    # "distance":I
    .end local v17    # "i":I
    :cond_4
    const/16 v23, 0x64

    .line 180
    .local v23, "itemSize":I
    const/4 v11, 0x0

    .line 181
    .local v11, "autoIndex":I
    const/16 v22, 0x63

    .line 183
    .local v22, "infiniteIndex":I
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080314

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0802fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f02029c

    const v6, 0x7f02026a

    const v7, 0x7f0200b1

    const v8, 0x7f020134

    const v9, 0x7f020135

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    .line 183
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinManualFocusScale()I

    move-result v28

    .line 188
    .local v28, "minDistance":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxManualFocusScale()I

    move-result v27

    .line 189
    .local v27, "maxDistance":I
    sub-int v14, v27, v28

    .line 191
    .local v14, "distanceDiff":I
    if-lez v14, :cond_6

    .line 192
    const/16 v25, -0x1

    .line 193
    .local v25, "lastFocusDistance":I
    const/16 v17, 0x1

    .restart local v17    # "i":I
    :goto_4
    const/16 v2, 0x63

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    .line 194
    add-int/lit8 v2, v17, 0x0

    mul-int/2addr v2, v14

    int-to-float v2, v2

    const/high16 v3, 0x42c60000    # 99.0f

    div-float/2addr v2, v3

    move/from16 v0, v28

    int-to-float v3, v0

    add-float v15, v2, v3

    .line 195
    .local v15, "focusDistance":F
    float-to-int v0, v15

    move/from16 v18, v0

    .line 196
    .local v18, "iFocusDistance":I
    move/from16 v0, v25

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 204
    .end local v15    # "focusDistance":F
    .end local v18    # "iFocusDistance":I
    :cond_5
    if-lez v27, :cond_6

    .line 205
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08042c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f02024b

    const v6, 0x7f02026a

    const v7, 0x7f0200b9

    const v8, 0x7f020134

    const v9, 0x7f020135

    sget-object v10, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_LARGE:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;)V

    .line 205
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v11    # "autoIndex":I
    .end local v14    # "distanceDiff":I
    .end local v17    # "i":I
    .end local v22    # "infiniteIndex":I
    .end local v23    # "itemSize":I
    .end local v25    # "lastFocusDistance":I
    .end local v27    # "maxDistance":I
    .end local v28    # "minDistance":I
    :cond_6
    return-object v16

    .line 197
    .restart local v11    # "autoIndex":I
    .restart local v14    # "distanceDiff":I
    .restart local v15    # "focusDistance":F
    .restart local v17    # "i":I
    .restart local v18    # "iFocusDistance":I
    .restart local v22    # "infiniteIndex":I
    .restart local v23    # "itemSize":I
    .restart local v25    # "lastFocusDistance":I
    .restart local v27    # "maxDistance":I
    .restart local v28    # "minDistance":I
    :cond_7
    move/from16 v25, v18

    .line 198
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08042b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f02029c

    const v6, 0x7f02026a

    const v7, 0x7f0200b1

    const v8, 0x7f020134

    const v9, 0x7f020135

    sget-object v10, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_LARGE:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;)V

    .line 198
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v17, v17, 0x1

    goto :goto_4
.end method

.method public static getISOItems(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/ArrayList;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxISO()I

    move-result v17

    .line 462
    .local v17, "max":I
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinISO()I

    move-result v18

    .line 463
    .local v18, "min":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v14, "isoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 465
    .local v15, "key":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 466
    .local v20, "value":[Ljava/lang/String;
    const v2, 0x7f0d0058

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v16

    .line 467
    .local v16, "maniIcons":[I
    const v2, 0x7f0d0053

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v10

    .line 468
    .local v10, "circleIcons":[I
    const v2, 0x7f0d0056

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v12

    .line 469
    .local v12, "indicatorIcons":[I
    const v2, 0x7f0d0057

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v13

    .line 470
    .local v13, "indicatorPressedIcons":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v2, v15

    if-ge v11, v2, :cond_2

    .line 471
    aget-object v2, v15, v11

    const v3, 0x7f080407

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 472
    aget-object v2, v15, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 473
    .local v19, "target":I
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_0

    move/from16 v0, v19

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 474
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v20, v11

    const/4 v5, 0x0

    aget v6, v16, v11

    aget v7, v10, v11

    aget v8, v12, v11

    aget v9, v13, v11

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v19    # "target":I
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 477
    :cond_1
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v3, v15, v11

    aget-object v4, v20, v11

    const/4 v5, 0x0

    aget v6, v16, v11

    aget v7, v10, v11

    aget v8, v12, v11

    aget v9, v13, v11

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 481
    :cond_2
    return-object v14
.end method

.method public static getISOItems(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;)Ljava/util/ArrayList;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxManualISO()I

    move-result v17

    .line 261
    .local v17, "max":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinManualISO()I

    move-result v18

    .line 262
    .local v18, "min":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v14, "isoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 264
    .local v15, "key":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 265
    .local v20, "value":[Ljava/lang/String;
    const v2, 0x7f0d0058

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v16

    .line 266
    .local v16, "maniIcons":[I
    const v2, 0x7f0d0053

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v10

    .line 267
    .local v10, "circleIcons":[I
    const v2, 0x7f0d0056

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v12

    .line 268
    .local v12, "indicatorIcons":[I
    const v2, 0x7f0d0057

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v13

    .line 269
    .local v13, "indicatorPressedIcons":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v2, v15

    if-ge v11, v2, :cond_2

    .line 270
    aget-object v2, v15, v11

    const v3, 0x7f080407

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    aget-object v2, v15, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 272
    .local v19, "target":I
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_0

    move/from16 v0, v19

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 273
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v20, v11

    const/4 v5, 0x0

    aget v6, v16, v11

    aget v7, v10, v11

    aget v8, v12, v11

    aget v9, v13, v11

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v19    # "target":I
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 276
    :cond_1
    new-instance v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v3, v15, v11

    aget-object v4, v20, v11

    const/4 v5, 0x0

    aget v6, v16, v11

    aget v7, v10, v11

    aget v8, v12, v11

    aget v9, v13, v11

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_2
    return-object v14
.end method

.method public static getWhiteBalance(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/ArrayList;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v19, "whiteBalanceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 418
    .local v14, "key":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 419
    .local v17, "value":[Ljava/lang/String;
    const v1, 0x7f0d005c

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v11

    .line 420
    .local v11, "icons":[I
    const v1, 0x7f0d005f

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v15

    .line 421
    .local v15, "maniIcons":[I
    const v1, 0x7f0d0059

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v9

    .line 422
    .local v9, "circleIcons":[I
    const v1, 0x7f0d005d

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v12

    .line 423
    .local v12, "indicatorIcons":[I
    const v1, 0x7f0d005e

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v13

    .line 425
    .local v13, "indicatorPressedIcons":[I
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v16

    .line 426
    .local v16, "supportedWhiteBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v1, v14

    if-ge v10, v1, :cond_1

    .line 427
    aget-object v1, v14, v10

    invoke-static {v1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->decodeMetadata(Ljava/lang/String;)I

    move-result v18

    .line 428
    .local v18, "wbType":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 431
    :cond_0
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    aget-object v2, v14, v10

    aget-object v3, v17, v10

    aget v4, v11, v10

    aget v5, v15, v10

    aget v6, v9, v10

    aget v7, v12, v10

    aget v8, v13, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 433
    .end local v18    # "wbType":I
    :cond_1
    return-object v19
.end method

.method public static getWideTeleOption(Landroid/content/Context;Lcom/android/camera/app/CameraProvider;)Ljava/util/ArrayList;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraProvider"    # Lcom/android/camera/app/CameraProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/app/CameraProvider;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    const/16 v18, 0x0

    .line 218
    .local v18, "wideIndex":I
    const/4 v15, 0x1

    .line 219
    .local v15, "teleIndex":I
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/app/CameraProvider;->getFirstBackCameraId()I

    move-result v17

    .line 220
    .local v17, "wide":I
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/app/CameraProvider;->getSecondBackCameraId()I

    move-result v14

    .line 221
    .local v14, "tele":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v19, "wideTeleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 223
    .local v16, "value":[Ljava/lang/String;
    const v1, 0x7f0d0063

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v10

    .line 224
    .local v10, "icons":[I
    const v1, 0x7f0d0066

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v13

    .line 225
    .local v13, "maniIcons":[I
    const v1, 0x7f0d0062

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v9

    .line 226
    .local v9, "circleIcons":[I
    const v1, 0x7f0d0064

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v11

    .line 227
    .local v11, "indicatorIcons":[I
    const v1, 0x7f0d0065

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v12

    .line 228
    .local v12, "indicatorPressedIcons":[I
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v16, v3

    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v5, 0x0

    aget v5, v13, v5

    const/4 v6, 0x0

    aget v6, v9, v6

    const/4 v7, 0x0

    aget v7, v11, v7

    const/4 v8, 0x0

    aget v8, v12, v8

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v16, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    const/4 v5, 0x1

    aget v5, v13, v5

    const/4 v6, 0x1

    aget v6, v9, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x1

    aget v8, v12, v8

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    return-object v19
.end method

.method public static getZoomItems(Landroid/content/Context;F)Ljava/util/ArrayList;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxRation"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "F)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    const/high16 v12, 0x43480000    # 200.0f

    .line 285
    .local v12, "STEP":F
    move/from16 v15, p1

    .line 286
    .local v15, "max":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 287
    .local v16, "min":F
    sub-float v13, v15, v16

    .line 288
    .local v13, "diff":F
    new-instance v19, Ljava/text/DecimalFormat;

    const-string v4, "##0.00"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 289
    .local v19, "sZoomFormat":Ljava/text/DecimalFormat;
    new-instance v18, Ljava/text/DecimalFormat;

    const-string v4, "##0.0X"

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 290
    .local v18, "sDisplayZoomFormat":Ljava/text/DecimalFormat;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v20, "zoomList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    const v8, 0x7f020271

    .line 293
    .local v8, "maniIcons":I
    const/4 v9, 0x0

    .line 294
    .local v9, "circleIcons":I
    const v10, 0x7f02034c

    .line 295
    .local v10, "indicatorIcons":I
    const v11, 0x7f02034d

    .line 296
    .local v11, "indicatorPressedIcons":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    int-to-float v4, v14

    const/high16 v7, 0x43480000    # 200.0f

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_0

    .line 297
    int-to-float v4, v14

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v4, v7

    mul-float/2addr v4, v13

    add-float v17, v4, v16

    .line 298
    .local v17, "normalizedValue":F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "key":Ljava/lang/String;
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "value":Ljava/lang/String;
    new-instance v4, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 303
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v17    # "normalizedValue":F
    :cond_0
    return-object v20
.end method

.method private static toEnumCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "apiCase"    # Ljava/lang/String;

    .prologue
    .line 565
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
