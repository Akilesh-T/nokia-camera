.class public Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;
.super Ljava/lang/Object;
.source "ArcsoftSmartDenoise.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    .line 21
    const/4 v1, 0x0

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    .line 27
    :try_start_0
    const-string v1, "jni_arcsoft_smartdenoise"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeInit()V

    .line 29
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    .line 30
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_smartdenoise OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary UnsatisfiedLinkError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

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

    goto :goto_0
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "isBackCamera"    # Z
    .param p2, "isoValue"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeSetup()V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setParametersForChroTuning(ZI)V

    goto :goto_0
.end method

.method public constructor <init>(ZILandroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1
    .param p1, "isBackCamera"    # Z
    .param p2, "isoValue"    # I
    .param p3, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeSetup()V

    .line 55
    iput-object p3, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setParametersForChroTuning(ZI)V

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    return v0
.end method

.method private native nativeAutoNoiseEstHAL1(JJI[B)I
.end method

.method private native nativeDoDenoiseHAL1(JJI[B)I
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeSetColorDenoiseLevel(J)I
.end method

.method private native nativeSetDenoiserType(I)I
.end method

.method private native nativeSetLuminDenoiseLevel(J)I
.end method

.method private native nativeSetNoiseConfigData([B)I
.end method

.method private native nativeSetRingNoiseLevel(J)I
.end method

.method private native nativeSetSharpLevel(J)I
.end method

.method private native nativeSetup()V
.end method

.method private setDefaultParameters(Z)V
    .locals 4
    .param p1, "isBackCamera"    # Z

    .prologue
    .line 108
    new-instance v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;

    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;-><init>(Landroid/content/Context;Z)V

    .line 109
    .local v0, "parameter":Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->getDenoiseType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setDenoiserType(I)I

    .line 111
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->getColorLevel()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setColorDenoiseLevel(J)I

    .line 112
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->getLuminLevel()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setLuminDenoiseLevel(J)I

    .line 113
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->getSharpLevel()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setSharpLevel(J)I

    .line 114
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->getRingLevel()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setRingNoiseLevel(J)I

    .line 116
    :cond_0
    return-void
.end method

.method private setParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "denoise_type"    # Ljava/lang/String;
    .param p2, "color_level"    # Ljava/lang/String;
    .param p3, "lumin_level"    # Ljava/lang/String;
    .param p4, "sharp_level"    # Ljava/lang/String;
    .param p5, "ring_level"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "denoise_type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "color_level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lumin_level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sharp_level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ring_level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz p1, :cond_0

    .line 128
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setDenoiserType(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 133
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 135
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setColorDenoiseLevel(J)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 140
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 142
    :try_start_2
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setLuminDenoiseLevel(J)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 147
    :cond_2
    :goto_2
    if-eqz p4, :cond_3

    .line 149
    :try_start_3
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setSharpLevel(J)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 154
    :cond_3
    :goto_3
    if-eqz p5, :cond_4

    .line 156
    :try_start_4
    invoke-static {p5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setRingNoiseLevel(J)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 160
    :cond_4
    :goto_4
    return-void

    .line 157
    :catch_0
    move-exception v0

    goto :goto_4

    .line 150
    :catch_1
    move-exception v0

    goto :goto_3

    .line 143
    :catch_2
    move-exception v0

    goto :goto_2

    .line 136
    :catch_3
    move-exception v0

    goto :goto_1

    .line 129
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method private setParametersForChroTuning(ZI)V
    .locals 30
    .param p1, "isBackCamera"    # Z
    .param p2, "isoValue"    # I

    .prologue
    .line 163
    const/4 v7, 0x0

    .line 164
    .local v7, "asdnThreshold":Ljava/lang/String;
    const/4 v12, 0x0

    .line 165
    .local v12, "denoise_type":Ljava/lang/String;
    const/4 v10, 0x0

    .line 166
    .local v10, "color_level":Ljava/lang/String;
    const/16 v20, 0x0

    .line 167
    .local v20, "lumin_level":Ljava/lang/String;
    const/16 v26, 0x0

    .line 168
    .local v26, "sharp_level":Ljava/lang/String;
    const/16 v23, 0x0

    .line 169
    .local v23, "ring_level":Ljava/lang/String;
    const/4 v8, 0x0

    .line 170
    .local v8, "asdnThresholdArr":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 171
    .local v13, "denoise_type_arr":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 172
    .local v11, "color_level_arr":[Ljava/lang/String;
    const/16 v21, 0x0

    .line 173
    .local v21, "lumin_level_arr":[Ljava/lang/String;
    const/16 v27, 0x0

    .line 174
    .local v27, "sharp_level_arr":[Ljava/lang/String;
    const/16 v24, 0x0

    .line 176
    .local v24, "ring_level_arr":[Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getOpticalConfiguration()Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v16

    .line 178
    .local v16, "foc":Lcom/android/camera/util/FihOpticalConfiguration;
    if-nez v16, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v1, :cond_7

    .line 180
    if-eqz p1, :cond_6

    .line 181
    const-string v1, "camera.asdn.th.main"

    const-string v2, "400"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    const-string v1, "camera.asdn.type.main"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 183
    const-string v1, "camera.asdn.color.main"

    const-string v2, "50"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 184
    const-string v1, "camera.asdn.lumin.main"

    const-string v2, "50"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 185
    const-string v1, "camera.asdn.sharp.main"

    const-string v2, "50"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 186
    const-string v1, "camera.asdn.ring.main"

    const-string v2, "50"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 238
    :goto_0
    const/4 v14, 0x0

    .line 239
    .local v14, "expect_size":I
    const/4 v15, 0x0

    .line 240
    .local v15, "fail":Z
    if-nez v15, :cond_a

    if-eqz v7, :cond_a

    .line 241
    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 242
    array-length v14, v8

    .line 246
    :goto_1
    if-nez v15, :cond_b

    if-eqz v12, :cond_b

    .line 247
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 248
    array-length v1, v13

    if-eq v14, v1, :cond_0

    .line 249
    const/4 v15, 0x1

    .line 254
    :cond_0
    :goto_2
    if-nez v15, :cond_c

    if-eqz v10, :cond_c

    .line 255
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 256
    array-length v1, v11

    if-eq v14, v1, :cond_1

    .line 257
    const/4 v15, 0x1

    .line 262
    :cond_1
    :goto_3
    if-nez v15, :cond_d

    if-eqz v20, :cond_d

    .line 263
    const-string v1, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 264
    move-object/from16 v0, v21

    array-length v1, v0

    if-eq v14, v1, :cond_2

    .line 265
    const/4 v15, 0x1

    .line 270
    :cond_2
    :goto_4
    if-nez v15, :cond_e

    if-eqz v26, :cond_e

    .line 271
    const-string v1, ","

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 272
    move-object/from16 v0, v27

    array-length v1, v0

    if-eq v14, v1, :cond_3

    .line 273
    const/4 v15, 0x1

    .line 278
    :cond_3
    :goto_5
    if-nez v15, :cond_f

    if-eqz v23, :cond_f

    .line 279
    const-string v1, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 280
    move-object/from16 v0, v24

    array-length v1, v0

    if-eq v14, v1, :cond_4

    .line 281
    const/4 v15, 0x1

    .line 287
    :cond_4
    :goto_6
    if-nez v15, :cond_5

    if-nez v14, :cond_10

    .line 288
    :cond_5
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asdnThreshold = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "denoise_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color_level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lumin_level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sharp_level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ring_level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct/range {p0 .. p1}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setDefaultParameters(Z)V

    .line 312
    :goto_7
    return-void

    .line 188
    .end local v14    # "expect_size":I
    .end local v15    # "fail":Z
    :cond_6
    const-string v1, "camera.asdn.th.front"

    const-string v2, "400"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    const-string v1, "camera.asdn.type.front"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 190
    const-string v1, "camera.asdn.color.front"

    const-string v2, "50"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 191
    const-string v1, "camera.asdn.lumin.front"

    const-string v2, "50"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 192
    const-string v1, "camera.asdn.sharp.front"

    const-string v2, "50"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 193
    const-string v1, "camera.asdn.ring.front"

    const-string v2, "50"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 206
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ASDN_TH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [I

    .line 207
    .local v28, "th":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ASDN_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [I

    .line 208
    .local v29, "type":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ASDN_COLOR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 209
    .local v9, "color":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ASDN_LUMIN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [I

    .line 210
    .local v19, "lumin":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ASDN_SHARP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [I

    .line 211
    .local v25, "sharp":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ASDN_RING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [I

    .line 213
    .local v22, "ring":[I
    invoke-static/range {v28 .. v28}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v7

    .line 214
    invoke-static/range {v29 .. v29}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v12

    .line 215
    invoke-static {v9}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v10

    .line 216
    invoke-static/range {v19 .. v19}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v20

    .line 217
    invoke-static/range {v25 .. v25}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v26

    .line 218
    invoke-static/range {v22 .. v22}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v23

    .line 219
    goto/16 :goto_0

    .line 221
    .end local v9    # "color":[I
    .end local v19    # "lumin":[I
    .end local v22    # "ring":[I
    .end local v25    # "sharp":[I
    .end local v28    # "th":[I
    .end local v29    # "type":[I
    :cond_8
    if-eqz p1, :cond_9

    .line 222
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_th_main()Ljava/lang/String;

    move-result-object v7

    .line 223
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_type_main()Ljava/lang/String;

    move-result-object v12

    .line 224
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_color_main()Ljava/lang/String;

    move-result-object v10

    .line 225
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_lumin_main()Ljava/lang/String;

    move-result-object v20

    .line 226
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_sharp_main()Ljava/lang/String;

    move-result-object v26

    .line 227
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_ring_main()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 229
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_th_front()Ljava/lang/String;

    move-result-object v7

    .line 230
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_type_front()Ljava/lang/String;

    move-result-object v12

    .line 231
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_color_front()Ljava/lang/String;

    move-result-object v10

    .line 232
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_lumin_front()Ljava/lang/String;

    move-result-object v20

    .line 233
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_sharp_front()Ljava/lang/String;

    move-result-object v26

    .line 234
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_ring_front()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 244
    .restart local v14    # "expect_size":I
    .restart local v15    # "fail":Z
    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 252
    :cond_b
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 260
    :cond_c
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 268
    :cond_d
    const/4 v15, 0x1

    goto/16 :goto_4

    .line 276
    :cond_e
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 284
    :cond_f
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 299
    :cond_10
    const/16 v18, 0x0

    .line 300
    .local v18, "index":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_8
    array-length v1, v8

    move/from16 v0, v17

    if-ge v0, v1, :cond_11

    .line 301
    aget-object v1, v8, v17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, p2

    if-ge v0, v1, :cond_13

    .line 302
    if-lez v17, :cond_12

    add-int/lit8 v18, v17, -0x1

    .line 310
    :cond_11
    :goto_9
    aget-object v2, v13, v18

    aget-object v3, v11, v18

    aget-object v4, v21, v18

    aget-object v5, v27, v18

    aget-object v6, v24, v18

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 302
    :cond_12
    const/16 v18, 0x0

    goto :goto_9

    .line 304
    :cond_13
    array-length v1, v8

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_14

    .line 305
    move/from16 v18, v17

    .line 306
    goto :goto_9

    .line 300
    :cond_14
    add-int/lit8 v17, v17, 0x1

    goto :goto_8
.end method


# virtual methods
.method public autoNoiseEstHAL1(JJI[B)I
    .locals 1
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "pixelArrayFormat"    # I
    .param p6, "data"    # [B

    .prologue
    .line 93
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeAutoNoiseEstHAL1(JJI[B)I

    move-result v0

    goto :goto_0
.end method

.method public doDenoiseHAL1(JJI[B)I
    .locals 1
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "pixelArrayFormat"    # I
    .param p6, "data"    # [B

    .prologue
    .line 98
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeDoDenoiseHAL1(JJI[B)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeFinalize()V

    goto :goto_0
.end method

.method public setColorDenoiseLevel(J)I
    .locals 1
    .param p1, "level"    # J

    .prologue
    .line 69
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeSetColorDenoiseLevel(J)I

    move-result v0

    goto :goto_0
.end method

.method public setDenoiserType(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 64
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeSetDenoiserType(I)I

    move-result v0

    goto :goto_0
.end method

.method public setLuminDenoiseLevel(J)I
    .locals 1
    .param p1, "level"    # J

    .prologue
    .line 74
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeSetLuminDenoiseLevel(J)I

    move-result v0

    goto :goto_0
.end method

.method public setMetadata(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    .line 61
    return-void
.end method

.method public setNoiseConfigData([B)I
    .locals 1
    .param p1, "configData"    # [B

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeSetNoiseConfigData([B)I

    move-result v0

    return v0
.end method

.method public setRingNoiseLevel(J)I
    .locals 1
    .param p1, "level"    # J

    .prologue
    .line 84
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeSetRingNoiseLevel(J)I

    move-result v0

    goto :goto_0
.end method

.method public setSharpLevel(J)I
    .locals 1
    .param p1, "level"    # J

    .prologue
    .line 79
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->nativeSetSharpLevel(J)I

    move-result v0

    goto :goto_0
.end method
