.class public Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;
.super Ljava/lang/Object;
.source "ArcsoftDCVideoRefocus.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->TAG:Ljava/lang/String;

    .line 16
    const/4 v1, 0x0

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->mIsSupported:Z

    .line 21
    :try_start_0
    const-string v1, "jni_arcsoft_dcrefocus"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->nativeInit()V

    .line 23
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->mIsSupported:Z

    .line 24
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_dcrefocus OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->TAG:Ljava/lang/String;

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

    .line 27
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->TAG:Ljava/lang/String;

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
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->nativeSetup(JJI)V

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->mIsSupported:Z

    return v0
.end method

.method private native nativeDoRefocus(JJILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeSetBlurIntensity(I)I
.end method

.method private native nativeSetCalibData([BI)I
.end method

.method private native nativeSetFocusPos(II)I
.end method

.method private native nativeSetup(JJI)V
.end method


# virtual methods
.method public doRefocus(Landroid/media/Image;Landroid/media/Image;)I
    .locals 25
    .param p1, "colorImage"    # Landroid/media/Image;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "monoImage"    # Landroid/media/Image;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 49
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

    .line 50
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

    .line 51
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

    .line 52
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

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v18

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v21

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v24

    move-object/from16 v1, p0

    .line 49
    invoke-direct/range {v1 .. v24}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->nativeDoRefocus(JJILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->nativeFinalize()V

    goto :goto_0
.end method

.method public setBlurIntensity(I)I
    .locals 1
    .param p1, "blurValue"    # I

    .prologue
    .line 64
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->nativeSetBlurIntensity(I)I

    move-result v0

    goto :goto_0
.end method

.method public setCalibData([B)I
    .locals 1
    .param p1, "calibData"    # [B

    .prologue
    .line 59
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->nativeSetCalibData([BI)I

    move-result v0

    goto :goto_0
.end method

.method public setFocusPos(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 69
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->nativeSetFocusPos(II)I

    move-result v0

    goto :goto_0
.end method
