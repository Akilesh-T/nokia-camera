.class public Lcom/thirdparty/arcsoft/ArcsoftNightShot;
.super Ljava/lang/Object;
.source "ArcsoftNightShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

.field private mNativeCache:J

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    .line 26
    const/4 v1, 0x0

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mIsSupported:Z

    .line 42
    :try_start_0
    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v2, "A1N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "arcsoft_low_light_shot_a1"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    const-string v1, "jni_arcsoft_lowlight_a1"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_camera a1 OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeInit()V

    .line 79
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mIsSupported:Z

    .line 86
    :goto_1
    return-void

    .line 48
    :cond_0
    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v2, "B2N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    const-string v1, "arcsoft_low_light_shot_b2"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    const-string v1, "jni_arcsoft_lowlight_b2"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_camera b2 OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary Fail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 54
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v2, "PNX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v2, "EAG"

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v2, "RHD"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    :cond_2
    const-string v1, "arcsoft_low_light_shot_drg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    const-string v1, "jni_arcsoft_lowlight_drg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_camera drg OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v2, "TAS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    const-string v1, "arcsoft_low_light_shot_v2"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    const-string v1, "jni_arcsoft_lowlight_v2"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_camera v2 OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 68
    :cond_4
    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v2, "NB1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    const-string v1, "arcsoft_low_light_shot_a1"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    const-string v1, "jni_arcsoft_lowlight_a1"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_camera a1 OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 74
    :cond_5
    const-string v1, "arcsoft_low_light_shot_drg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 75
    const-string v1, "jni_arcsoft_lowlight_drg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_camera drg OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public constructor <init>(JJIIZI)V
    .locals 11
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "targetInputSize"    # I
    .param p6, "pixelArrayFormat"    # I
    .param p7, "isBackCamera"    # Z
    .param p8, "isoValue"    # I

    .prologue
    .line 96
    sget-object v9, Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;->NORMAL:Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;-><init>(JJIIZLcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(JJIIZLcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;I)V
    .locals 17
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "targetInputSize"    # I
    .param p6, "pixelArrayFormat"    # I
    .param p7, "isBackCamera"    # Z
    .param p8, "type"    # Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;
    .param p9, "isoValue"    # I

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-boolean v4, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mIsSupported:Z

    if-nez v4, :cond_0

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getLowLightVersion()Ljava/lang/String;

    move-result-object v14

    .line 102
    .local v14, "processTypeStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getAlignmentHeight()D

    move-result-wide v4

    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    const/4 v15, 0x1

    .line 103
    .local v15, "isHeightAligned":Z
    :goto_1
    sget-object v4, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arcsoft_lowlight_process_version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p9

    move/from16 v13, p7

    .line 104
    invoke-direct/range {v5 .. v15}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeSetup(JJIIIZLjava/lang/String;Z)V

    .line 106
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p9

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setParametersForChroTuning(ZILcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;)V

    goto :goto_0

    .line 102
    .end local v15    # "isHeightAligned":Z
    :cond_1
    const/4 v15, 0x0

    goto :goto_1
.end method

.method public constructor <init>(JJIIZLcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;ILandroid/hardware/camera2/CameraCharacteristics;)V
    .locals 17
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "targetInputSize"    # I
    .param p6, "pixelArrayFormat"    # I
    .param p7, "isBackCamera"    # Z
    .param p8, "type"    # Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;
    .param p9, "isoValue"    # I
    .param p10, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-boolean v4, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mIsSupported:Z

    if-nez v4, :cond_0

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getLowLightVersion()Ljava/lang/String;

    move-result-object v14

    .line 112
    .local v14, "processTypeStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getAlignmentHeight()D

    move-result-wide v4

    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    const/4 v15, 0x1

    .line 113
    .local v15, "isHeightAligned":Z
    :goto_1
    sget-object v4, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arcsoft_lowlight_process_version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p9

    move/from16 v13, p7

    .line 114
    invoke-direct/range {v5 .. v15}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeSetup(JJIIIZLjava/lang/String;Z)V

    .line 116
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    .line 117
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p9

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setParametersForChroTuning(ZILcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;)V

    goto :goto_0

    .line 112
    .end local v15    # "isHeightAligned":Z
    :cond_1
    const/4 v15, 0x0

    goto :goto_1
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mIsSupported:Z

    return v0
.end method

.method private native nativeDoEnhancementRefNum([B)I
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetRefNum()J
.end method

.method private native nativeHAL1SetInputImage(JJI[B)I
.end method

.method private static native nativeInit()V
.end method

.method private native nativeSetIntensity(J)V
.end method

.method private native nativeSetLightIntensity(J)V
.end method

.method private native nativeSetNeedSharpen(Z)V
.end method

.method private native nativeSetRefNum(J)V
.end method

.method private native nativeSetSaturation(J)V
.end method

.method private native nativeSetSharpenIntensity(J)V
.end method

.method private native nativeSetup(JJIIIZLjava/lang/String;Z)V
.end method

.method private native nativesetSceneContrast(I)V
.end method

.method private native nativesetUVReprocIntensity(I)V
.end method

.method private native nativesetYReprocIntensity(I)V
.end method

.method private setDefaultParameters(ZLcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;)V
    .locals 4
    .param p1, "isBackCamera"    # Z
    .param p2, "type"    # Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;

    .prologue
    .line 184
    new-instance v0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;

    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;-><init>(Landroid/content/Context;ZLcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;)V

    .line 185
    .local v0, "parameter":Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->getIntensity()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setIntensity(J)V

    .line 187
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->getLightIntensity()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setLightIntensity(J)V

    .line 188
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->getSaturation()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setSaturation(J)V

    .line 189
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->isNeedSharp()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setNeedSharpen(Z)V

    .line 190
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->getSharpenIntensity()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setSharpenIntensity(J)V

    .line 192
    :cond_0
    return-void
.end method

.method private setParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "intensity"    # Ljava/lang/String;
    .param p2, "light_intensity"    # Ljava/lang/String;
    .param p3, "saturation"    # Ljava/lang/String;
    .param p4, "need_sharpeness"    # Ljava/lang/String;
    .param p5, "sharpen_intensity"    # Ljava/lang/String;
    .param p6, "yReprocIntensity"    # Ljava/lang/String;
    .param p7, "uvReprocIntensity"    # Ljava/lang/String;
    .param p8, "sceneContract"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "light_intensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saturation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need_sharpeness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sharpen_intensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yReprocIntensity ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uvReprocIntensity ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sceneContract ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz p1, :cond_0

    .line 206
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setIntensity(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 211
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 213
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setLightIntensity(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 218
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 220
    :try_start_2
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setSaturation(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    :cond_2
    :goto_2
    if-eqz p4, :cond_3

    .line 227
    :try_start_3
    const-string v0, "1"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setNeedSharpen(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 232
    :cond_3
    :goto_3
    if-eqz p5, :cond_4

    .line 234
    :try_start_4
    invoke-static {p5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setSharpenIntensity(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 239
    :cond_4
    :goto_4
    if-eqz p6, :cond_5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setYReprocIntensity(I)V

    .line 240
    :cond_5
    if-eqz p7, :cond_6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setUVReprocIntensity(I)V

    .line 241
    :cond_6
    if-eqz p8, :cond_7

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setSceneContract(I)V

    .line 242
    :cond_7
    return-void

    .line 235
    :catch_0
    move-exception v0

    goto :goto_4

    .line 228
    :catch_1
    move-exception v0

    goto :goto_3

    .line 221
    :catch_2
    move-exception v0

    goto :goto_2

    .line 214
    :catch_3
    move-exception v0

    goto :goto_1

    .line 207
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method private setParametersForChroTuning(ZILcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;)V
    .locals 44
    .param p1, "isBackCamera"    # Z
    .param p2, "isoValue"    # I
    .param p3, "type"    # Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;

    .prologue
    .line 245
    const/4 v12, 0x0

    .line 246
    .local v12, "ansThreshold":Ljava/lang/String;
    const/16 v20, 0x0

    .line 247
    .local v20, "intensity":Ljava/lang/String;
    const/16 v23, 0x0

    .line 248
    .local v23, "light_intensity":Ljava/lang/String;
    const/16 v29, 0x0

    .line 249
    .local v29, "saturation":Ljava/lang/String;
    const/16 v26, 0x0

    .line 250
    .local v26, "need_sharpeness":Ljava/lang/String;
    const/16 v35, 0x0

    .line 251
    .local v35, "sharpen_intensity":Ljava/lang/String;
    const/16 v42, 0x0

    .line 252
    .local v42, "yReprocIntensity":Ljava/lang/String;
    const/16 v39, 0x0

    .line 253
    .local v39, "uvReprocIntensity":Ljava/lang/String;
    const/16 v31, 0x0

    .line 255
    .local v31, "sceneContract":Ljava/lang/String;
    const/4 v13, 0x0

    .line 256
    .local v13, "ansThresholdArr":[Ljava/lang/String;
    const/16 v21, 0x0

    .line 257
    .local v21, "intensity_arr":[Ljava/lang/String;
    const/16 v24, 0x0

    .line 258
    .local v24, "light_intensity_arr":[Ljava/lang/String;
    const/16 v30, 0x0

    .line 259
    .local v30, "saturation_arr":[Ljava/lang/String;
    const/16 v27, 0x0

    .line 260
    .local v27, "need_sharpeness_arr":[Ljava/lang/String;
    const/16 v36, 0x0

    .line 261
    .local v36, "sharpen_intensity_arr":[Ljava/lang/String;
    const/16 v43, 0x0

    .line 262
    .local v43, "yReprocIntensity_arr":[Ljava/lang/String;
    const/16 v40, 0x0

    .line 263
    .local v40, "uvReprocIntensity_arr":[Ljava/lang/String;
    const/16 v32, 0x0

    .line 265
    .local v32, "sceneContract_arr":[Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getOpticalConfiguration()Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v16

    .line 267
    .local v16, "foc":Lcom/android/camera/util/FihOpticalConfiguration;
    if-nez v16, :cond_b

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v3, :cond_a

    .line 269
    if-eqz p1, :cond_9

    .line 270
    const-string v3, "camera.ans.th.main"

    const-string v4, "800"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 271
    const-string v3, "camera.ans.int.main"

    const-string v4, "5"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 272
    const-string v3, "camera.ans.l_int.main"

    const-string v4, "60"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 273
    const-string v3, "camera.ans.sat.main"

    const-string v4, "32"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 274
    const-string v3, "camera.ans.sharpe.main"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 275
    const-string v3, "camera.ans.s_int.main"

    const-string v4, "40"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 341
    :goto_0
    const/4 v14, 0x0

    .line 342
    .local v14, "expect_size":I
    const/4 v15, 0x0

    .line 343
    .local v15, "fail":Z
    if-nez v15, :cond_d

    if-eqz v12, :cond_d

    .line 344
    const-string v3, ","

    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 345
    array-length v14, v13

    .line 349
    :goto_1
    if-nez v15, :cond_e

    if-eqz v20, :cond_e

    .line 350
    const-string v3, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 351
    move-object/from16 v0, v21

    array-length v3, v0

    if-eq v14, v3, :cond_0

    .line 352
    const/4 v15, 0x1

    .line 357
    :cond_0
    :goto_2
    if-nez v15, :cond_f

    if-eqz v23, :cond_f

    .line 358
    const-string v3, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 359
    move-object/from16 v0, v24

    array-length v3, v0

    if-eq v14, v3, :cond_1

    .line 360
    const/4 v15, 0x1

    .line 365
    :cond_1
    :goto_3
    if-nez v15, :cond_10

    if-eqz v29, :cond_10

    .line 366
    const-string v3, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 367
    move-object/from16 v0, v30

    array-length v3, v0

    if-eq v14, v3, :cond_2

    .line 368
    const/4 v15, 0x1

    .line 373
    :cond_2
    :goto_4
    if-nez v15, :cond_11

    if-eqz v26, :cond_11

    .line 374
    const-string v3, ","

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 375
    move-object/from16 v0, v27

    array-length v3, v0

    if-eq v14, v3, :cond_3

    .line 376
    const/4 v15, 0x1

    .line 381
    :cond_3
    :goto_5
    if-nez v15, :cond_12

    if-eqz v35, :cond_12

    .line 382
    const-string v3, ","

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 383
    move-object/from16 v0, v36

    array-length v3, v0

    if-eq v14, v3, :cond_4

    .line 384
    const/4 v15, 0x1

    .line 389
    :cond_4
    :goto_6
    if-nez v15, :cond_13

    if-eqz v42, :cond_13

    .line 390
    const-string v3, ","

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v43

    .line 391
    move-object/from16 v0, v43

    array-length v3, v0

    if-eq v14, v3, :cond_5

    .line 392
    const/4 v15, 0x1

    .line 397
    :cond_5
    :goto_7
    if-nez v15, :cond_14

    if-eqz v39, :cond_14

    .line 398
    const-string v3, ","

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    .line 399
    move-object/from16 v0, v40

    array-length v3, v0

    if-eq v14, v3, :cond_6

    .line 400
    const/4 v15, 0x1

    .line 405
    :cond_6
    :goto_8
    if-nez v15, :cond_15

    if-eqz v31, :cond_15

    .line 406
    const-string v3, ","

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 407
    move-object/from16 v0, v32

    array-length v3, v0

    if-eq v14, v3, :cond_7

    .line 408
    const/4 v15, 0x1

    .line 414
    :cond_7
    :goto_9
    if-nez v15, :cond_8

    if-nez v14, :cond_16

    .line 415
    :cond_8
    sget-object v3, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ansThreshold = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v3, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intensity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sget-object v3, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "light_intensity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object v3, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saturation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sget-object v3, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "need_sharpeness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v3, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sharpen_intensity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object v3, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "yReprocIntensity :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uvReprocIntensity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sceneContract: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setDefaultParameters(ZLcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;)V

    .line 448
    :goto_a
    return-void

    .line 277
    .end local v14    # "expect_size":I
    .end local v15    # "fail":Z
    :cond_9
    const-string v3, "camera.ans.th.front"

    const-string v4, "800"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 278
    const-string v3, "camera.ans.int.front"

    const-string v4, "5"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 279
    const-string v3, "camera.ans.l_int.front"

    const-string v4, "60"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 280
    const-string v3, "camera.ans.sat.front"

    const-string v4, "32"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 281
    const-string v3, "camera.ans.sharpe.front"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 282
    const-string v3, "camera.ans.s_int.front"

    const-string v4, "40"

    invoke-static {v3, v4}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    .line 298
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_TH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [I

    .line 299
    .local v37, "th":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_INT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [I

    .line 300
    .local v19, "ins":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_L_INT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [I

    .line 301
    .local v22, "lightIns":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_SAT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [I

    .line 302
    .local v28, "sat":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_SHARP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [I

    .line 303
    .local v25, "needSat":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_S_INT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [I

    .line 304
    .local v34, "sharpIns":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_YPROC_INT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [I

    .line 305
    .local v41, "yIns":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_UVPROC_INT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [I

    .line 306
    .local v38, "uvIns":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_SCENE_CONTRACT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [I

    .line 307
    .local v33, "scnCont":[I
    invoke-static/range {v37 .. v37}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v12

    .line 308
    invoke-static/range {v19 .. v19}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v20

    .line 309
    invoke-static/range {v22 .. v22}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v23

    .line 310
    invoke-static/range {v28 .. v28}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v29

    .line 311
    invoke-static/range {v25 .. v25}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v26

    .line 312
    invoke-static/range {v34 .. v34}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v35

    .line 313
    invoke-static/range {v41 .. v41}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v42

    .line 314
    invoke-static/range {v38 .. v38}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v39

    .line 315
    invoke-static/range {v33 .. v33}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v31

    .line 316
    goto/16 :goto_0

    .line 318
    .end local v19    # "ins":[I
    .end local v22    # "lightIns":[I
    .end local v25    # "needSat":[I
    .end local v28    # "sat":[I
    .end local v33    # "scnCont":[I
    .end local v34    # "sharpIns":[I
    .end local v37    # "th":[I
    .end local v38    # "uvIns":[I
    .end local v41    # "yIns":[I
    :cond_b
    if-eqz p1, :cond_c

    .line 319
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_th_main()Ljava/lang/String;

    move-result-object v12

    .line 320
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_int_main()Ljava/lang/String;

    move-result-object v20

    .line 321
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_l_int_main()Ljava/lang/String;

    move-result-object v23

    .line 322
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_sat_main()Ljava/lang/String;

    move-result-object v29

    .line 323
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_sharpe_main()Ljava/lang/String;

    move-result-object v26

    .line 324
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_s_int_main()Ljava/lang/String;

    move-result-object v35

    .line 325
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_yproc_int_main()Ljava/lang/String;

    move-result-object v42

    .line 326
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_uvproc_int_main()Ljava/lang/String;

    move-result-object v39

    .line 327
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_scene_contract_main()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_0

    .line 329
    :cond_c
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_th_front()Ljava/lang/String;

    move-result-object v12

    .line 330
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_int_front()Ljava/lang/String;

    move-result-object v20

    .line 331
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_l_int_front()Ljava/lang/String;

    move-result-object v23

    .line 332
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_sat_front()Ljava/lang/String;

    move-result-object v29

    .line 333
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_sharpe_front()Ljava/lang/String;

    move-result-object v26

    .line 334
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_s_int_front()Ljava/lang/String;

    move-result-object v35

    .line 335
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_yproc_int_front()Ljava/lang/String;

    move-result-object v42

    .line 336
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_uvproc_int_front()Ljava/lang/String;

    move-result-object v39

    .line 337
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_scene_contract_front()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_0

    .line 347
    .restart local v14    # "expect_size":I
    .restart local v15    # "fail":Z
    :cond_d
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 355
    :cond_e
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 363
    :cond_f
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 371
    :cond_10
    const/4 v15, 0x1

    goto/16 :goto_4

    .line 379
    :cond_11
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 387
    :cond_12
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 395
    :cond_13
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 403
    :cond_14
    const/4 v15, 0x1

    goto/16 :goto_8

    .line 411
    :cond_15
    const/4 v15, 0x1

    goto/16 :goto_9

    .line 427
    :cond_16
    const/16 v18, 0x0

    .line 428
    .local v18, "index":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_b
    array-length v3, v13

    move/from16 v0, v17

    if-ge v0, v3, :cond_17

    .line 429
    aget-object v3, v13, v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, p2

    if-ge v0, v3, :cond_19

    .line 430
    if-lez v17, :cond_18

    add-int/lit8 v18, v17, -0x1

    .line 438
    :cond_17
    :goto_c
    sget-object v3, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowlight setParametersForChroTuning  intensity_arr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v21, v18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " light_intensity_arr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v24, v18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " saturation_arr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v30, v18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " need_sharpeness_arr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v27, v18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sharpen_intensity_arr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v36, v18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " yReprocIntensity_arr= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v43, v18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uvReprocIntensity_arr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v40, v18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sceneContract_arr= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v32, v18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    aget-object v4, v21, v18

    aget-object v5, v24, v18

    aget-object v6, v30, v18

    aget-object v7, v27, v18

    aget-object v8, v36, v18

    aget-object v9, v43, v18

    aget-object v10, v40, v18

    aget-object v11, v32, v18

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 430
    :cond_18
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 432
    :cond_19
    array-length v3, v13

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_1a

    .line 433
    move/from16 v18, v17

    .line 434
    goto/16 :goto_c

    .line 428
    :cond_1a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_b
.end method


# virtual methods
.method public doEnhancement([B)I
    .locals 1
    .param p1, "writeOut"    # [B

    .prologue
    .line 162
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeDoEnhancementRefNum([B)I

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    const-string v1, "ArcsoftNightShot.finalize() by gc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getRefNum()J
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeGetRefNum()J

    move-result-wide v0

    return-wide v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 167
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->TAG:Ljava/lang/String;

    const-string v1, "ArcsoftNightShot.release() in java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeFinalize()V

    goto :goto_0
.end method

.method public setHAL1InputImage(JJI[B)I
    .locals 1
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "pixelArrayFormat"    # I
    .param p6, "data"    # [B

    .prologue
    .line 155
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeHAL1SetInputImage(JJI[B)I

    move-result v0

    goto :goto_0
.end method

.method public setIntensity(J)V
    .locals 1
    .param p1, "lIntensity"    # J

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeSetIntensity(J)V

    .line 132
    return-void
.end method

.method public setLightIntensity(J)V
    .locals 1
    .param p1, "lLightIntensity"    # J

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeSetLightIntensity(J)V

    .line 140
    return-void
.end method

.method public setMetadata(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    .line 128
    return-void
.end method

.method public setNeedSharpen(Z)V
    .locals 0
    .param p1, "bNeedSharpen"    # Z

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeSetNeedSharpen(Z)V

    .line 148
    return-void
.end method

.method public setRefNum(J)V
    .locals 1
    .param p1, "lRefNum"    # J

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeSetRefNum(J)V

    .line 124
    return-void
.end method

.method public setSaturation(J)V
    .locals 1
    .param p1, "lSaturation"    # J

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeSetSaturation(J)V

    .line 144
    return-void
.end method

.method public setSceneContract(I)V
    .locals 0
    .param p1, "iSceneContract"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativesetSceneContrast(I)V

    return-void
.end method

.method public setSharpenIntensity(J)V
    .locals 1
    .param p1, "lSharpenIntensity"    # J

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativeSetSharpenIntensity(J)V

    .line 136
    return-void
.end method

.method public setUVReprocIntensity(I)V
    .locals 0
    .param p1, "iUVReprocIntensity"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativesetUVReprocIntensity(I)V

    return-void
.end method

.method public setYReprocIntensity(I)V
    .locals 0
    .param p1, "iYReprocIntensity"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->nativesetYReprocIntensity(I)V

    return-void
.end method
