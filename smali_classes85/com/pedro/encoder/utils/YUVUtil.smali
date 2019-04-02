.class public Lcom/pedro/encoder/utils/YUVUtil;
.super Ljava/lang/Object;
.source "YUVUtil.java"


# static fields
.field private static nv21i420pBuffer:[B

.field private static nv21nv12Buffer:[B

.field private static nv21yv12Buffer:[B

.field private static rotate180Buffer:[B

.field private static rotate270Buffer:[B

.field private static rotate90Buffer:[B

.field private static yv12i420Buffer:[B

.field private static yv12nv12Buffer:[B

.field private static yv12nv21Buffer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ARGBtoYUV420SemiPlanar([III)[B
    .locals 19
    .param p0, "input"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 68
    mul-int v8, p1, p2

    .line 69
    .local v8, "frameSize":I
    mul-int v17, p1, p2

    mul-int/lit8 v17, v17, 0x3

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 70
    .local v16, "yuv420sp":[B
    const/4 v14, 0x0

    .line 71
    .local v14, "yIndex":I
    move v12, v8

    .line 74
    .local v12, "uvIndex":I
    const/4 v10, 0x0

    .line 75
    .local v10, "index":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_8

    .line 76
    const/4 v9, 0x0

    .local v9, "i":I
    move v13, v12

    .end local v12    # "uvIndex":I
    .local v13, "uvIndex":I
    move v15, v14

    .end local v14    # "yIndex":I
    .local v15, "yIndex":I
    :goto_1
    move/from16 v0, p1

    if-ge v9, v0, :cond_7

    .line 78
    aget v17, p0, v10

    const/high16 v18, -0x1000000

    and-int v17, v17, v18

    shr-int/lit8 v7, v17, 0x18

    .line 79
    .local v7, "a":I
    aget v17, p0, v10

    const/high16 v18, 0xff0000

    and-int v17, v17, v18

    shr-int/lit8 v3, v17, 0x10

    .line 80
    .local v3, "R":I
    aget v17, p0, v10

    const v18, 0xff00

    and-int v17, v17, v18

    shr-int/lit8 v2, v17, 0x8

    .line 81
    .local v2, "G":I
    aget v17, p0, v10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shr-int/lit8 v1, v17, 0x0

    .line 84
    .local v1, "B":I
    mul-int/lit8 v17, v3, 0x42

    mul-int/lit16 v0, v2, 0x81

    move/from16 v18, v0

    add-int v17, v17, v18

    mul-int/lit8 v18, v1, 0x19

    add-int v17, v17, v18

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    shr-int/lit8 v17, v17, 0x8

    add-int/lit8 v6, v17, 0x10

    .line 85
    .local v6, "Y":I
    mul-int/lit8 v17, v3, -0x26

    mul-int/lit8 v18, v2, 0x4a

    sub-int v17, v17, v18

    mul-int/lit8 v18, v1, 0x70

    add-int v17, v17, v18

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    shr-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    add-int/lit16 v4, v0, 0x80

    .line 86
    .local v4, "U":I
    mul-int/lit8 v17, v3, 0x70

    mul-int/lit8 v18, v2, 0x5e

    sub-int v17, v17, v18

    mul-int/lit8 v18, v1, 0x12

    sub-int v17, v17, v18

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    shr-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    add-int/lit16 v5, v0, 0x80

    .line 91
    .local v5, "V":I
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "yIndex":I
    .restart local v14    # "yIndex":I
    if-gez v6, :cond_4

    const/4 v6, 0x0

    .end local v6    # "Y":I
    :cond_0
    :goto_2
    int-to-byte v0, v6

    move/from16 v17, v0

    aput-byte v17, v16, v15

    .line 92
    rem-int/lit8 v17, v11, 0x2

    if-nez v17, :cond_3

    rem-int/lit8 v17, v10, 0x2

    if-nez v17, :cond_3

    .line 93
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "uvIndex":I
    .restart local v12    # "uvIndex":I
    if-gez v5, :cond_5

    const/4 v5, 0x0

    .end local v5    # "V":I
    :cond_1
    :goto_3
    int-to-byte v0, v5

    move/from16 v17, v0

    aput-byte v17, v16, v13

    .line 94
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "uvIndex":I
    .restart local v13    # "uvIndex":I
    if-gez v4, :cond_6

    const/4 v4, 0x0

    .end local v4    # "U":I
    :cond_2
    :goto_4
    int-to-byte v0, v4

    move/from16 v17, v0

    aput-byte v17, v16, v12

    :cond_3
    move v12, v13

    .line 97
    .end local v13    # "uvIndex":I
    .restart local v12    # "uvIndex":I
    add-int/lit8 v10, v10, 0x1

    .line 76
    add-int/lit8 v9, v9, 0x1

    move v13, v12

    .end local v12    # "uvIndex":I
    .restart local v13    # "uvIndex":I
    move v15, v14

    .end local v14    # "yIndex":I
    .restart local v15    # "yIndex":I
    goto/16 :goto_1

    .line 91
    .end local v15    # "yIndex":I
    .restart local v4    # "U":I
    .restart local v5    # "V":I
    .restart local v6    # "Y":I
    .restart local v14    # "yIndex":I
    :cond_4
    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v6, v0, :cond_0

    const/16 v6, 0xff

    goto :goto_2

    .line 93
    .end local v6    # "Y":I
    .end local v13    # "uvIndex":I
    .restart local v12    # "uvIndex":I
    :cond_5
    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v5, v0, :cond_1

    const/16 v5, 0xff

    goto :goto_3

    .line 94
    .end local v5    # "V":I
    .end local v12    # "uvIndex":I
    .restart local v13    # "uvIndex":I
    :cond_6
    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v4, v0, :cond_2

    const/16 v4, 0xff

    goto :goto_4

    .line 75
    .end local v1    # "B":I
    .end local v2    # "G":I
    .end local v3    # "R":I
    .end local v4    # "U":I
    .end local v7    # "a":I
    .end local v14    # "yIndex":I
    .restart local v15    # "yIndex":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    move v12, v13

    .end local v13    # "uvIndex":I
    .restart local v12    # "uvIndex":I
    move v14, v15

    .end local v15    # "yIndex":I
    .restart local v14    # "yIndex":I
    goto/16 :goto_0

    .line 100
    .end local v9    # "i":I
    :cond_8
    return-object v16
.end method

.method public static CropYuv(I[BIIII)[B
    .locals 14
    .param p0, "src_format"    # I
    .param p1, "src_yuv"    # [B
    .param p2, "src_width"    # I
    .param p3, "src_height"    # I
    .param p4, "dst_width"    # I
    .param p5, "dst_height"    # I

    .prologue
    .line 301
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 378
    :cond_0
    :goto_0
    return-object v5

    .line 303
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    move/from16 v0, p3

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    .line 304
    move-object v5, p1

    .local v5, "dst_yuv":[B
    goto :goto_0

    .line 306
    .end local v5    # "dst_yuv":[B
    :cond_2
    mul-int v10, p4, p5

    int-to-double v10, v10

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    double-to-int v10, v10

    new-array v5, v10, [B

    .line 307
    .restart local v5    # "dst_yuv":[B
    sparse-switch p0, :sswitch_data_0

    .line 373
    const/4 v5, 0x0

    goto :goto_0

    .line 312
    :sswitch_0
    const/4 v9, 0x0

    .line 313
    .local v9, "src_yoffset":I
    const/4 v4, 0x0

    .line 314
    .local v4, "dst_yoffset":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move/from16 v0, p5

    if-ge v6, v0, :cond_3

    .line 315
    move/from16 v0, p4

    invoke-static {p1, v9, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    add-int v9, v9, p2

    .line 317
    add-int v4, v4, p4

    .line 314
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 321
    :cond_3
    const/4 v7, 0x0

    .line 322
    .local v7, "src_uoffset":I
    const/4 v2, 0x0

    .line 323
    .local v2, "dst_uoffset":I
    mul-int v9, p2, p3

    .line 324
    mul-int v4, p4, p5

    .line 325
    const/4 v6, 0x0

    :goto_2
    div-int/lit8 v10, p5, 0x2

    if-ge v6, v10, :cond_4

    .line 326
    add-int v10, v9, v7

    add-int v11, v4, v2

    div-int/lit8 v12, p4, 0x2

    invoke-static {p1, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    div-int/lit8 v10, p2, 0x2

    add-int/2addr v7, v10

    .line 329
    div-int/lit8 v10, p4, 0x2

    add-int/2addr v2, v10

    .line 325
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 333
    :cond_4
    const/4 v8, 0x0

    .line 334
    .local v8, "src_voffset":I
    const/4 v3, 0x0

    .line 335
    .local v3, "dst_voffset":I
    mul-int v10, p2, p3

    mul-int v11, p2, p3

    div-int/lit8 v11, v11, 0x4

    add-int v7, v10, v11

    .line 336
    mul-int v10, p4, p5

    mul-int v11, p4, p5

    div-int/lit8 v11, v11, 0x4

    add-int v2, v10, v11

    .line 337
    const/4 v6, 0x0

    :goto_3
    div-int/lit8 v10, p5, 0x2

    if-ge v6, v10, :cond_0

    .line 338
    add-int v10, v7, v8

    add-int v11, v2, v3

    div-int/lit8 v12, p4, 0x2

    invoke-static {p1, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    div-int/lit8 v10, p2, 0x2

    add-int/2addr v8, v10

    .line 341
    div-int/lit8 v10, p4, 0x2

    add-int/2addr v3, v10

    .line 337
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 350
    .end local v2    # "dst_uoffset":I
    .end local v3    # "dst_voffset":I
    .end local v4    # "dst_yoffset":I
    .end local v6    # "i":I
    .end local v7    # "src_uoffset":I
    .end local v8    # "src_voffset":I
    .end local v9    # "src_yoffset":I
    :sswitch_1
    const/4 v9, 0x0

    .line 351
    .restart local v9    # "src_yoffset":I
    const/4 v4, 0x0

    .line 352
    .restart local v4    # "dst_yoffset":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    move/from16 v0, p5

    if-ge v6, v0, :cond_5

    .line 353
    move/from16 v0, p4

    invoke-static {p1, v9, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    add-int v9, v9, p2

    .line 355
    add-int v4, v4, p4

    .line 352
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 359
    :cond_5
    const/4 v7, 0x0

    .line 360
    .restart local v7    # "src_uoffset":I
    const/4 v2, 0x0

    .line 361
    .restart local v2    # "dst_uoffset":I
    mul-int v9, p2, p3

    .line 362
    mul-int v4, p4, p5

    .line 363
    const/4 v6, 0x0

    :goto_5
    div-int/lit8 v10, p5, 0x2

    if-ge v6, v10, :cond_0

    .line 364
    add-int v10, v9, v7

    add-int v11, v4, v2

    move/from16 v0, p4

    invoke-static {p1, v10, v5, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    add-int v7, v7, p2

    .line 367
    add-int v2, v2, p4

    .line 363
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x27 -> :sswitch_1
        0x7f000100 -> :sswitch_1
        0x7fa30c00 -> :sswitch_1
    .end sparse-switch
.end method

.method public static NV21toI420([BII)[B
    .locals 6
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 182
    mul-int v0, p1, p2

    .line 183
    .local v0, "frameSize":I
    div-int/lit8 v2, v0, 0x4

    .line 184
    .local v2, "qFrameSize":I
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21i420pBuffer:[B

    invoke-static {p0, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 186
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21i420pBuffer:[B

    add-int v4, v0, v1

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 187
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21i420pBuffer:[B

    add-int v4, v0, v1

    add-int/2addr v4, v2

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21i420pBuffer:[B

    return-object v3
.end method

.method public static NV21toNV12([BII)[B
    .locals 6
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 171
    mul-int v0, p1, p2

    .line 172
    .local v0, "frameSize":I
    div-int/lit8 v2, v0, 0x4

    .line 173
    .local v2, "qFrameSize":I
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21nv12Buffer:[B

    invoke-static {p0, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 175
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21nv12Buffer:[B

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 176
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21nv12Buffer:[B

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21nv12Buffer:[B

    return-object v3
.end method

.method public static NV21toYUV420byColor([BIILcom/pedro/encoder/video/FormatVideoEncoder;)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "formatVideoEncoder"    # Lcom/pedro/encoder/video/FormatVideoEncoder;

    .prologue
    .line 154
    sget-object v0, Lcom/pedro/encoder/utils/YUVUtil$1;->$SwitchMap$com$pedro$encoder$video$FormatVideoEncoder:[I

    invoke-virtual {p3}, Lcom/pedro/encoder/video/FormatVideoEncoder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    const/4 p0, 0x0

    .end local p0    # "input":[B
    :goto_0
    :pswitch_0
    return-object p0

    .line 156
    .restart local p0    # "input":[B
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->NV21toI420([BII)[B

    move-result-object p0

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->NV21toI420([BII)[B

    move-result-object p0

    goto :goto_0

    .line 160
    :pswitch_3
    invoke-static {p0, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->NV21toNV12([BII)[B

    move-result-object p0

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static NV21toYV12([BII)[B
    .locals 6
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 193
    mul-int v0, p1, p2

    .line 194
    .local v0, "frameSize":I
    div-int/lit8 v2, v0, 0x4

    .line 195
    .local v2, "qFrameSize":I
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21yv12Buffer:[B

    invoke-static {p0, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 197
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21yv12Buffer:[B

    add-int v4, v0, v1

    add-int/2addr v4, v2

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 198
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21yv12Buffer:[B

    add-int v4, v0, v1

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->nv21yv12Buffer:[B

    return-object v3
.end method

.method public static YV12toI420([BII)[B
    .locals 4
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 133
    mul-int v0, p1, p2

    .line 134
    .local v0, "frameSize":I
    div-int/lit8 v1, v0, 0x4

    .line 135
    .local v1, "qFrameSize":I
    sget-object v2, Lcom/pedro/encoder/utils/YUVUtil;->yv12i420Buffer:[B

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    add-int v2, v0, v1

    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->yv12i420Buffer:[B

    invoke-static {p0, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    sget-object v2, Lcom/pedro/encoder/utils/YUVUtil;->yv12i420Buffer:[B

    add-int v3, v0, v1

    invoke-static {p0, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    sget-object v2, Lcom/pedro/encoder/utils/YUVUtil;->yv12i420Buffer:[B

    return-object v2
.end method

.method public static YV12toNV12([BII)[B
    .locals 6
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 122
    mul-int v0, p1, p2

    .line 123
    .local v0, "frameSize":I
    div-int/lit8 v2, v0, 0x4

    .line 124
    .local v2, "qFrameSize":I
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->yv12nv12Buffer:[B

    invoke-static {p0, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 126
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->yv12nv12Buffer:[B

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    add-int v5, v0, v1

    add-int/2addr v5, v2

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 127
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->yv12nv12Buffer:[B

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    add-int v5, v0, v1

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->yv12nv12Buffer:[B

    return-object v3
.end method

.method public static YV12toNV21([BII)[B
    .locals 6
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 142
    mul-int v0, p1, p2

    .line 143
    .local v0, "frameSize":I
    div-int/lit8 v2, v0, 0x4

    .line 144
    .local v2, "qFrameSize":I
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->yv12nv21Buffer:[B

    invoke-static {p0, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 146
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->yv12nv21Buffer:[B

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    add-int v5, v0, v1

    add-int/2addr v5, v2

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 147
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->yv12nv21Buffer:[B

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    add-int v5, v0, v1

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->yv12nv21Buffer:[B

    return-object v3
.end method

.method public static YV12toYUV420byColor([BIILcom/pedro/encoder/video/FormatVideoEncoder;)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "formatVideoEncoder"    # Lcom/pedro/encoder/video/FormatVideoEncoder;

    .prologue
    .line 105
    sget-object v0, Lcom/pedro/encoder/utils/YUVUtil$1;->$SwitchMap$com$pedro$encoder$video$FormatVideoEncoder:[I

    invoke-virtual {p3}, Lcom/pedro/encoder/video/FormatVideoEncoder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->YV12toI420([BII)[B

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->YV12toNV12([BII)[B

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->YV12toNV12([BII)[B

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_3
    invoke-static {p0, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->YV12toNV21([BII)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->NV21toI420([BII)[B

    move-result-object v0

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static bitmapToNV21(IILandroid/graphics/Bitmap;)[B
    .locals 9
    .param p0, "inputWidth"    # I
    .param p1, "inputHeight"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 456
    mul-int v0, p0, p1

    new-array v1, v0, [I

    .local v1, "argb":[I
    move-object v0, p2

    move v3, p0

    move v4, v2

    move v5, v2

    move v6, p0

    move v7, p1

    .line 457
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 458
    invoke-static {v1, p0, p1}, Lcom/pedro/encoder/utils/YUVUtil;->ARGBtoYUV420SemiPlanar([III)[B

    move-result-object v8

    .line 459
    .local v8, "yuv":[B
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 460
    return-object v8
.end method

.method public static getYuvBuffer(II)I
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 53
    int-to-double v4, p0

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v2, v4, 0x10

    .line 55
    .local v2, "stride":I
    mul-int v3, v2, p1

    .line 57
    .local v3, "y_size":I
    int-to-double v4, p0

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v1, v4, 0x10

    .line 59
    .local v1, "c_stride":I
    mul-int v4, v1, p1

    div-int/lit8 v0, v4, 0x2

    .line 61
    .local v0, "c_size":I
    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    return v4
.end method

.method public static mirrorNV21([BII)[B
    .locals 18
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 425
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 427
    .local v3, "output":[B
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_0
    move/from16 v0, p1

    if-ge v10, v0, :cond_1

    .line 428
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_1
    move/from16 v0, p2

    if-ge v13, v0, :cond_0

    .line 429
    move v12, v10

    .local v12, "xo":I
    move v15, v13

    .line 430
    .local v15, "yo":I
    move/from16 v9, p1

    .local v9, "w":I
    move/from16 v2, p2

    .line 431
    .local v2, "h":I
    move v11, v12

    .local v11, "xi":I
    move v14, v15

    .line 432
    .local v14, "yi":I
    sub-int v16, v2, v14

    add-int/lit8 v14, v16, -0x1

    .line 433
    mul-int v16, v9, v15

    add-int v16, v16, v12

    mul-int v17, v9, v14

    add-int v17, v17, v11

    aget-byte v17, p0, v17

    aput-byte v17, v3, v16

    .line 434
    mul-int v1, v9, v2

    .line 435
    .local v1, "fs":I
    shr-int/lit8 v4, v1, 0x2

    .line 436
    .local v4, "qs":I
    shr-int/lit8 v11, v11, 0x1

    .line 437
    shr-int/lit8 v14, v14, 0x1

    .line 438
    shr-int/lit8 v12, v12, 0x1

    .line 439
    shr-int/lit8 v15, v15, 0x1

    .line 440
    shr-int/lit8 v9, v9, 0x1

    .line 441
    shr-int/lit8 v2, v2, 0x1

    .line 443
    mul-int v16, v9, v14

    add-int v16, v16, v11

    mul-int/lit8 v16, v16, 0x2

    add-int v5, v1, v16

    .line 444
    .local v5, "ui":I
    mul-int v16, v9, v15

    add-int v16, v16, v12

    mul-int/lit8 v16, v16, 0x2

    add-int v6, v1, v16

    .line 446
    .local v6, "uo":I
    add-int/lit8 v7, v5, 0x1

    .line 447
    .local v7, "vi":I
    add-int/lit8 v8, v6, 0x1

    .line 448
    .local v8, "vo":I
    aget-byte v16, p0, v5

    aput-byte v16, v3, v6

    .line 449
    aget-byte v16, p0, v7

    aput-byte v16, v3, v8

    .line 428
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 427
    .end local v1    # "fs":I
    .end local v2    # "h":I
    .end local v4    # "qs":I
    .end local v5    # "ui":I
    .end local v6    # "uo":I
    .end local v7    # "vi":I
    .end local v8    # "vo":I
    .end local v9    # "w":I
    .end local v11    # "xi":I
    .end local v12    # "xo":I
    .end local v14    # "yi":I
    .end local v15    # "yo":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 452
    .end local v13    # "y":I
    :cond_1
    return-object v3
.end method

.method public static preAllocateNv21Buffers(I)V
    .locals 1
    .param p0, "length"    # I

    .prologue
    .line 43
    new-array v0, p0, [B

    sput-object v0, Lcom/pedro/encoder/utils/YUVUtil;->nv21i420pBuffer:[B

    .line 44
    new-array v0, p0, [B

    sput-object v0, Lcom/pedro/encoder/utils/YUVUtil;->nv21nv12Buffer:[B

    .line 45
    new-array v0, p0, [B

    sput-object v0, Lcom/pedro/encoder/utils/YUVUtil;->nv21yv12Buffer:[B

    .line 46
    return-void
.end method

.method public static preAllocateRotateBuffers(I)V
    .locals 1
    .param p0, "length"    # I

    .prologue
    .line 23
    new-array v0, p0, [B

    sput-object v0, Lcom/pedro/encoder/utils/YUVUtil;->rotate90Buffer:[B

    .line 24
    new-array v0, p0, [B

    sput-object v0, Lcom/pedro/encoder/utils/YUVUtil;->rotate180Buffer:[B

    .line 25
    new-array v0, p0, [B

    sput-object v0, Lcom/pedro/encoder/utils/YUVUtil;->rotate270Buffer:[B

    .line 26
    return-void
.end method

.method public static preAllocateYv12Buffers(I)V
    .locals 1
    .param p0, "length"    # I

    .prologue
    .line 33
    new-array v0, p0, [B

    sput-object v0, Lcom/pedro/encoder/utils/YUVUtil;->yv12i420Buffer:[B

    .line 34
    new-array v0, p0, [B

    sput-object v0, Lcom/pedro/encoder/utils/YUVUtil;->yv12nv12Buffer:[B

    .line 35
    new-array v0, p0, [B

    sput-object v0, Lcom/pedro/encoder/utils/YUVUtil;->yv12nv21Buffer:[B

    .line 36
    return-void
.end method

.method public static rotateNV21([BIII)[B
    .locals 0
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 204
    sparse-switch p3, :sswitch_data_0

    .line 214
    const/4 p0, 0x0

    .end local p0    # "data":[B
    :goto_0
    :sswitch_0
    return-object p0

    .line 208
    .restart local p0    # "data":[B
    :sswitch_1
    invoke-static {p0, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->rotateNV21Degree90([BII)[B

    move-result-object p0

    goto :goto_0

    .line 210
    :sswitch_2
    invoke-static {p0, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->rotateNV21Degree180([BII)[B

    move-result-object p0

    goto :goto_0

    .line 212
    :sswitch_3
    invoke-static {p0, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->rotateNV21Degree270([BII)[B

    move-result-object p0

    goto :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private static rotateNV21Degree180([BII)[B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "count":I
    mul-int v3, p1, p2

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 243
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->rotate180Buffer:[B

    aget-byte v4, p0, v2

    aput-byte v4, v3, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 242
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 246
    :cond_0
    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v3, -0x1

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    mul-int v3, p1, p2

    if-lt v2, v3, :cond_1

    .line 247
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->rotate180Buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    add-int/lit8 v4, v2, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v3, v1

    .line 248
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->rotate180Buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .restart local v1    # "count":I
    aget-byte v4, p0, v2

    aput-byte v4, v3, v0

    .line 246
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 250
    :cond_1
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->rotate180Buffer:[B

    return-object v3
.end method

.method private static rotateNV21Degree270([BII)[B
    .locals 11
    .param p0, "data"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 254
    const/4 v5, 0x0

    .local v5, "nWidth":I
    const/4 v3, 0x0

    .line 255
    .local v3, "nHeight":I
    const/4 v7, 0x0

    .line 256
    .local v7, "wh":I
    const/4 v6, 0x0

    .line 257
    .local v6, "uvHeight":I
    if-ne p1, v5, :cond_0

    if-eq p2, v3, :cond_1

    .line 258
    :cond_0
    mul-int v7, p1, p2

    .line 259
    shr-int/lit8 v6, p2, 0x1

    .line 262
    :cond_1
    const/4 v2, 0x0

    .line 263
    .local v2, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 264
    const/4 v4, 0x0

    .line 265
    .local v4, "nPos":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, p2, :cond_2

    .line 266
    sget-object v8, Lcom/pedro/encoder/utils/YUVUtil;->rotate270Buffer:[B

    add-int v9, v4, v0

    aget-byte v9, p0, v9

    aput-byte v9, v8, v2

    .line 267
    add-int/lit8 v2, v2, 0x1

    .line 268
    add-int/2addr v4, p1

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "j":I
    .end local v4    # "nPos":I
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_5

    .line 272
    move v4, v7

    .line 273
    .restart local v4    # "nPos":I
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, v6, :cond_4

    .line 274
    sget-object v8, Lcom/pedro/encoder/utils/YUVUtil;->rotate270Buffer:[B

    add-int v9, v4, v0

    aget-byte v9, p0, v9

    aput-byte v9, v8, v2

    .line 275
    sget-object v8, Lcom/pedro/encoder/utils/YUVUtil;->rotate270Buffer:[B

    add-int/lit8 v9, v2, 0x1

    add-int v10, v4, v0

    add-int/lit8 v10, v10, 0x1

    aget-byte v10, p0, v10

    aput-byte v10, v8, v9

    .line 276
    add-int/lit8 v2, v2, 0x2

    .line 277
    add-int/2addr v4, p1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 271
    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 280
    .end local v1    # "j":I
    .end local v4    # "nPos":I
    :cond_5
    sget-object v8, Lcom/pedro/encoder/utils/YUVUtil;->rotate270Buffer:[B

    invoke-static {v8, p1, p2}, Lcom/pedro/encoder/utils/YUVUtil;->rotateNV21Degree180([BII)[B

    move-result-object v8

    return-object v8
.end method

.method private static rotateNV21Degree90([BII)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 222
    add-int/lit8 v2, p2, -0x1

    .local v2, "y":I
    :goto_1
    if-ltz v2, :cond_0

    .line 223
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->rotate90Buffer:[B

    mul-int v4, v2, p1

    add-int/2addr v4, v1

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    .line 222
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 221
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "y":I
    :cond_1
    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v3, -0x1

    .line 229
    add-int/lit8 v1, p1, -0x1

    :goto_2
    if-lez v1, :cond_3

    .line 230
    const/4 v2, 0x0

    .restart local v2    # "y":I
    :goto_3
    div-int/lit8 v3, p2, 0x2

    if-ge v2, v3, :cond_2

    .line 231
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->rotate90Buffer:[B

    mul-int v4, p1, p2

    mul-int v5, v2, p1

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    .line 232
    add-int/lit8 v0, v0, -0x1

    .line 233
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->rotate90Buffer:[B

    mul-int v4, p1, p2

    mul-int v5, v2, p1

    add-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    .line 234
    add-int/lit8 v0, v0, -0x1

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 229
    :cond_2
    add-int/lit8 v1, v1, -0x2

    goto :goto_2

    .line 237
    .end local v2    # "y":I
    :cond_3
    sget-object v3, Lcom/pedro/encoder/utils/YUVUtil;->rotate90Buffer:[B

    return-object v3
.end method

.method public static rotatePixelsNV21([BIII)[B
    .locals 22
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 382
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v4, v0, [B

    .line 384
    .local v4, "output":[B
    const/16 v20, 0x5a

    move/from16 v0, p3

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x10e

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v6, 0x1

    .line 385
    .local v6, "swap":Z
    :goto_0
    const/16 v20, 0x5a

    move/from16 v0, p3

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    const/16 v20, 0xb4

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    :cond_1
    const/16 v17, 0x1

    .line 386
    .local v17, "yflip":Z
    :goto_1
    const/16 v20, 0x10e

    move/from16 v0, p3

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, 0xb4

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    :cond_2
    const/4 v13, 0x1

    .line 387
    .local v13, "xflip":Z
    :goto_2
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_3
    move/from16 v0, p1

    if-ge v12, v0, :cond_a

    .line 388
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_9

    .line 389
    move v15, v12

    .local v15, "xo":I
    move/from16 v19, v16

    .line 390
    .local v19, "yo":I
    move/from16 v11, p1

    .local v11, "w":I
    move/from16 v3, p2

    .line 391
    .local v3, "h":I
    move v14, v15

    .local v14, "xi":I
    move/from16 v18, v19

    .line 392
    .local v18, "yi":I
    if-eqz v6, :cond_3

    .line 393
    mul-int v20, v11, v19

    div-int v14, v20, v3

    .line 394
    mul-int v20, v3, v15

    div-int v18, v20, v11

    .line 396
    :cond_3
    if-eqz v17, :cond_4

    .line 397
    sub-int v20, v3, v18

    add-int/lit8 v18, v20, -0x1

    .line 399
    :cond_4
    if-eqz v13, :cond_5

    .line 400
    sub-int v20, v11, v14

    add-int/lit8 v14, v20, -0x1

    .line 402
    :cond_5
    mul-int v20, v11, v19

    add-int v20, v20, v15

    mul-int v21, v11, v18

    add-int v21, v21, v14

    aget-byte v21, p0, v21

    aput-byte v21, v4, v20

    .line 403
    mul-int v2, v11, v3

    .line 404
    .local v2, "fs":I
    shr-int/lit8 v5, v2, 0x2

    .line 405
    .local v5, "qs":I
    shr-int/lit8 v14, v14, 0x1

    .line 406
    shr-int/lit8 v18, v18, 0x1

    .line 407
    shr-int/lit8 v15, v15, 0x1

    .line 408
    shr-int/lit8 v19, v19, 0x1

    .line 409
    shr-int/lit8 v11, v11, 0x1

    .line 410
    shr-int/lit8 v3, v3, 0x1

    .line 412
    mul-int v20, v11, v18

    add-int v20, v20, v14

    mul-int/lit8 v20, v20, 0x2

    add-int v7, v2, v20

    .line 413
    .local v7, "ui":I
    mul-int v20, v11, v19

    add-int v20, v20, v15

    mul-int/lit8 v20, v20, 0x2

    add-int v8, v2, v20

    .line 415
    .local v8, "uo":I
    add-int/lit8 v9, v7, 0x1

    .line 416
    .local v9, "vi":I
    add-int/lit8 v10, v8, 0x1

    .line 417
    .local v10, "vo":I
    aget-byte v20, p0, v7

    aput-byte v20, v4, v8

    .line 418
    aget-byte v20, p0, v9

    aput-byte v20, v4, v10

    .line 388
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 384
    .end local v2    # "fs":I
    .end local v3    # "h":I
    .end local v5    # "qs":I
    .end local v6    # "swap":Z
    .end local v7    # "ui":I
    .end local v8    # "uo":I
    .end local v9    # "vi":I
    .end local v10    # "vo":I
    .end local v11    # "w":I
    .end local v12    # "x":I
    .end local v13    # "xflip":Z
    .end local v14    # "xi":I
    .end local v15    # "xo":I
    .end local v16    # "y":I
    .end local v17    # "yflip":Z
    .end local v18    # "yi":I
    .end local v19    # "yo":I
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 385
    .restart local v6    # "swap":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_1

    .line 386
    .restart local v17    # "yflip":Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_2

    .line 387
    .restart local v12    # "x":I
    .restart local v13    # "xflip":Z
    .restart local v16    # "y":I
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 421
    .end local v16    # "y":I
    :cond_a
    return-object v4
.end method


# virtual methods
.method public dumpYUVData([BILjava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "len"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tmp/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 289
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 290
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 291
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 292
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
