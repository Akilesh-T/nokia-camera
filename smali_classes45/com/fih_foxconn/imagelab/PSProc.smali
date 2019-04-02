.class public Lcom/fih_foxconn/imagelab/PSProc;
.super Ljava/lang/Object;
.source "PSProc.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PSProc"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lcom/fih_foxconn/imagelab/PSInit;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native MattingWithBinaryMask([B[BIIII)V
.end method

.method private static native PreviewSegmentWithFaceDriverCoordinateIfDebug([BZIIIIIILjava/util/ArrayList;FZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZIIIIII",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;FZZZ)V"
        }
    .end annotation
.end method

.method private static native PreviewSegmentWithFaceHAL3IfDebug(IIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIILjava/util/ArrayList;FZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Ljava/nio/ByteBuffer;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;FZZZ)V"
        }
    .end annotation
.end method

.method private static native RefineBinaryMask([B[BII)V
.end method

.method private static native RefineBinaryMaskWithFace([B[BIIIZ)V
.end method

.method private static native RefineBinaryMaskWithFaceUsingGC([B[BIIIZ)V
.end method

.method private static native RefineBinaryMaskWithFaceWithoutGC([B[BII)V
.end method

.method private static native RefineThenMattingWithBinaryMask([B[BII)V
.end method

.method public static getBoundingBox(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "binary"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 260
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 263
    .local v3, "height":I
    move-object v2, p0

    .line 264
    .local v2, "bitmap_binary":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 265
    .local v1, "binarybyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 266
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 267
    .local v0, "binarybyteArray":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 268
    const/4 v1, 0x0

    .line 270
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-static {v4, v0, v5, v3}, Lcom/fih_foxconn/imagelab/PSProc;->getBoundingBox(Landroid/graphics/Rect;[BII)V

    .line 273
    return-object v4
.end method

.method private static native getBoundingBox(Landroid/graphics/Rect;[BII)V
.end method

.method public static mattingWithBinaryMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "binary"    # Landroid/graphics/Bitmap;
    .param p1, "origin"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/16 v0, 0xa

    .line 178
    invoke-static {p0, p1, v0, v0}, Lcom/fih_foxconn/imagelab/PSProc;->mattingWithBinaryMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static mattingWithBinaryMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "binary"    # Landroid/graphics/Bitmap;
    .param p1, "origin"    # Landroid/graphics/Bitmap;
    .param p2, "in_radius"    # I
    .param p3, "out_radius"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 184
    :cond_0
    const-string v4, "PSProc"

    const-string v5, "The resolution of binary image is not the same as the resolution of origin image"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, p0

    .line 216
    :goto_0
    return-object v9

    .line 187
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 188
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 190
    .local v3, "height":I
    move-object v8, p1

    .line 191
    .local v8, "bitmap_image":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 192
    .local v12, "imagebyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8, v12}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 193
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 194
    .local v1, "imagebyteArray":[B
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 195
    const/4 v12, 0x0

    .line 198
    move-object v7, p0

    .line 199
    .local v7, "bitmap_binary":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 200
    .local v6, "binarybyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 201
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 202
    .local v0, "binarybyteArray":[B
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 203
    const/4 v6, 0x0

    move v4, p2

    move/from16 v5, p3

    .line 206
    invoke-static/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSProc;->MattingWithBinaryMask([B[BIIII)V

    .line 209
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v10

    .line 210
    .local v10, "bmpconfig":Landroid/graphics/Bitmap$Config;
    invoke-static {v2, v3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 211
    .local v9, "bitmap_mask":Landroid/graphics/Bitmap;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 212
    .local v11, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v9, v11}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 213
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 214
    const/4 v11, 0x0

    .line 216
    goto :goto_0
.end method

.method public static previewSegmentWithFaceDriverCoordinateIfDebug([BZIIIIIILjava/util/ArrayList;FZZZ)V
    .locals 0
    .param p0, "image"    # [B
    .param p1, "nv21"    # Z
    .param p2, "height"    # I
    .param p3, "width"    # I
    .param p4, "y_w_stride"    # I
    .param p5, "u_w_stride"    # I
    .param p6, "v_w_stride"    # I
    .param p7, "orientation"    # I
    .param p9, "adjustUpward"    # F
    .param p10, "flipx"    # Z
    .param p11, "flipy"    # Z
    .param p12, "debug"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZIIIIII",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;FZZZ)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p8, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-static/range {p0 .. p12}, Lcom/fih_foxconn/imagelab/PSProc;->PreviewSegmentWithFaceDriverCoordinateIfDebug([BZIIIIIILjava/util/ArrayList;FZZZ)V

    .line 281
    return-void
.end method

.method public static previewSegmentWithFaceHAL3IfDebug(IIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIILjava/util/ArrayList;FZZZ)V
    .locals 0
    .param p0, "height"    # I
    .param p1, "width"    # I
    .param p2, "format"    # I
    .param p3, "pColorYPlane"    # Ljava/nio/ByteBuffer;
    .param p4, "yColorPixelStride"    # I
    .param p5, "yColorRowStride"    # I
    .param p6, "pColorUPlane"    # Ljava/nio/ByteBuffer;
    .param p7, "uColorPixelStride"    # I
    .param p8, "uColorRowStride"    # I
    .param p9, "pColorVPlane"    # Ljava/nio/ByteBuffer;
    .param p10, "vColorPixelStride"    # I
    .param p11, "vColorRowStride"    # I
    .param p12, "orientation"    # I
    .param p14, "adjustUpward"    # F
    .param p15, "flipx"    # Z
    .param p16, "flipy"    # Z
    .param p17, "debug"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Ljava/nio/ByteBuffer;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;FZZZ)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p13, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-static/range {p0 .. p17}, Lcom/fih_foxconn/imagelab/PSProc;->PreviewSegmentWithFaceHAL3IfDebug(IIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIILjava/util/ArrayList;FZZZ)V

    .line 294
    return-void
.end method

.method public static refineBinaryMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "binary"    # Landroid/graphics/Bitmap;
    .param p1, "origin"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/fih_foxconn/imagelab/PSProc;->refineBinaryMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static refineBinaryMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "binary"    # Landroid/graphics/Bitmap;
    .param p1, "origin"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 57
    :cond_0
    const-string v4, "PSProc"

    const-string v5, "The resolution of binary image is not the same as the resolution of origin image"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, p0

    .line 91
    :goto_0
    return-object v9

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 61
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 63
    .local v3, "height":I
    move-object v8, p1

    .line 64
    .local v8, "bitmap_image":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 65
    .local v12, "imagebyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8, v12}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 66
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 67
    .local v1, "imagebyteArray":[B
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 68
    const/4 v12, 0x0

    .line 71
    move-object v7, p0

    .line 72
    .local v7, "bitmap_binary":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 73
    .local v6, "binarybyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 74
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 75
    .local v0, "binarybyteArray":[B
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 76
    const/4 v6, 0x0

    move v4, p2

    move/from16 v5, p3

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSProc;->RefineBinaryMaskWithFace([B[BIIIZ)V

    .line 84
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v10

    .line 85
    .local v10, "bmpconfig":Landroid/graphics/Bitmap$Config;
    invoke-static {v2, v3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 86
    .local v9, "bitmap_mask":Landroid/graphics/Bitmap;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 87
    .local v11, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v9, v11}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 88
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 89
    const/4 v11, 0x0

    .line 91
    goto :goto_0
.end method

.method public static refineBinaryMaskUsingGC(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "binary"    # Landroid/graphics/Bitmap;
    .param p1, "origin"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/fih_foxconn/imagelab/PSProc;->refineBinaryMaskUsingGC(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static refineBinaryMaskUsingGC(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "binary"    # Landroid/graphics/Bitmap;
    .param p1, "origin"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 102
    :cond_0
    const-string v4, "PSProc"

    const-string v5, "The resolution of binary image is not the same as the resolution of origin image"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, p0

    .line 135
    :goto_0
    return-object v9

    .line 105
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 106
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 108
    .local v3, "height":I
    move-object v8, p1

    .line 109
    .local v8, "bitmap_image":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 110
    .local v12, "imagebyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8, v12}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 111
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 112
    .local v1, "imagebyteArray":[B
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 113
    const/4 v12, 0x0

    .line 116
    move-object v7, p0

    .line 117
    .local v7, "bitmap_binary":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 118
    .local v6, "binarybyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 119
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 120
    .local v0, "binarybyteArray":[B
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 121
    const/4 v6, 0x0

    move v4, p2

    move/from16 v5, p3

    .line 124
    invoke-static/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSProc;->RefineBinaryMaskWithFaceUsingGC([B[BIIIZ)V

    .line 128
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v10

    .line 129
    .local v10, "bmpconfig":Landroid/graphics/Bitmap$Config;
    invoke-static {v2, v3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 130
    .local v9, "bitmap_mask":Landroid/graphics/Bitmap;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 131
    .local v11, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v9, v11}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 132
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 133
    const/4 v11, 0x0

    .line 135
    goto :goto_0
.end method

.method public static refineBinaryMaskWithoutGC(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "binary"    # Landroid/graphics/Bitmap;
    .param p1, "origin"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ne v11, v12, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-eq v11, v12, :cond_1

    .line 141
    :cond_0
    const-string v11, "PSProc"

    const-string v12, "The resolution of binary image is not the same as the resolution of origin image"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p0

    .line 173
    :goto_0
    return-object v4

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 145
    .local v10, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 147
    .local v7, "height":I
    move-object v3, p1

    .line 148
    .local v3, "bitmap_image":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v11

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 149
    .local v9, "imagebyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 150
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 151
    .local v8, "imagebyteArray":[B
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 152
    const/4 v9, 0x0

    .line 155
    move-object v2, p0

    .line 156
    .local v2, "bitmap_binary":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v11

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 157
    .local v1, "binarybyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 158
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 159
    .local v0, "binarybyteArray":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 160
    const/4 v1, 0x0

    .line 163
    invoke-static {v0, v8, v10, v7}, Lcom/fih_foxconn/imagelab/PSProc;->RefineBinaryMaskWithFaceWithoutGC([B[BII)V

    .line 166
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 167
    .local v5, "bmpconfig":Landroid/graphics/Bitmap$Config;
    invoke-static {v10, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 168
    .local v4, "bitmap_mask":Landroid/graphics/Bitmap;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 169
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 170
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 171
    const/4 v6, 0x0

    .line 173
    goto :goto_0
.end method

.method public static refineThenMattingWithBinaryMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "binary"    # Landroid/graphics/Bitmap;
    .param p1, "origin"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ne v11, v12, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-eq v11, v12, :cond_1

    .line 222
    :cond_0
    const-string v11, "PSProc"

    const-string v12, "The resolution of binary image is not the same as the resolution of origin image"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p0

    .line 254
    :goto_0
    return-object v4

    .line 225
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 226
    .local v10, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 228
    .local v7, "height":I
    move-object v3, p1

    .line 229
    .local v3, "bitmap_image":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v11

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 230
    .local v9, "imagebyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 231
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 232
    .local v8, "imagebyteArray":[B
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 233
    const/4 v9, 0x0

    .line 236
    move-object v2, p0

    .line 237
    .local v2, "bitmap_binary":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v11

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 238
    .local v1, "binarybyteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 239
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 240
    .local v0, "binarybyteArray":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 241
    const/4 v1, 0x0

    .line 244
    invoke-static {v0, v8, v10, v7}, Lcom/fih_foxconn/imagelab/PSProc;->RefineThenMattingWithBinaryMask([B[BII)V

    .line 247
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 248
    .local v5, "bmpconfig":Landroid/graphics/Bitmap$Config;
    invoke-static {v10, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 249
    .local v4, "bitmap_mask":Landroid/graphics/Bitmap;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 250
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 251
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 252
    const/4 v6, 0x0

    .line 254
    goto :goto_0
.end method
