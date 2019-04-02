.class public Lcom/android/camera/util/YuvToJpeg;
.super Ljava/lang/Object;
.source "YuvToJpeg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mirrorNV21([BII)[B
    .locals 13
    .param p0, "yuv"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 110
    array-length v11, p0

    new-array v4, v11, [B

    .line 111
    .local v4, "output":[B
    mul-int v0, p1, p2

    .line 113
    .local v0, "frameSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_0

    .line 117
    mul-int v11, v2, p1

    add-int v9, v11, v1

    .line 118
    .local v9, "yIn":I
    shr-int/lit8 v11, v2, 0x1

    mul-int/2addr v11, p1

    add-int/2addr v11, v0

    and-int/lit8 v12, v1, -0x2

    add-int v5, v11, v12

    .line 119
    .local v5, "uIn":I
    add-int/lit8 v7, v5, 0x1

    .line 121
    .local v7, "vIn":I
    sub-int v11, p1, v1

    add-int/lit8 v3, v11, -0x1

    .line 122
    .local v3, "mirrorIndex":I
    mul-int v11, v2, p1

    add-int v10, v11, v3

    .line 123
    .local v10, "yOut":I
    shr-int/lit8 v11, v2, 0x1

    mul-int/2addr v11, p1

    add-int/2addr v11, v0

    and-int/lit8 v12, v3, -0x2

    add-int v6, v11, v12

    .line 124
    .local v6, "uOut":I
    add-int/lit8 v8, v6, 0x1

    .line 126
    .local v8, "vOut":I
    aget-byte v11, p0, v9

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    .line 127
    aget-byte v11, p0, v5

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v4, v6

    .line 128
    aget-byte v11, p0, v7

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v4, v8

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    .end local v3    # "mirrorIndex":I
    .end local v5    # "uIn":I
    .end local v6    # "uOut":I
    .end local v7    # "vIn":I
    .end local v8    # "vOut":I
    .end local v9    # "yIn":I
    .end local v10    # "yOut":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_1
    return-object v4
.end method

.method public static rotateNV21([BIII)[B
    .locals 23
    .param p0, "yuv"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 69
    if-nez p3, :cond_0

    .line 102
    .end local p0    # "yuv":[B
    :goto_0
    return-object p0

    .line 70
    .restart local p0    # "yuv":[B
    :cond_0
    rem-int/lit8 v21, p3, 0x5a

    if-nez v21, :cond_1

    if-ltz p3, :cond_1

    const/16 v21, 0x10e

    move/from16 v0, p3

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 71
    :cond_1
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "0 <= rotation < 360, rotation % 90 == 0"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 74
    :cond_2
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v10, v0, [B

    .line 75
    .local v10, "output":[B
    mul-int v2, p1, p2

    .line 76
    .local v2, "frameSize":I
    move/from16 v0, p3

    rem-int/lit16 v0, v0, 0xb4

    move/from16 v21, v0

    if-eqz v21, :cond_3

    const/4 v11, 0x1

    .line 77
    .local v11, "swap":Z
    :goto_1
    move/from16 v0, p3

    rem-int/lit16 v0, v0, 0x10e

    move/from16 v21, v0

    if-eqz v21, :cond_4

    const/16 v17, 0x1

    .line 78
    .local v17, "xflip":Z
    :goto_2
    const/16 v21, 0xb4

    move/from16 v0, p3

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    const/16 v20, 0x1

    .line 80
    .local v20, "yflip":Z
    :goto_3
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    move/from16 v0, p2

    if-ge v7, v0, :cond_d

    .line 81
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    move/from16 v0, p1

    if-ge v4, v0, :cond_c

    .line 82
    mul-int v21, v7, p1

    add-int v18, v21, v4

    .line 83
    .local v18, "yIn":I
    shr-int/lit8 v21, v7, 0x1

    mul-int v21, v21, p1

    add-int v21, v21, v2

    and-int/lit8 v22, v4, -0x2

    add-int v12, v21, v22

    .line 84
    .local v12, "uIn":I
    add-int/lit8 v14, v12, 0x1

    .line 86
    .local v14, "vIn":I
    if-eqz v11, :cond_6

    move/from16 v16, p2

    .line 87
    .local v16, "wOut":I
    :goto_6
    if-eqz v11, :cond_7

    move/from16 v3, p1

    .line 88
    .local v3, "hOut":I
    :goto_7
    if-eqz v11, :cond_8

    move v6, v7

    .line 89
    .local v6, "iSwapped":I
    :goto_8
    if-eqz v11, :cond_9

    move v9, v4

    .line 90
    .local v9, "jSwapped":I
    :goto_9
    if-eqz v17, :cond_a

    sub-int v21, v16, v6

    add-int/lit8 v5, v21, -0x1

    .line 91
    .local v5, "iOut":I
    :goto_a
    if-eqz v20, :cond_b

    sub-int v21, v3, v9

    add-int/lit8 v8, v21, -0x1

    .line 93
    .local v8, "jOut":I
    :goto_b
    mul-int v21, v8, v16

    add-int v19, v21, v5

    .line 94
    .local v19, "yOut":I
    shr-int/lit8 v21, v8, 0x1

    mul-int v21, v21, v16

    add-int v21, v21, v2

    and-int/lit8 v22, v5, -0x2

    add-int v13, v21, v22

    .line 95
    .local v13, "uOut":I
    add-int/lit8 v15, v13, 0x1

    .line 97
    .local v15, "vOut":I
    aget-byte v21, p0, v18

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v10, v19

    .line 98
    aget-byte v21, p0, v12

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v10, v13

    .line 99
    aget-byte v21, p0, v14

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v10, v15

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 76
    .end local v3    # "hOut":I
    .end local v4    # "i":I
    .end local v5    # "iOut":I
    .end local v6    # "iSwapped":I
    .end local v7    # "j":I
    .end local v8    # "jOut":I
    .end local v9    # "jSwapped":I
    .end local v11    # "swap":Z
    .end local v12    # "uIn":I
    .end local v13    # "uOut":I
    .end local v14    # "vIn":I
    .end local v15    # "vOut":I
    .end local v16    # "wOut":I
    .end local v17    # "xflip":Z
    .end local v18    # "yIn":I
    .end local v19    # "yOut":I
    .end local v20    # "yflip":Z
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 77
    .restart local v11    # "swap":Z
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 78
    .restart local v17    # "xflip":Z
    :cond_5
    const/16 v20, 0x0

    goto :goto_3

    .restart local v4    # "i":I
    .restart local v7    # "j":I
    .restart local v12    # "uIn":I
    .restart local v14    # "vIn":I
    .restart local v18    # "yIn":I
    .restart local v20    # "yflip":Z
    :cond_6
    move/from16 v16, p1

    .line 86
    goto :goto_6

    .restart local v16    # "wOut":I
    :cond_7
    move/from16 v3, p2

    .line 87
    goto :goto_7

    .restart local v3    # "hOut":I
    :cond_8
    move v6, v4

    .line 88
    goto :goto_8

    .restart local v6    # "iSwapped":I
    :cond_9
    move v9, v7

    .line 89
    goto :goto_9

    .restart local v9    # "jSwapped":I
    :cond_a
    move v5, v6

    .line 90
    goto :goto_a

    .restart local v5    # "iOut":I
    :cond_b
    move v8, v9

    .line 91
    goto :goto_b

    .line 80
    .end local v3    # "hOut":I
    .end local v5    # "iOut":I
    .end local v6    # "iSwapped":I
    .end local v9    # "jSwapped":I
    .end local v12    # "uIn":I
    .end local v14    # "vIn":I
    .end local v16    # "wOut":I
    .end local v18    # "yIn":I
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .end local v4    # "i":I
    :cond_d
    move-object/from16 p0, v10

    .line 102
    goto/16 :goto_0
.end method

.method public static transByteData([BII)[B
    .locals 17
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 20
    if-nez p0, :cond_0

    const/4 v8, 0x0

    .line 49
    :goto_0
    return-object v8

    .line 25
    :cond_0
    move/from16 v0, p1

    int-to-double v4, v0

    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    mul-int/lit8 v9, v3, 0x40

    .line 29
    .local v9, "aligned64_width":I
    const/16 v16, 0x0

    .line 30
    .local v16, "yuvImage":Landroid/graphics/YuvImage;
    const/4 v10, 0x0

    .line 33
    .local v10, "byteOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    const/4 v3, 0x2

    new-array v7, v3, [I

    const/4 v3, 0x0

    aput v9, v7, v3

    const/4 v3, 0x1

    aput v9, v7, v3

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v16    # "yuvImage":Landroid/graphics/YuvImage;
    .local v2, "yuvImage":Landroid/graphics/YuvImage;
    :try_start_1
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    array-length v3, v0

    invoke-direct {v11, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .local v11, "byteOut":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v15, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v15, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 39
    .local v15, "rect":Landroid/graphics/Rect;
    sget v3, Lcom/android/camera/product_utils/ProductUtil;->JPEG_QUALITY:I

    invoke-virtual {v2, v15, v3, v11}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 41
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 51
    .local v8, "JpegByteData":[B
    if-eqz v11, :cond_4

    .line 53
    :try_start_3
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 54
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 59
    :goto_1
    const/4 v10, 0x0

    .line 61
    .end local v11    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    :goto_2
    const/4 v2, 0x0

    .line 43
    goto :goto_0

    .line 55
    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "byteOut":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v12

    .line 57
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v2    # "yuvImage":Landroid/graphics/YuvImage;
    .end local v8    # "JpegByteData":[B
    .end local v11    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v15    # "rect":Landroid/graphics/Rect;
    .restart local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "yuvImage":Landroid/graphics/YuvImage;
    :catch_1
    move-exception v14

    move-object/from16 v2, v16

    .line 45
    .end local v16    # "yuvImage":Landroid/graphics/YuvImage;
    .restart local v2    # "yuvImage":Landroid/graphics/YuvImage;
    .local v14, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    const/4 v8, 0x0

    .line 51
    if-eqz v10, :cond_1

    .line 53
    :try_start_5
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 54
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 59
    :goto_4
    const/4 v10, 0x0

    .line 61
    :cond_1
    const/4 v2, 0x0

    .line 46
    goto :goto_0

    .line 55
    :catch_2
    move-exception v12

    .line 57
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 47
    .end local v2    # "yuvImage":Landroid/graphics/YuvImage;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v14    # "ex":Ljava/lang/Exception;
    .restart local v16    # "yuvImage":Landroid/graphics/YuvImage;
    :catch_3
    move-exception v13

    move-object/from16 v2, v16

    .line 48
    .end local v16    # "yuvImage":Landroid/graphics/YuvImage;
    .restart local v2    # "yuvImage":Landroid/graphics/YuvImage;
    .local v13, "err":Ljava/lang/OutOfMemoryError;
    :goto_5
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 49
    const/4 v8, 0x0

    .line 51
    if-eqz v10, :cond_2

    .line 53
    :try_start_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 54
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 59
    :goto_6
    const/4 v10, 0x0

    .line 61
    :cond_2
    const/4 v2, 0x0

    .line 49
    goto :goto_0

    .line 55
    :catch_4
    move-exception v12

    .line 57
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 51
    .end local v2    # "yuvImage":Landroid/graphics/YuvImage;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "err":Ljava/lang/OutOfMemoryError;
    .restart local v16    # "yuvImage":Landroid/graphics/YuvImage;
    :catchall_0
    move-exception v3

    move-object/from16 v2, v16

    .end local v16    # "yuvImage":Landroid/graphics/YuvImage;
    .restart local v2    # "yuvImage":Landroid/graphics/YuvImage;
    :goto_7
    if-eqz v10, :cond_3

    .line 53
    :try_start_8
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 54
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 59
    :goto_8
    const/4 v10, 0x0

    .line 61
    :cond_3
    const/4 v2, 0x0

    throw v3

    .line 55
    :catch_5
    move-exception v12

    .line 57
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 51
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    goto :goto_7

    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "byteOut":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v3

    move-object v10, v11

    .end local v11    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 47
    :catch_6
    move-exception v13

    goto :goto_5

    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "byteOut":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v13

    move-object v10, v11

    .end local v11    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 44
    :catch_8
    move-exception v14

    goto :goto_3

    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "byteOut":Ljava/io/ByteArrayOutputStream;
    :catch_9
    move-exception v14

    move-object v10, v11

    .end local v11    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "JpegByteData":[B
    .restart local v11    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "rect":Landroid/graphics/Rect;
    :cond_4
    move-object v10, v11

    .end local v11    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public static transPanoByteData([BIII)[B
    .locals 16
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stride"    # I

    .prologue
    .line 135
    if-nez p0, :cond_0

    const/4 v8, 0x0

    .line 157
    :goto_0
    return-object v8

    .line 137
    :cond_0
    const/4 v15, 0x0

    .line 138
    .local v15, "yuvImage":Landroid/graphics/YuvImage;
    const/4 v9, 0x0

    .line 141
    .local v9, "byteOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    const/4 v3, 0x2

    new-array v7, v3, [I

    const/4 v3, 0x0

    aput p3, v7, v3

    const/4 v3, 0x1

    aput p3, v7, v3

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v15    # "yuvImage":Landroid/graphics/YuvImage;
    .local v2, "yuvImage":Landroid/graphics/YuvImage;
    :try_start_1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    array-length v3, v0

    invoke-direct {v10, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    .end local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .local v10, "byteOut":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v14, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v14, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 147
    .local v14, "rect":Landroid/graphics/Rect;
    sget v3, Lcom/android/camera/product_utils/ProductUtil;->JPEG_ENCODE_QUALITY:I

    invoke-virtual {v2, v14, v3, v10}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 149
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 159
    .local v8, "JpegByteData":[B
    if-eqz v10, :cond_4

    .line 161
    :try_start_3
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 162
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 167
    :goto_1
    const/4 v9, 0x0

    .line 169
    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    :goto_2
    const/4 v2, 0x0

    .line 151
    goto :goto_0

    .line 163
    .end local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v11

    .line 165
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 152
    .end local v2    # "yuvImage":Landroid/graphics/YuvImage;
    .end local v8    # "JpegByteData":[B
    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "rect":Landroid/graphics/Rect;
    .restart local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "yuvImage":Landroid/graphics/YuvImage;
    :catch_1
    move-exception v13

    move-object v2, v15

    .line 153
    .end local v15    # "yuvImage":Landroid/graphics/YuvImage;
    .restart local v2    # "yuvImage":Landroid/graphics/YuvImage;
    .local v13, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    const/4 v8, 0x0

    .line 159
    if-eqz v9, :cond_1

    .line 161
    :try_start_5
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 162
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 167
    :goto_4
    const/4 v9, 0x0

    .line 169
    :cond_1
    const/4 v2, 0x0

    .line 154
    goto :goto_0

    .line 163
    :catch_2
    move-exception v11

    .line 165
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 155
    .end local v2    # "yuvImage":Landroid/graphics/YuvImage;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "ex":Ljava/lang/Exception;
    .restart local v15    # "yuvImage":Landroid/graphics/YuvImage;
    :catch_3
    move-exception v12

    move-object v2, v15

    .line 156
    .end local v15    # "yuvImage":Landroid/graphics/YuvImage;
    .restart local v2    # "yuvImage":Landroid/graphics/YuvImage;
    .local v12, "err":Ljava/lang/OutOfMemoryError;
    :goto_5
    :try_start_6
    invoke-virtual {v12}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 157
    const/4 v8, 0x0

    .line 159
    if-eqz v9, :cond_2

    .line 161
    :try_start_7
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 162
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 167
    :goto_6
    const/4 v9, 0x0

    .line 169
    :cond_2
    const/4 v2, 0x0

    .line 157
    goto :goto_0

    .line 163
    :catch_4
    move-exception v11

    .line 165
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 159
    .end local v2    # "yuvImage":Landroid/graphics/YuvImage;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "err":Ljava/lang/OutOfMemoryError;
    .restart local v15    # "yuvImage":Landroid/graphics/YuvImage;
    :catchall_0
    move-exception v3

    move-object v2, v15

    .end local v15    # "yuvImage":Landroid/graphics/YuvImage;
    .restart local v2    # "yuvImage":Landroid/graphics/YuvImage;
    :goto_7
    if-eqz v9, :cond_3

    .line 161
    :try_start_8
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 162
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 167
    :goto_8
    const/4 v9, 0x0

    .line 169
    :cond_3
    const/4 v2, 0x0

    throw v3

    .line 163
    :catch_5
    move-exception v11

    .line 165
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 159
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    goto :goto_7

    .end local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v3

    move-object v9, v10

    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 155
    :catch_6
    move-exception v12

    goto :goto_5

    .end local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v12

    move-object v9, v10

    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 152
    :catch_8
    move-exception v13

    goto :goto_3

    .end local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    :catch_9
    move-exception v13

    move-object v9, v10

    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "JpegByteData":[B
    .restart local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "rect":Landroid/graphics/Rect;
    :cond_4
    move-object v9, v10

    .end local v10    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "byteOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method
