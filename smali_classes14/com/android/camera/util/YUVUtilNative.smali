.class public Lcom/android/camera/util/YUVUtilNative;
.super Ljava/lang/Object;
.source "YUVUtilNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "jni_yuv_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNV21FromYUV420Imgae(Landroid/media/Image;[B)V
    .locals 13
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "data"    # [B

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 44
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    .line 45
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 46
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 47
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    aget-object v9, v9, v12

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    move-object v12, p1

    .line 44
    invoke-static/range {v0 .. v12}, Lcom/android/camera/util/YUVUtilNative;->nativeGetNV21FromYUV420Image(IIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[B)V

    .line 49
    return-void
.end method

.method public static native mergeBrandLogoNV21([BII[BIIIII)V
.end method

.method public static mergeBrandLogoYUV420Image(Landroid/media/Image;[BIIII)V
    .locals 17
    .param p0, "image"    # Landroid/media/Image;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "logo"    # [B
    .param p2, "logoWidth"    # I
    .param p3, "logoHeight"    # I
    .param p4, "orientation"    # I
    .param p5, "offset"    # I

    .prologue
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    .line 36
    invoke-static/range {v0 .. v16}, Lcom/android/camera/util/YUVUtilNative;->nativeMergeBrandLogoYUV420(IIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[BIIII)V

    .line 41
    return-void
.end method

.method public static native mirrorNV21([BIIII)V
.end method

.method public static mirrorYUV420Image(Landroid/media/Image;I)V
    .locals 13
    .param p0, "image"    # Landroid/media/Image;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "orientation"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 28
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    .line 29
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 30
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 31
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    aget-object v9, v9, v12

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    move v12, p1

    .line 28
    invoke-static/range {v0 .. v12}, Lcom/android/camera/util/YUVUtilNative;->nativeMirrorYUV420(IIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;III)V

    .line 33
    return-void
.end method

.method private static native nativeGetNV21FromYUV420Image(IIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[B)V
.end method

.method private static native nativeMergeBrandLogoYUV420(IIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[BIIII)V
.end method

.method private static native nativeMirrorYUV420(IIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;III)V
.end method
