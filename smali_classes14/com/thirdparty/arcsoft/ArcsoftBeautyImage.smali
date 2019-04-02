.class public Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;
.super Ljava/lang/Object;
.source "ArcsoftBeautyImage.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->TAG:Ljava/lang/String;

    .line 7
    const/4 v1, 0x0

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->mIsSupported:Z

    .line 10
    :try_start_0
    const-string v1, "jni_arcsoft_beauty"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->nativeInit()V

    .line 12
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->mIsSupported:Z

    .line 13
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_beauty OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->TAG:Ljava/lang/String;

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

    .line 16
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 17
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->TAG:Ljava/lang/String;

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

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->nativeSetup(JJI)V

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->mIsSupported:Z

    return v0
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeProcessImage(JJI[B)I
.end method

.method private native nativeSetSoftLevel(I)V
.end method

.method private native nativeSetWhitenLevel(I)V
.end method

.method private native nativeSetup(JJI)V
.end method


# virtual methods
.method public processImage(JJI[B)I
    .locals 1
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "pixelArrayFormat"    # I
    .param p6, "data"    # [B

    .prologue
    .line 39
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->nativeProcessImage(JJI[B)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->nativeFinalize()V

    goto :goto_0
.end method

.method public setBeautyLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 33
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    int-to-float v0, p1

    sget v1, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL_SCALE:F

    mul-float/2addr v0, v1

    sget v1, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_SOFTEN_MAX:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->nativeSetWhitenLevel(I)V

    .line 35
    int-to-float v0, p1

    sget v1, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL_SCALE:F

    mul-float/2addr v0, v1

    sget v1, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_WHITEN_MAX:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->nativeSetSoftLevel(I)V

    goto :goto_0
.end method
