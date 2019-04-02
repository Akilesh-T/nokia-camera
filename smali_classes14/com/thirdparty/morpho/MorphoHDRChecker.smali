.class public Lcom/thirdparty/morpho/MorphoHDRChecker;
.super Ljava/lang/Object;
.source "MorphoHDRChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thirdparty/morpho/MorphoHDRChecker$FrontCamParamName;,
        Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MorphoDRChecker_JAVA"

.field private static mIsSupported:Z


# instance fields
.field private CamParamV:[Ljava/lang/String;

.field private frontCamParamV:[Ljava/lang/String;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    const/4 v1, 0x0

    sput-boolean v1, Lcom/thirdparty/morpho/MorphoHDRChecker;->mIsSupported:Z

    .line 54
    :try_start_0
    const-string v1, "jni_hdr_checker"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeInit()V

    .line 56
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/morpho/MorphoHDRChecker;->mIsSupported:Z

    .line 57
    const-string v1, "MorphoDRChecker_JAVA"

    const-string v2, "loadLibrary jni_morpho_camera DR checker OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MorphoDRChecker_JAVA"

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

    .line 60
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MorphoDRChecker_JAVA"

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
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/thirdparty/morpho/MorphoHDRChecker;->CamParamV:[Ljava/lang/String;

    .line 16
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/thirdparty/morpho/MorphoHDRChecker;->frontCamParamV:[Ljava/lang/String;

    .line 73
    sget-boolean v0, Lcom/thirdparty/morpho/MorphoHDRChecker;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v10, "unknown"

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeSetup(JJIIIZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/thirdparty/morpho/MorphoHDRChecker;->mIsSupported:Z

    return v0
.end method

.method private native nativeDoEvaluationRefNum()Z
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetEv()Ljava/lang/String;
.end method

.method private static native nativeInit()V
.end method

.method private native nativeSetFrontCamParam(ILjava/lang/String;)Z
.end method

.method private native nativeSetInputImage([B)Z
.end method

.method private native nativeSetIsFrontCam(Z)V
.end method

.method private native nativeSetLuxIndex(I)Z
.end method

.method private native nativeSetMainCamParam(ILjava/lang/String;)Z
.end method

.method private native nativeSetup(JJIIIZLjava/lang/String;)V
.end method


# virtual methods
.method public doEvaluation()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/thirdparty/morpho/MorphoHDRChecker;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeDoEvaluationRefNum()Z

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
    .line 216
    :try_start_0
    const-string v0, "MorphoDRChecker_JAVA"

    const-string v1, "MorphoDRChecker.finalize() by gc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 221
    return-void

    .line 219
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEvdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeGetEv()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 206
    sget-boolean v0, Lcom/thirdparty/morpho/MorphoHDRChecker;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v0, "MorphoDRChecker_JAVA"

    const-string v1, "MorphoDRChecker.release() in java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeFinalize()V

    goto :goto_0
.end method

.method public setFrontCamParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 9
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v4, 0x0

    .line 147
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 148
    .local v1, "sa":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_ev:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-ev"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vb:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-vb"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_b:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-b"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-vd"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_d:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-d"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_bvd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-bvd"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_bd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-bd"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vbvr:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-vbvr"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vbd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-vbd"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_0:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-th-0"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_1:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-th-1"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_2:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-th-2"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_3:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-th-3"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_array:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "fhdr-array"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    invoke-static {}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->values()[Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 165
    .local v0, "pn":Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v7, p0, Lcom/thirdparty/morpho/MorphoHDRChecker;->CamParamV:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v8

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    .line 167
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    iget-object v7, p0, Lcom/thirdparty/morpho/MorphoHDRChecker;->CamParamV:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-direct {p0, v2, v7}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeSetFrontCamParam(ILjava/lang/String;)Z

    .line 164
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 171
    .end local v0    # "pn":Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;
    :cond_1
    return v4
.end method

.method public setInputImage([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 95
    sget-boolean v0, Lcom/thirdparty/morpho/MorphoHDRChecker;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeSetInputImage([B)Z

    move-result v0

    goto :goto_0
.end method

.method public setIsFrontCam(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeSetIsFrontCam(Z)V

    .line 91
    return-void
.end method

.method public setLuxIndex(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 82
    if-gez p1, :cond_0

    .line 83
    const/4 p1, 0x0

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeSetLuxIndex(I)Z

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public setMainCamParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 9
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v4, 0x0

    .line 119
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 120
    .local v1, "sa":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_ev:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-ev"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vb:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-vb"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_b:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-b"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-vd"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_d:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-d"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_bvd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-bvd"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_bd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-bd"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vbvr:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-vbvr"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vbd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-vbd"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_0:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-th-0"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_1:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-th-1"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_2:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-th-2"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_3:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-th-3"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_array:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    const-string v3, "mhdr-array"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    invoke-static {}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->values()[Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 137
    .local v0, "pn":Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v7, p0, Lcom/thirdparty/morpho/MorphoHDRChecker;->CamParamV:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v8

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    .line 139
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    iget-object v7, p0, Lcom/thirdparty/morpho/MorphoHDRChecker;->CamParamV:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-direct {p0, v2, v7}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeSetMainCamParam(ILjava/lang/String;)Z

    .line 136
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 143
    .end local v0    # "pn":Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;
    :cond_1
    return v4
.end method

.method public setParameters(Lcom/android/camera/util/FihOpticalConfiguration;)V
    .locals 8
    .param p1, "parameters"    # Lcom/android/camera/util/FihOpticalConfiguration;

    .prologue
    .line 177
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 178
    .local v1, "sa":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_ev:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_ev()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vb:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_vb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_b:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_vb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_d:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_bvd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_bvd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_bd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_bd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vbvr:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_vbvr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_vbd:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_vbd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_0:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_th_0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_1:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_th_1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_2:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_th_2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_th_3:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_th_3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    sget-object v2, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->hdr_array:Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    invoke-virtual {v2}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_fhdr_array()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    invoke-static {}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->values()[Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 194
    .local v0, "pn":Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v6, p0, Lcom/thirdparty/morpho/MorphoHDRChecker;->CamParamV:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v7

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v6, v7

    .line 196
    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v2

    iget-object v6, p0, Lcom/thirdparty/morpho/MorphoHDRChecker;->CamParamV:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-direct {p0, v2, v6}, Lcom/thirdparty/morpho/MorphoHDRChecker;->nativeSetFrontCamParam(ILjava/lang/String;)Z

    .line 193
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 199
    .end local v0    # "pn":Lcom/thirdparty/morpho/MorphoHDRChecker$CamParamName;
    :cond_1
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;Z)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "isFrontCam"    # Z

    .prologue
    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/thirdparty/morpho/MorphoHDRChecker;->setFrontCamParameters(Landroid/hardware/Camera$Parameters;)Z

    .line 115
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lcom/thirdparty/morpho/MorphoHDRChecker;->setMainCamParameters(Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0
.end method
