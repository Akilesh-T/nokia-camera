.class public Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;
.super Ljava/lang/Object;
.source "ArcsoftPicSelfieVideo.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->TAG:Ljava/lang/String;

    .line 13
    const/4 v1, 0x0

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->mIsSupported:Z

    .line 16
    :try_start_0
    const-string v1, "jni_arcsoft_picselfie"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->nativeInit()V

    .line 18
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->mIsSupported:Z

    .line 19
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_picselfie OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->TAG:Ljava/lang/String;

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

    .line 22
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->TAG:Ljava/lang/String;

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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->nativeSetup(JJI)V

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->mIsSupported:Z

    return v0
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeProcessImage(JJILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
.end method

.method private native nativeSetBokehLevel(F)V
.end method

.method private native nativeSetup(JJI)V
.end method


# virtual methods
.method public processImage(Landroid/media/Image;)I
    .locals 16
    .param p1, "image"    # Landroid/media/Image;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v6

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v15

    move-object/from16 v1, p0

    .line 45
    invoke-direct/range {v1 .. v15}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->nativeProcessImage(JJILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->nativeFinalize()V

    goto :goto_0
.end method

.method public setBokehLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 39
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    int-to-float v0, p1

    sget v1, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL_SCALE:F

    mul-float/2addr v0, v1

    sget v1, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_BOKEH_MAX:F

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->nativeSetBokehLevel(F)V

    goto :goto_0
.end method
