.class public Lcom/thirdparty/arcsoft/ArcsoftPicZoom;
.super Ljava/lang/Object;
.source "ArcsoftPicZoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;
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
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    .line 21
    const/4 v1, 0x0

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mIsSupported:Z

    .line 37
    :try_start_0
    const-string v1, "jni_arcsoft_piczoom"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_piczoom OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeInit()V

    .line 41
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

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

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

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

.method public constructor <init>(JJIIZI)V
    .locals 11
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "targetInputSize"    # I
    .param p6, "pixelArrayFormat"    # I
    .param p7, "isBackCamera"    # Z
    .param p8, "isoValue"    # I

    .prologue
    .line 58
    sget-object v9, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->NORMAL:Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;-><init>(JJIIZLcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(JJIIZILandroid/hardware/camera2/CameraCharacteristics;)V
    .locals 13
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "targetInputSize"    # I
    .param p6, "pixelArrayFormat"    # I
    .param p7, "isBackCamera"    # Z
    .param p8, "isoValue"    # I
    .param p9, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-boolean v2, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mIsSupported:Z

    if-nez v2, :cond_0

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getLowLightVersion()Ljava/lang/String;

    move-result-object v12

    .local v12, "processTypeStr":Ljava/lang/String;
    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p8

    move/from16 v11, p7

    .line 74
    invoke-direct/range {v3 .. v12}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeSetup(JJIIIZLjava/lang/String;)V

    .line 76
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    goto :goto_0
.end method

.method public constructor <init>(JJIIZLcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;I)V
    .locals 15
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "targetInputSize"    # I
    .param p6, "pixelArrayFormat"    # I
    .param p7, "isBackCamera"    # Z
    .param p8, "type"    # Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;
    .param p9, "isoValue"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-boolean v4, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mIsSupported:Z

    if-nez v4, :cond_0

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getLowLightVersion()Ljava/lang/String;

    move-result-object v14

    .local v14, "processTypeStr":Ljava/lang/String;
    move-object v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p9

    move/from16 v13, p7

    .line 65
    invoke-direct/range {v5 .. v14}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeSetup(JJIIIZLjava/lang/String;)V

    .line 67
    move/from16 v0, p7

    move/from16 v1, p9

    move-object/from16 v2, p8

    invoke-direct {p0, v0, v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setParametersForChroTuning(ZILcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;)V

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mIsSupported:Z

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

.method private native nativeSetup(JJIIIZLjava/lang/String;)V
.end method

.method private native nativesetScale(I)V
.end method

.method private native nativesetSceneContrast(I)V
.end method

.method private native nativesetUVReprocIntensity(I)V
.end method

.method private native nativesetYReprocIntensity(I)V
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
    .line 159
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

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

    .line 160
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

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

    .line 161
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

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

    .line 162
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

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

    .line 163
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

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

    .line 164
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

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

    .line 165
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

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

    .line 166
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

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

    .line 167
    if-eqz p1, :cond_0

    .line 169
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setIntensity(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 174
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 176
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setLightIntensity(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 181
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 183
    :try_start_2
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setSaturation(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 188
    :cond_2
    :goto_2
    if-eqz p4, :cond_3

    .line 190
    :try_start_3
    const-string v0, "1"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setNeedSharpen(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 195
    :cond_3
    :goto_3
    if-eqz p5, :cond_4

    .line 197
    :try_start_4
    invoke-static {p5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setSharpenIntensity(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 202
    :cond_4
    :goto_4
    if-eqz p6, :cond_5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setYReprocIntensity(I)V

    .line 203
    :cond_5
    if-eqz p7, :cond_6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setUVReprocIntensity(I)V

    .line 204
    :cond_6
    if-eqz p8, :cond_7

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setSceneContract(I)V

    .line 205
    :cond_7
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_4

    .line 191
    :catch_1
    move-exception v0

    goto :goto_3

    .line 184
    :catch_2
    move-exception v0

    goto :goto_2

    .line 177
    :catch_3
    move-exception v0

    goto :goto_1

    .line 170
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method private setParametersForChroTuning(ZILcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;)V
    .locals 42
    .param p1, "isBackCamera"    # Z
    .param p2, "isoValue"    # I
    .param p3, "type"    # Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    .prologue
    .line 208
    const/4 v10, 0x0

    .line 209
    .local v10, "ansThreshold":Ljava/lang/String;
    const/16 v18, 0x0

    .line 210
    .local v18, "intensity":Ljava/lang/String;
    const/16 v21, 0x0

    .line 211
    .local v21, "light_intensity":Ljava/lang/String;
    const/16 v27, 0x0

    .line 212
    .local v27, "saturation":Ljava/lang/String;
    const/16 v24, 0x0

    .line 213
    .local v24, "need_sharpeness":Ljava/lang/String;
    const/16 v33, 0x0

    .line 214
    .local v33, "sharpen_intensity":Ljava/lang/String;
    const/16 v40, 0x0

    .line 215
    .local v40, "yReprocIntensity":Ljava/lang/String;
    const/16 v37, 0x0

    .line 216
    .local v37, "uvReprocIntensity":Ljava/lang/String;
    const/16 v29, 0x0

    .line 218
    .local v29, "sceneContract":Ljava/lang/String;
    const/4 v11, 0x0

    .line 219
    .local v11, "ansThresholdArr":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 220
    .local v19, "intensity_arr":[Ljava/lang/String;
    const/16 v22, 0x0

    .line 221
    .local v22, "light_intensity_arr":[Ljava/lang/String;
    const/16 v28, 0x0

    .line 222
    .local v28, "saturation_arr":[Ljava/lang/String;
    const/16 v25, 0x0

    .line 223
    .local v25, "need_sharpeness_arr":[Ljava/lang/String;
    const/16 v34, 0x0

    .line 224
    .local v34, "sharpen_intensity_arr":[Ljava/lang/String;
    const/16 v41, 0x0

    .line 225
    .local v41, "yReprocIntensity_arr":[Ljava/lang/String;
    const/16 v38, 0x0

    .line 226
    .local v38, "uvReprocIntensity_arr":[Ljava/lang/String;
    const/16 v30, 0x0

    .line 228
    .local v30, "sceneContract_arr":[Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getOpticalConfiguration()Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v14

    .line 230
    .local v14, "foc":Lcom/android/camera/util/FihOpticalConfiguration;
    if-nez v14, :cond_b

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v1, :cond_a

    .line 232
    if-eqz p1, :cond_9

    .line 233
    const-string v1, "camera.ans.th.main"

    const-string v2, "800"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 234
    const-string v1, "camera.ans.int.main"

    const-string v2, "5"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 235
    const-string v1, "camera.ans.l_int.main"

    const-string v2, "60"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 236
    const-string v1, "camera.ans.sat.main"

    const-string v2, "32"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 237
    const-string v1, "camera.ans.sharpe.main"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 238
    const-string v1, "camera.ans.s_int.main"

    const-string v2, "40"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 304
    :goto_0
    const/4 v12, 0x0

    .line 305
    .local v12, "expect_size":I
    const/4 v13, 0x0

    .line 306
    .local v13, "fail":Z
    if-nez v13, :cond_d

    if-eqz v10, :cond_d

    .line 307
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 308
    array-length v12, v11

    .line 312
    :goto_1
    if-nez v13, :cond_e

    if-eqz v18, :cond_e

    .line 313
    const-string v1, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 314
    move-object/from16 v0, v19

    array-length v1, v0

    if-eq v12, v1, :cond_0

    .line 315
    const/4 v13, 0x1

    .line 320
    :cond_0
    :goto_2
    if-nez v13, :cond_f

    if-eqz v21, :cond_f

    .line 321
    const-string v1, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 322
    move-object/from16 v0, v22

    array-length v1, v0

    if-eq v12, v1, :cond_1

    .line 323
    const/4 v13, 0x1

    .line 328
    :cond_1
    :goto_3
    if-nez v13, :cond_10

    if-eqz v27, :cond_10

    .line 329
    const-string v1, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 330
    move-object/from16 v0, v28

    array-length v1, v0

    if-eq v12, v1, :cond_2

    .line 331
    const/4 v13, 0x1

    .line 336
    :cond_2
    :goto_4
    if-nez v13, :cond_11

    if-eqz v24, :cond_11

    .line 337
    const-string v1, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 338
    move-object/from16 v0, v25

    array-length v1, v0

    if-eq v12, v1, :cond_3

    .line 339
    const/4 v13, 0x1

    .line 344
    :cond_3
    :goto_5
    if-nez v13, :cond_12

    if-eqz v33, :cond_12

    .line 345
    const-string v1, ","

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 346
    move-object/from16 v0, v34

    array-length v1, v0

    if-eq v12, v1, :cond_4

    .line 347
    const/4 v13, 0x1

    .line 352
    :cond_4
    :goto_6
    if-nez v13, :cond_13

    if-eqz v40, :cond_13

    .line 353
    const-string v1, ","

    move-object/from16 v0, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 354
    move-object/from16 v0, v41

    array-length v1, v0

    if-eq v12, v1, :cond_5

    .line 355
    const/4 v13, 0x1

    .line 360
    :cond_5
    :goto_7
    if-nez v13, :cond_14

    if-eqz v37, :cond_14

    .line 361
    const-string v1, ","

    move-object/from16 v0, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    .line 362
    move-object/from16 v0, v38

    array-length v1, v0

    if-eq v12, v1, :cond_6

    .line 363
    const/4 v13, 0x1

    .line 368
    :cond_6
    :goto_8
    if-nez v13, :cond_15

    if-eqz v29, :cond_15

    .line 369
    const-string v1, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 370
    move-object/from16 v0, v30

    array-length v1, v0

    if-eq v12, v1, :cond_7

    .line 371
    const/4 v13, 0x1

    .line 377
    :cond_7
    :goto_9
    if-nez v13, :cond_8

    if-nez v12, :cond_16

    .line 378
    :cond_8
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ansThreshold = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intensity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "light_intensity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saturation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need_sharpeness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sharpen_intensity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yReprocIntensity :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uvReprocIntensity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sceneContract: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_a
    return-void

    .line 240
    .end local v12    # "expect_size":I
    .end local v13    # "fail":Z
    :cond_9
    const-string v1, "camera.ans.th.front"

    const-string v2, "800"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 241
    const-string v1, "camera.ans.int.front"

    const-string v2, "5"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 242
    const-string v1, "camera.ans.l_int.front"

    const-string v2, "60"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 243
    const-string v1, "camera.ans.sat.front"

    const-string v2, "32"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 244
    const-string v1, "camera.ans.sharpe.front"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 245
    const-string v1, "camera.ans.s_int.front"

    const-string v2, "40"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 261
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_TH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [I

    .line 262
    .local v35, "th":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_INT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    .line 263
    .local v17, "ins":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_L_INT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [I

    .line 264
    .local v20, "lightIns":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_SAT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    .line 265
    .local v26, "sat":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_SHARP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [I

    .line 266
    .local v23, "needSat":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_S_INT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [I

    .line 267
    .local v32, "sharpIns":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_YPROC_INT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [I

    .line 268
    .local v39, "yIns":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_UVPROC_INT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [I

    .line 269
    .local v36, "uvIns":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_SCENE_CONTRACT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [I

    .line 270
    .local v31, "scnCont":[I
    invoke-static/range {v35 .. v35}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v10

    .line 271
    invoke-static/range {v17 .. v17}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v18

    .line 272
    invoke-static/range {v20 .. v20}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v21

    .line 273
    invoke-static/range {v26 .. v26}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v27

    .line 274
    invoke-static/range {v23 .. v23}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v24

    .line 275
    invoke-static/range {v32 .. v32}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v33

    .line 276
    invoke-static/range {v39 .. v39}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v40

    .line 277
    invoke-static/range {v36 .. v36}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v37

    .line 278
    invoke-static/range {v31 .. v31}, Lcom/android/camera/util/MorphoUtil;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v29

    .line 279
    goto/16 :goto_0

    .line 281
    .end local v17    # "ins":[I
    .end local v20    # "lightIns":[I
    .end local v23    # "needSat":[I
    .end local v26    # "sat":[I
    .end local v31    # "scnCont":[I
    .end local v32    # "sharpIns":[I
    .end local v35    # "th":[I
    .end local v36    # "uvIns":[I
    .end local v39    # "yIns":[I
    :cond_b
    if-eqz p1, :cond_c

    .line 282
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_th_main()Ljava/lang/String;

    move-result-object v10

    .line 283
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_int_main()Ljava/lang/String;

    move-result-object v18

    .line 284
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_l_int_main()Ljava/lang/String;

    move-result-object v21

    .line 285
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_sat_main()Ljava/lang/String;

    move-result-object v27

    .line 286
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_sharpe_main()Ljava/lang/String;

    move-result-object v24

    .line 287
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_s_int_main()Ljava/lang/String;

    move-result-object v33

    .line 288
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_yproc_int_main()Ljava/lang/String;

    move-result-object v40

    .line 289
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_uvproc_int_main()Ljava/lang/String;

    move-result-object v37

    .line 290
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_scene_contract_main()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 292
    :cond_c
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_th_front()Ljava/lang/String;

    move-result-object v10

    .line 293
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_int_front()Ljava/lang/String;

    move-result-object v18

    .line 294
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_l_int_front()Ljava/lang/String;

    move-result-object v21

    .line 295
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_sat_front()Ljava/lang/String;

    move-result-object v27

    .line 296
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_sharpe_front()Ljava/lang/String;

    move-result-object v24

    .line 297
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_s_int_front()Ljava/lang/String;

    move-result-object v33

    .line 298
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_yproc_int_front()Ljava/lang/String;

    move-result-object v40

    .line 299
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_uvproc_int_front()Ljava/lang/String;

    move-result-object v37

    .line 300
    invoke-virtual {v14}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_scene_contract_front()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 310
    .restart local v12    # "expect_size":I
    .restart local v13    # "fail":Z
    :cond_d
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 318
    :cond_e
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 326
    :cond_f
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 334
    :cond_10
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 342
    :cond_11
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 350
    :cond_12
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 358
    :cond_13
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 366
    :cond_14
    const/4 v13, 0x1

    goto/16 :goto_8

    .line 374
    :cond_15
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 390
    :cond_16
    const/16 v16, 0x0

    .line 391
    .local v16, "index":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_b
    array-length v1, v11

    if-ge v15, v1, :cond_17

    .line 392
    aget-object v1, v11, v15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, p2

    if-ge v0, v1, :cond_19

    .line 393
    if-lez v15, :cond_18

    add-int/lit8 v16, v15, -0x1

    .line 401
    :cond_17
    :goto_c
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lowlight setParametersForChroTuning  intensity_arr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v19, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " light_intensity_arr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v22, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saturation_arr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v28, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " need_sharpeness_arr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v25, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sharpen_intensity_arr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " yReprocIntensity_arr= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v41, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uvReprocIntensity_arr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v38, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sceneContract_arr= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v30, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    aget-object v2, v19, v16

    aget-object v3, v22, v16

    aget-object v4, v28, v16

    aget-object v5, v25, v16

    aget-object v6, v34, v16

    aget-object v7, v41, v16

    aget-object v8, v38, v16

    aget-object v9, v30, v16

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 393
    :cond_18
    const/16 v16, 0x0

    goto/16 :goto_c

    .line 395
    :cond_19
    array-length v1, v11

    add-int/lit8 v1, v1, -0x1

    if-ne v15, v1, :cond_1a

    .line 396
    move/from16 v16, v15

    .line 397
    goto/16 :goto_c

    .line 391
    :cond_1a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b
.end method


# virtual methods
.method public doEnhancement([B)I
    .locals 1
    .param p1, "writeOut"    # [B

    .prologue
    .line 124
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeDoEnhancementRefNum([B)I

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
    .line 137
    :try_start_0
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    const-string v1, "ArcsoftPicZoom.finalize() by gc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 142
    return-void

    .line 140
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getRefNum()J
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeGetRefNum()J

    move-result-wide v0

    return-wide v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 129
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->TAG:Ljava/lang/String;

    const-string v1, "ArcsoftPicZoom.release() in java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeFinalize()V

    goto :goto_0
.end method

.method public setHAL1InputImage(JJI[B)I
    .locals 1
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "pixelArrayFormat"    # I
    .param p6, "data"    # [B

    .prologue
    .line 117
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeHAL1SetInputImage(JJI[B)I

    move-result v0

    goto :goto_0
.end method

.method public setIntensity(J)V
    .locals 1
    .param p1, "lIntensity"    # J

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeSetIntensity(J)V

    .line 92
    return-void
.end method

.method public setLightIntensity(J)V
    .locals 1
    .param p1, "lLightIntensity"    # J

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeSetLightIntensity(J)V

    .line 100
    return-void
.end method

.method public setMetadata(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    .line 88
    return-void
.end method

.method public setNeedSharpen(Z)V
    .locals 0
    .param p1, "bNeedSharpen"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeSetNeedSharpen(Z)V

    .line 108
    return-void
.end method

.method public setRefNum(J)V
    .locals 1
    .param p1, "lRefNum"    # J

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeSetRefNum(J)V

    .line 84
    return-void
.end method

.method public setSaturation(J)V
    .locals 1
    .param p1, "lSaturation"    # J

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeSetSaturation(J)V

    .line 104
    return-void
.end method

.method public setScale(I)V
    .locals 0
    .param p1, "scale"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativesetScale(I)V

    return-void
.end method

.method public setSceneContract(I)V
    .locals 0
    .param p1, "iSceneContract"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativesetSceneContrast(I)V

    return-void
.end method

.method public setSharpenIntensity(J)V
    .locals 1
    .param p1, "lSharpenIntensity"    # J

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativeSetSharpenIntensity(J)V

    .line 96
    return-void
.end method

.method public setUVReprocIntensity(I)V
    .locals 0
    .param p1, "iUVReprocIntensity"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativesetUVReprocIntensity(I)V

    return-void
.end method

.method public setYReprocIntensity(I)V
    .locals 0
    .param p1, "iYReprocIntensity"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->nativesetYReprocIntensity(I)V

    return-void
.end method
