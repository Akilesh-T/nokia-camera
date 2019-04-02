.class public Lcom/android/camera/util/JpegUtilNative;
.super Ljava/lang/Object;
.source "JpegUtilNative.java"


# static fields
.field public static final ERROR_OUT_BUF_TOO_SMALL:I = -0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "jni_jpeg_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "JpegUtilNative"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/JpegUtilNative;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressJpegFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p1, "outBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "quality"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/util/JpegUtilNative;->compressJpegFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public static compressJpegFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;II)I
    .locals 4
    .param p0, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p1, "outBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "quality"    # I
    .param p3, "degrees"    # I

    .prologue
    const/4 v3, 0x0

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v1

    .line 191
    invoke-interface {p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/camera/util/JpegUtilNative;->compressJpegFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;I)I

    move-result v0

    return v0
.end method

.method public static compressJpegFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;I)I
    .locals 28
    .param p0, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p1, "outBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "quality"    # I
    .param p3, "crop"    # Landroid/graphics/Rect;
    .param p4, "degrees"    # I

    .prologue
    .line 212
    rem-int/lit8 v2, p4, 0x5a

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rotation must be a multiple of 90 degrees, was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 215
    move/from16 v0, p4

    rem-int/lit16 v2, v0, 0x168

    add-int/lit16 v2, v2, 0x2d0

    rem-int/lit16 v0, v2, 0x168

    move/from16 p4, v0

    .line 216
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    const-string v3, "Output buffer must be direct"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 217
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid crop rectangle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 219
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid crop rectangle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 221
    const/16 v20, 0x3

    .line 222
    .local v20, "NUM_PLANES":I
    invoke-interface/range {p0 .. p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only ImageFormat.YUV_420_888 is supported, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    invoke-interface/range {p0 .. p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 224
    invoke-interface/range {p0 .. p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v26

    .line 225
    .local v26, "planeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 227
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/nio/ByteBuffer;

    move-object/from16 v25, v0

    .line 228
    .local v25, "planeBuf":[Ljava/nio/ByteBuffer;
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v23, v0

    .line 229
    .local v23, "pixelStride":[I
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v27, v0

    .line 231
    .local v27, "rowStride":[I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    const/4 v2, 0x3

    move/from16 v0, v21

    if-ge v0, v2, :cond_5

    .line 232
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    .line 234
    .local v24, "plane":Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;
    invoke-interface/range {v24 .. v24}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 236
    invoke-interface/range {v24 .. v24}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v25, v21

    .line 237
    invoke-interface/range {v24 .. v24}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v2

    aput v2, v23, v21

    .line 238
    invoke-interface/range {v24 .. v24}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v2

    aput v2, v27, v21

    .line 231
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 212
    .end local v20    # "NUM_PLANES":I
    .end local v21    # "i":I
    .end local v23    # "pixelStride":[I
    .end local v24    # "plane":Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;
    .end local v25    # "planeBuf":[Ljava/nio/ByteBuffer;
    .end local v26    # "planeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;>;"
    .end local v27    # "rowStride":[I
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 217
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 219
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 222
    .restart local v20    # "NUM_PLANES":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 225
    .restart local v26    # "planeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 241
    .restart local v21    # "i":I
    .restart local v23    # "pixelStride":[I
    .restart local v25    # "planeBuf":[Ljava/nio/ByteBuffer;
    .restart local v27    # "rowStride":[I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 243
    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/Rect;->left:I

    .line 244
    .local v15, "cropLeft":I
    const/4 v2, 0x0

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 245
    invoke-interface/range {p0 .. p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 247
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .line 248
    .local v17, "cropRight":I
    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 249
    invoke-interface/range {p0 .. p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 251
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 252
    .local v16, "cropTop":I
    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 253
    invoke-interface/range {p0 .. p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 255
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .line 256
    .local v18, "cropBot":I
    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 257
    invoke-interface/range {p0 .. p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v2

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 259
    move/from16 v0, p4

    rem-int/lit16 v0, v0, 0x168

    move/from16 p4, v0

    .line 261
    move/from16 v0, p4

    rsub-int v2, v0, 0x168

    div-int/lit8 v19, v2, 0x5a

    .line 264
    .local v19, "rot90":I
    invoke-interface/range {p0 .. p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    invoke-interface/range {p0 .. p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v25, v4

    const/4 v5, 0x0

    aget v5, v23, v5

    const/4 v6, 0x0

    aget v6, v27, v6

    const/4 v7, 0x1

    aget-object v7, v25, v7

    const/4 v8, 0x1

    aget v8, v23, v8

    const/4 v9, 0x1

    aget v9, v27, v9

    const/4 v10, 0x2

    aget-object v10, v25, v10

    const/4 v11, 0x2

    aget v11, v23, v11

    const/4 v12, 0x2

    aget v12, v27, v12

    move-object/from16 v13, p1

    move/from16 v14, p2

    .line 263
    invoke-static/range {v2 .. v19}, Lcom/android/camera/util/JpegUtilNative;->compressJpegFromYUV420p(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIII)I

    move-result v22

    .line 274
    .local v22, "numBytesWritten":I
    return v22
.end method

.method public static compressJpegFromYUV420p(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIII)I
    .locals 19
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "yBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "yPStride"    # I
    .param p4, "yRStride"    # I
    .param p5, "cbBuf"    # Ljava/nio/ByteBuffer;
    .param p6, "cbPStride"    # I
    .param p7, "cbRStride"    # I
    .param p8, "crBuf"    # Ljava/nio/ByteBuffer;
    .param p9, "crPStride"    # I
    .param p10, "crRStride"    # I
    .param p11, "outBuf"    # Ljava/nio/ByteBuffer;
    .param p12, "quality"    # I
    .param p13, "cropLeft"    # I
    .param p14, "cropTop"    # I
    .param p15, "cropRight"    # I
    .param p16, "cropBottom"    # I
    .param p17, "rot90"    # I

    .prologue
    .line 146
    sget-object v0, Lcom/android/camera/util/JpegUtilNative;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Compressing jpeg with size = (%d, %d); y-channel pixel stride = %d; y-channel row stride =  %d; cb-channel pixel stride = %d; cb-channel row stride =  %d; cr-channel pixel stride = %d; cr-channel row stride =  %d; crop = [(%d, %d) - (%d, %d)]; rotation = %d * 90 deg. "

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 156
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 157
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 146
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p11 .. p11}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    .line 158
    invoke-static/range {v0 .. v18}, Lcom/android/camera/util/JpegUtilNative;->compressJpegFromYUV420pNative(IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IIIIIII)I

    move-result v0

    return v0
.end method

.method private static native compressJpegFromYUV420pNative(IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IIIIIII)I
.end method

.method private static native copyImagePlaneToBitmap(IILjava/lang/Object;IILjava/lang/Object;I)V
.end method

.method public static copyImagePlaneToBitmap(Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;Landroid/graphics/Bitmap;I)V
    .locals 7
    .param p0, "plane"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rot90"    # I

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_0

    .line 124
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported bitmap format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 128
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 130
    .local v1, "height":I
    invoke-interface {p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v3

    .line 131
    invoke-interface {p0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v4

    move-object v5, p1

    move v6, p2

    .line 130
    invoke-static/range {v0 .. v6}, Lcom/android/camera/util/JpegUtilNative;->copyImagePlaneToBitmap(IILjava/lang/Object;IILjava/lang/Object;I)V

    .line 132
    return-void
.end method
