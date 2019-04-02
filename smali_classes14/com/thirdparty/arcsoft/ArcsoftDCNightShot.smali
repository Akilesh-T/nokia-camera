.class public Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;
.super Ljava/lang/Object;
.source "ArcsoftDCNightShot.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mNativeCache:J

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->TAG:Ljava/lang/String;

    .line 16
    const/4 v1, 0x0

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->mIsSupported:Z

    .line 22
    :try_start_0
    const-string v1, "jni_arcsoft_dcnightshot"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->nativeInit()V

    .line 24
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->mIsSupported:Z

    .line 25
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_dcnightshot OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->TAG:Ljava/lang/String;

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

    .line 28
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->TAG:Ljava/lang/String;

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

.method public constructor <init>(JJI)V
    .locals 1
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "pixelArrayFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->nativeSetup(JJI)V

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->mIsSupported:Z

    return v0
.end method

.method private native nativeDoEnhancement([B)I
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeSetCalibData([BI)I
.end method

.method private native nativeSetInputImage(IJJI[B)I
.end method

.method private native nativeSetNSParam(IIZII)I
.end method

.method private native nativeSetup(JJI)V
.end method


# virtual methods
.method public doEnhancement([B)I
    .locals 1
    .param p1, "writeOut"    # [B

    .prologue
    .line 53
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->nativeDoEnhancement([B)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->nativeFinalize()V

    goto :goto_0
.end method

.method public setCalibData([B)I
    .locals 2
    .param p1, "calibData"    # [B

    .prologue
    const/4 v0, -0x1

    .line 58
    sget-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->mIsSupported:Z

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 61
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->nativeSetCalibData([BI)I

    move-result v0

    goto :goto_0
.end method

.method public setInputImage(Lcom/android/camera/one/CameraType;JJI[B)I
    .locals 8
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "lWidth"    # J
    .param p4, "lHeight"    # J
    .param p6, "pixelArrayFormat"    # I
    .param p7, "data"    # [B

    .prologue
    .line 48
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/one/CameraType;->getType()I

    move-result v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->nativeSetInputImage(IJJI[B)I

    move-result v0

    goto :goto_0
.end method

.method public setNSParam(IIZII)I
    .locals 1
    .param p1, "colorIso"    # I
    .param p2, "monoIso"    # I
    .param p3, "keepSameSize"    # Z
    .param p4, "rstWidth"    # I
    .param p5, "rstHeight"    # I

    .prologue
    .line 65
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->nativeSetNSParam(IIZII)I

    move-result v0

    goto :goto_0
.end method
