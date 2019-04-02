.class public Lcom/thirdparty/fih/FihUndistortion;
.super Ljava/lang/Object;
.source "FihUndistortion.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/thirdparty/fih/FihUndistortion;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thirdparty/fih/FihUndistortion;->TAG:Ljava/lang/String;

    .line 5
    const/4 v1, 0x0

    sput-boolean v1, Lcom/thirdparty/fih/FihUndistortion;->mIsSupported:Z

    .line 12
    :try_start_0
    const-string v1, "jni_fih_undistort"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/thirdparty/fih/FihUndistortion;->nativeInit()V

    .line 14
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/fih/FihUndistortion;->mIsSupported:Z

    .line 15
    sget-object v1, Lcom/thirdparty/fih/FihUndistortion;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_fih_undistort OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :goto_0
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/thirdparty/fih/FihUndistortion;->TAG:Ljava/lang/String;

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

    .line 18
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/thirdparty/fih/FihUndistortion;->TAG:Ljava/lang/String;

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

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-boolean v0, Lcom/thirdparty/fih/FihUndistortion;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/fih/FihUndistortion;->nativeSetup(II)V

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/thirdparty/fih/FihUndistortion;->mIsSupported:Z

    return v0
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeSetup(II)V
.end method

.method private native nativeUndistortionProcessNV21(IIII[B)I
.end method


# virtual methods
.method public processNV21(IIII[B)I
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stride"    # I
    .param p4, "pixelArrayFormat"    # I
    .param p5, "data"    # [B

    .prologue
    .line 33
    sget-boolean v0, Lcom/thirdparty/fih/FihUndistortion;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/thirdparty/fih/FihUndistortion;->nativeUndistortionProcessNV21(IIII[B)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/thirdparty/fih/FihUndistortion;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/fih/FihUndistortion;->nativeFinalize()V

    goto :goto_0
.end method
