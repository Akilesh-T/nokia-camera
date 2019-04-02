.class public Lcom/thirdparty/arcsoft/ArcsoftHDR;
.super Ljava/lang/Object;
.source "ArcsoftHDR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;
    }
.end annotation


# static fields
.field public static final DEFAULT_BRIGHTNESS:J = 0x0L

.field public static final DEFAULT_CAMERA_MODE:J = 0x0L

.field public static final DEFAULT_PERFOMANCE_MODE:J = 0x2L

.field public static final DEFAULT_TONE_LENGTH:J = 0x19L

.field public static final IMAGE_INPUT_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mHDRParameter:[I

.field private mNativeCache:J

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/thirdparty/arcsoft/ArcsoftHDR;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR;->TAG:Ljava/lang/String;

    .line 20
    const/4 v1, 0x0

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mIsSupported:Z

    .line 38
    :try_start_0
    const-string v1, "jni_arcsoft_hdr"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->nativeInit()V

    .line 40
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mIsSupported:Z

    .line 41
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_hdr OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR;->TAG:Ljava/lang/String;

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

    .line 44
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR;->TAG:Ljava/lang/String;

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

.method public constructor <init>(JJIJZ)V
    .locals 1
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "pixelArrayFormat"    # I
    .param p6, "lCameraMode"    # J
    .param p8, "isBackCamera"    # Z

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->nativeSetup(JJIJ)V

    .line 61
    invoke-direct {p0, p8}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->getHDRParameters(Z)[I

    move-result-object v0

    iput-object v0, p0, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mHDRParameter:[I

    goto :goto_0
.end method

.method private getHDRParameters(Z)[I
    .locals 7
    .param p1, "isBackCamera"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "performanceType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 83
    .local v0, "brightnessLevel":Ljava/lang/String;
    const/4 v3, 0x0

    .line 84
    .local v3, "toneLengthLevel":Ljava/lang/String;
    const/4 v2, 0x0

    .line 86
    .local v2, "saturationLevel":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 87
    const-string v4, "camera.hdr.perf.main"

    const-string v5, "2"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v4, "camera.hdr.bright.main"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v4, "camera.hdr.tone.main"

    const-string v5, "25"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    const-string v4, "camera.hdr.sat.main"

    const-string v5, "12"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    :goto_0
    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    return-object v4

    .line 92
    :cond_0
    const-string v4, "camera.hdr.perf.front"

    const-string v5, "2"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v4, "camera.hdr.bright.front"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v4, "camera.hdr.tone.front"

    const-string v5, "25"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    const-string v4, "camera.hdr.sat.front"

    const-string v5, "12"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mIsSupported:Z

    return v0
.end method

.method private native nativeDoHDR(IJJJJ[B)I
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeHAL1SetInputImage(IJJI[B)I
.end method

.method private static native nativeInit()V
.end method

.method private native nativeSetup(JJIJ)V
.end method


# virtual methods
.method public doHDR(I[B)I
    .locals 11
    .param p1, "imageOutIndex"    # I
    .param p2, "writeOut"    # [B

    .prologue
    .line 71
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mHDRParameter:[I

    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->TONE_LENGTH:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->ordinal()I

    move-result v1

    aget v0, v0, v1

    int-to-long v2, v0

    iget-object v0, p0, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mHDRParameter:[I

    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->BRIGHTNESS:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->ordinal()I

    move-result v1

    aget v0, v0, v1

    int-to-long v4, v0

    iget-object v0, p0, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mHDRParameter:[I

    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->SATURATION:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->ordinal()I

    move-result v1

    aget v0, v0, v1

    int-to-long v6, v0

    iget-object v0, p0, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mHDRParameter:[I

    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->PERFORMANCE:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->ordinal()I

    move-result v1

    aget v0, v0, v1

    int-to-long v8, v0

    move-object v0, p0

    move v1, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->nativeDoHDR(IJJJJ[B)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->nativeFinalize()V

    goto :goto_0
.end method

.method public setHAL1InputImage(IJJI[B)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "lWidth"    # J
    .param p4, "lHeight"    # J
    .param p6, "pixelArrayFormat"    # I
    .param p7, "data"    # [B

    .prologue
    .line 66
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftHDR;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->nativeHAL1SetInputImage(IJJI[B)I

    move-result v0

    goto :goto_0
.end method
