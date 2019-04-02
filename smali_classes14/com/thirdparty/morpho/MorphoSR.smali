.class public Lcom/thirdparty/morpho/MorphoSR;
.super Ljava/lang/Object;
.source "MorphoSR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thirdparty/morpho/MorphoSR$ParamName;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private isBackCam:Z

.field private mNativeContext:J

.field private p:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/thirdparty/morpho/MorphoSR;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

    .line 16
    sput-boolean v3, Lcom/thirdparty/morpho/MorphoSR;->mIsSupported:Z

    .line 19
    sput-boolean v3, Lcom/thirdparty/morpho/MorphoSR;->DEBUG:Z

    .line 32
    :try_start_0
    const-string v1, "jni_morpho_sr"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/thirdparty/morpho/MorphoSR;->nativeInit()V

    .line 34
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/morpho/MorphoSR;->mIsSupported:Z

    .line 35
    sget-object v1, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_morpho_sr OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

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

    .line 38
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

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

.method public constructor <init>(JJIIZII)V
    .locals 13
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "targetInputSize"    # I
    .param p6, "pixelArrayFormat"    # I
    .param p7, "isBackCamera"    # Z
    .param p8, "isoValue"    # I
    .param p9, "alignValue"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/thirdparty/morpho/MorphoSR;->p:[I

    .line 18
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/thirdparty/morpho/MorphoSR;->isBackCam:Z

    .line 51
    sget-boolean v2, Lcom/thirdparty/morpho/MorphoSR;->mIsSupported:Z

    if-nez v2, :cond_0

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v12, "unknown"

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p8

    move/from16 v11, p7

    invoke-direct/range {v3 .. v12}, Lcom/thirdparty/morpho/MorphoSR;->nativeSetup(JJIIIZLjava/lang/String;)V

    .line 56
    move/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/thirdparty/morpho/MorphoSR;->nativeSetAlignment(I)Z

    .line 57
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/thirdparty/morpho/MorphoSR;->isBackCam:Z

    goto :goto_0

    .line 17
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/thirdparty/morpho/MorphoSR;->mIsSupported:Z

    return v0
.end method

.method private native nativeDoEnhancementRefNum([B)Z
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetRefNum()J
.end method

.method private static native nativeInit()V
.end method

.method private native nativeSetAlignment(I)Z
.end method

.method private native nativeSetCamParam(II)Z
.end method

.method private native nativeSetChromaNoiseReductionLevel(I)V
.end method

.method private native nativeSetContrast(I)V
.end method

.method private native nativeSetGain(I)V
.end method

.method private native nativeSetGamma(I)V
.end method

.method private native nativeSetInputImage([B)Z
.end method

.method private native nativeSetLumaNoiseReductionLevel(I)V
.end method

.method private native nativeSetMergeNumber(I)V
.end method

.method private native nativeSetObjBlurCorrectionLevel(I)V
.end method

.method private native nativeSetRefNum(J)V
.end method

.method private native nativeSetSharpness(I)V
.end method

.method private native nativeSetup(JJIIIZLjava/lang/String;)V
.end method


# virtual methods
.method public doEnhancement([B)I
    .locals 1
    .param p1, "writeOut"    # [B

    .prologue
    .line 84
    sget-boolean v0, Lcom/thirdparty/morpho/MorphoSR;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/thirdparty/morpho/MorphoSR;->nativeDoEnhancementRefNum([B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

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
    .line 99
    :try_start_0
    sget-object v0, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

    const-string v1, "MorphoHDR.finalize() by gc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/thirdparty/morpho/MorphoSR;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getRefNum()J
    .locals 2

    .prologue
    .line 62
    sget-boolean v0, Lcom/thirdparty/morpho/MorphoSR;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 63
    const-wide/16 v0, -0x1

    .line 65
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/morpho/MorphoSR;->nativeGetRefNum()J

    move-result-wide v0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 89
    sget-boolean v0, Lcom/thirdparty/morpho/MorphoSR;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    sget-object v0, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

    const-string v1, "MorphoHDR.release() in java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/thirdparty/morpho/MorphoSR;->nativeFinalize()V

    goto :goto_0
.end method

.method public setInputImage([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 76
    sget-boolean v0, Lcom/thirdparty/morpho/MorphoSR;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/thirdparty/morpho/MorphoSR;->nativeSetInputImage([B)Z

    move-result v0

    goto :goto_0
.end method

.method public setMetaParameter(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 8
    .param p1, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 138
    if-nez p1, :cond_1

    .line 166
    :cond_0
    return-void

    .line 140
    :cond_1
    sget-boolean v2, Lcom/thirdparty/morpho/MorphoSR;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 141
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHDR_HDR_FSMS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_FSMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHDR_HDR_GDSL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_GDSL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHDR_HDR_GRSL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_GRSL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHDR_HDR_RRRT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_RRRT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHDR_HDR_GRT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_GRT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHDR_HDR_FMCCL_P1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_FMCCL_P1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHDR_HDR_FMCCL_P2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_FMCCL_P2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 152
    .local v1, "sa":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fsms:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_FSMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_gdsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_GDSL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_GRSL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_rrrt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_RRRT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_GRT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p1:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_FMCCL_P1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p2:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->MHDR_HDR_FMCCL_P2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    invoke-static {}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->values()[Lcom/thirdparty/morpho/MorphoSR$ParamName;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 161
    .local v0, "pn":Lcom/thirdparty/morpho/MorphoSR$ParamName;
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 162
    iget-object v6, p0, Lcom/thirdparty/morpho/MorphoSR;->p:[I

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v7

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v6, v7

    .line 163
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    iget-object v6, p0, Lcom/thirdparty/morpho/MorphoSR;->p:[I

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v7

    aget v6, v6, v7

    invoke-direct {p0, v2, v6}, Lcom/thirdparty/morpho/MorphoSR;->nativeSetCamParam(II)Z

    .line 160
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 108
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 109
    .local v1, "sa":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/thirdparty/morpho/MorphoSR;->isBackCam:Z

    if-nez v2, :cond_1

    .line 110
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fsms:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-hdr-fsms"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_gdsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-hdr-gdsl"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-hdr-grsl"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_rrrt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-hdr-rrrt"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-hdr-grt"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p1:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-hdr-fmccl-p1"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p2:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-hdr-fmccl-p2"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    :goto_0
    invoke-static {}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->values()[Lcom/thirdparty/morpho/MorphoSR$ParamName;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 128
    .local v0, "pn":Lcom/thirdparty/morpho/MorphoSR$ParamName;
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v6, p0, Lcom/thirdparty/morpho/MorphoSR;->p:[I

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v7

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v6, v7

    .line 130
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    iget-object v6, p0, Lcom/thirdparty/morpho/MorphoSR;->p:[I

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v7

    aget v6, v6, v7

    invoke-direct {p0, v2, v6}, Lcom/thirdparty/morpho/MorphoSR;->nativeSetCamParam(II)Z

    .line 127
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 118
    .end local v0    # "pn":Lcom/thirdparty/morpho/MorphoSR$ParamName;
    :cond_1
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fsms:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-hdr-fsms"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_gdsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-hdr-gdsl"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-hdr-grsl"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_rrrt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-hdr-rrrt"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-hdr-grt"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p1:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-hdr-fmccl-p1"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p2:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-hdr-fmccl-p2"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 135
    :cond_2
    return-void
.end method

.method public setParameters(Lcom/android/camera/util/FihOpticalConfiguration;)V
    .locals 8
    .param p1, "parameters"    # Lcom/android/camera/util/FihOpticalConfiguration;

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 198
    :cond_0
    return-void

    .line 171
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 172
    .local v1, "sa":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/thirdparty/morpho/MorphoSR;->isBackCam:Z

    if-nez v2, :cond_3

    .line 173
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fsms:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_hdr_fsms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_gdsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_hdr_gdsl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_hdr_grsl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_rrrt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_hdr_rrrt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_hdr_grt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p1:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_hdr_fmccl_p1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p2:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_hdr_fmccl_p2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    :goto_0
    invoke-static {}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->values()[Lcom/thirdparty/morpho/MorphoSR$ParamName;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 191
    .local v0, "pn":Lcom/thirdparty/morpho/MorphoSR$ParamName;
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 192
    iget-object v6, p0, Lcom/thirdparty/morpho/MorphoSR;->p:[I

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v7

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v6, v7

    .line 193
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    iget-object v6, p0, Lcom/thirdparty/morpho/MorphoSR;->p:[I

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v7

    aget v6, v6, v7

    invoke-direct {p0, v2, v6}, Lcom/thirdparty/morpho/MorphoSR;->nativeSetCamParam(II)Z

    .line 190
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 181
    .end local v0    # "pn":Lcom/thirdparty/morpho/MorphoSR$ParamName;
    :cond_3
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fsms:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_mhdr_hdr_fsms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_gdsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_mhdr_hdr_gdsl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_mhdr_hdr_grsl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_rrrt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_mhdr_hdr_rrrt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_mhdr_hdr_grt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p1:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_mhdr_hdr_fmccl_p1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p2:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_mhdr_hdr_fmccl_p2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public setRefNum(J)V
    .locals 1
    .param p1, "lRefNum"    # J

    .prologue
    .line 69
    sget-boolean v0, Lcom/thirdparty/morpho/MorphoSR;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/morpho/MorphoSR;->nativeSetRefNum(J)V

    goto :goto_0
.end method
