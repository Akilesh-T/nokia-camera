.class public Lcom/fih_foxconn/imagelab/PSImageDumpUtil;
.super Ljava/lang/Object;
.source "PSImageDumpUtil.java"


# static fields
.field private static final HEIGHT:I = 0x320

.field private static final MEAN_RGB:[D

.field private static final WIDTH:I = 0x258

.field private static extStore:Ljava/lang/String; = null

.field private static final numOfChannels:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->MEAN_RGB:[D

    .line 21
    const-string v0, "EXTERNAL_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->extStore:Ljava/lang/String;

    return-void

    .line 17
    nop

    :array_0
    .array-data 8
        0x405eab3333333333L    # 122.675
        0x405d2ad0e5604189L    # 116.669
        0x405a0083126e978dL    # 104.008
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpInputDataFrom1DArray([F)V
    .locals 25
    .param p0, "pixels1d"    # [F

    .prologue
    .line 172
    const v22, 0x75300

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 173
    .local v17, "rgb":[I
    const v22, 0x75300

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 174
    .local v19, "xx":[I
    const v22, 0x75300

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 175
    .local v21, "yy":[I
    const v22, 0x75300

    move/from16 v0, v22

    new-array v9, v0, [I

    .line 176
    .local v9, "meanmask":[I
    sget-object v22, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->MEAN_RGB:[D

    const/16 v23, 0x0

    aget-wide v14, v22, v23

    .line 177
    .local v14, "mean_r":D
    sget-object v22, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->MEAN_RGB:[D

    const/16 v23, 0x1

    aget-wide v12, v22, v23

    .line 178
    .local v12, "mean_g":D
    sget-object v22, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->MEAN_RGB:[D

    const/16 v23, 0x2

    aget-wide v10, v22, v23

    .line 180
    .local v10, "mean_b":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_0

    .line 182
    div-int/lit8 v16, v7, 0x6

    .line 183
    .local v16, "pixelsIndex":I
    add-int/lit8 v22, v7, 0x2

    aget v22, p0, v22

    const/high16 v23, 0x437f0000    # 255.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v22, v22, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v6, v0

    .line 184
    .local v6, "R":I
    add-int/lit8 v22, v7, 0x1

    aget v22, p0, v22

    const/high16 v23, 0x437f0000    # 255.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v22, v22, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v5, v0

    .line 185
    .local v5, "G":I
    aget v22, p0, v7

    const/high16 v23, 0x437f0000    # 255.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v22, v22, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v4, v0

    .line 186
    .local v4, "B":I
    add-int/lit8 v22, v7, 0x3

    aget v22, p0, v22

    const/high16 v23, 0x437f0000    # 255.0f

    mul-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 187
    .local v18, "x":I
    add-int/lit8 v22, v7, 0x4

    aget v22, p0, v22

    const/high16 v23, 0x437f0000    # 255.0f

    mul-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 188
    .local v20, "y":I
    add-int/lit8 v22, v7, 0x5

    aget v22, p0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 190
    .local v8, "m":I
    const/high16 v22, -0x1000000

    and-int/lit16 v0, v6, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x10

    or-int v22, v22, v23

    and-int/lit16 v0, v5, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x8

    or-int v22, v22, v23

    and-int/lit16 v0, v4, 0xff

    move/from16 v23, v0

    or-int v22, v22, v23

    aput v22, v17, v16

    .line 192
    const/high16 v22, -0x1000000

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x10

    or-int v22, v22, v23

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x8

    or-int v22, v22, v23

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v22, v22, v23

    aput v22, v19, v16

    .line 194
    const/high16 v22, -0x1000000

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x10

    or-int v22, v22, v23

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x8

    or-int v22, v22, v23

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v22, v22, v23

    aput v22, v21, v16

    .line 196
    const/high16 v22, -0x1000000

    and-int/lit16 v0, v8, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x10

    or-int v22, v22, v23

    and-int/lit16 v0, v8, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x8

    or-int v22, v22, v23

    and-int/lit16 v0, v8, 0xff

    move/from16 v23, v0

    or-int v22, v22, v23

    aput v22, v9, v16

    .line 180
    add-int/lit8 v7, v7, 0x6

    goto/16 :goto_0

    .line 201
    .end local v4    # "B":I
    .end local v5    # "G":I
    .end local v6    # "R":I
    .end local v8    # "m":I
    .end local v16    # "pixelsIndex":I
    .end local v18    # "x":I
    .end local v20    # "y":I
    :cond_0
    const/16 v22, 0x258

    const/16 v23, 0x320

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    const-string v23, "dump_input_rgb.png"

    invoke-static/range {v22 .. v23}, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 202
    const/16 v22, 0x258

    const/16 v23, 0x320

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    const-string v23, "dump_input_xx.png"

    invoke-static/range {v22 .. v23}, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 203
    const/16 v22, 0x258

    const/16 v23, 0x320

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v24}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    const-string v23, "dump_input_yy.png"

    invoke-static/range {v22 .. v23}, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 204
    const/16 v22, 0x258

    const/16 v23, 0x320

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    const-string v23, "dump_input_meanmask.png"

    invoke-static/range {v22 .. v23}, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 206
    return-void
.end method

.method public static get1DArrayFrom2DArray([[F)[F
    .locals 9
    .param p0, "pixels2d"    # [[F

    .prologue
    .line 209
    array-length v0, p0

    .line 210
    .local v0, "height":I
    const/4 v6, 0x0

    aget-object v6, p0, v6

    array-length v6, v6

    div-int/lit8 v5, v6, 0x6

    .line 211
    .local v5, "width":I
    mul-int v6, v5, v0

    mul-int/lit8 v6, v6, 0x6

    new-array v3, v6, [F

    .line 212
    .local v3, "pixels1d":[F
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 214
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 216
    mul-int v6, v2, v5

    add-int/2addr v6, v1

    mul-int/lit8 v4, v6, 0x6

    .line 217
    .local v4, "pos":I
    aget-object v6, p0, v2

    aget v6, v6, v1

    aput v6, v3, v4

    .line 218
    add-int/lit8 v6, v4, 0x1

    aget-object v7, p0, v2

    add-int v8, v1, v5

    aget v7, v7, v8

    aput v7, v3, v6

    .line 219
    add-int/lit8 v6, v4, 0x2

    aget-object v7, p0, v2

    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v1

    aget v7, v7, v8

    aput v7, v3, v6

    .line 220
    add-int/lit8 v6, v4, 0x3

    aget-object v7, p0, v2

    mul-int/lit8 v8, v5, 0x3

    add-int/2addr v8, v1

    aget v7, v7, v8

    aput v7, v3, v6

    .line 221
    add-int/lit8 v6, v4, 0x4

    aget-object v7, p0, v2

    mul-int/lit8 v8, v5, 0x4

    add-int/2addr v8, v1

    aget v7, v7, v8

    aput v7, v3, v6

    .line 222
    add-int/lit8 v6, v4, 0x5

    aget-object v7, p0, v2

    mul-int/lit8 v8, v5, 0x5

    add-int/2addr v8, v1

    aget v7, v7, v8

    aput v7, v3, v6

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v4    # "pos":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public static getBitmapFromAlpha1D([F)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "alpha1d"    # [F

    .prologue
    const/4 v2, 0x0

    .line 118
    const/16 v7, 0x320

    .line 119
    .local v7, "height":I
    const/16 v3, 0x258

    .line 120
    .local v3, "width":I
    const v4, 0x75300

    new-array v1, v4, [I

    .line 121
    .local v1, "pixels":[I
    const/4 v11, 0x0

    .line 122
    .local v11, "pixelsIndex":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    if-ge v10, v7, :cond_1

    .line 124
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_0

    .line 126
    mul-int v4, v10, v3

    add-int/2addr v4, v9

    mul-int/lit8 v12, v4, 0x6

    .line 127
    .local v12, "pos":I
    mul-int v4, v10, v3

    add-int/2addr v4, v9

    aget v4, p0, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 128
    .local v8, "A":I
    and-int/lit16 v4, v8, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    or-int/2addr v4, v5

    aput v4, v1, v11

    .line 130
    add-int/lit8 v11, v11, 0x1

    .line 124
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 122
    .end local v8    # "A":I
    .end local v12    # "pos":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 134
    .end local v9    # "i":I
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "mutableBmp":Landroid/graphics/Bitmap;
    move v4, v2

    move v5, v2

    move v6, v3

    .line 135
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 136
    return-object v0
.end method

.method public static getBitmapFromMatArray([F[F)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "pixels1d"    # [F
    .param p1, "alpha1d"    # [F

    .prologue
    .line 140
    const/16 v7, 0x320

    .line 141
    .local v7, "height":I
    const/16 v3, 0x258

    .line 142
    .local v3, "width":I
    const v2, 0x75300

    new-array v1, v2, [I

    .line 143
    .local v1, "pixels":[I
    const/16 v20, 0x0

    .line 144
    .local v20, "pixelsIndex":I
    sget-object v2, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->MEAN_RGB:[D

    const/4 v4, 0x0

    aget-wide v18, v2, v4

    .line 145
    .local v18, "mean_r":D
    sget-object v2, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->MEAN_RGB:[D

    const/4 v4, 0x1

    aget-wide v16, v2, v4

    .line 146
    .local v16, "mean_g":D
    sget-object v2, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->MEAN_RGB:[D

    const/4 v4, 0x2

    aget-wide v14, v2, v4

    .line 147
    .local v14, "mean_b":D
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    if-ge v13, v7, :cond_1

    .line 149
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v3, :cond_0

    .line 151
    mul-int v2, v13, v3

    add-int/2addr v2, v12

    mul-int/lit8 v21, v2, 0x6

    .line 152
    .local v21, "pos":I
    mul-int v2, v13, v3

    add-int/2addr v2, v12

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 153
    .local v8, "A":I
    add-int/lit8 v2, v21, 0x2

    aget v2, p0, v2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-double v4, v2

    add-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v11, v4

    .line 154
    .local v11, "R":I
    add-int/lit8 v2, v21, 0x1

    aget v2, p0, v2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-double v4, v2

    add-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v10, v4

    .line 155
    .local v10, "G":I
    aget v2, p0, v21

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-double v4, v2

    add-double/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v9, v4

    .line 156
    .local v9, "B":I
    and-int/lit16 v2, v8, 0xff

    shl-int/lit8 v2, v2, 0x18

    and-int/lit16 v4, v11, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    and-int/lit16 v4, v10, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    and-int/lit16 v4, v9, 0xff

    or-int/2addr v2, v4

    aput v2, v1, v20

    .line 161
    add-int/lit8 v20, v20, 0x1

    .line 149
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 147
    .end local v8    # "A":I
    .end local v9    # "B":I
    .end local v10    # "G":I
    .end local v11    # "R":I
    .end local v21    # "pos":I
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 165
    .end local v12    # "i":I
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, "mutableBmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 167
    return-object v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, v0, v1}, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v0

    return v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 8
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "face"    # Landroid/graphics/Rect;
    .param p3, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "out":Ljava/io/FileOutputStream;
    const/4 v6, 0x1

    .line 82
    .local v6, "success":Z
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p3, v7, :cond_3

    const/16 v5, 0x5f

    .line 84
    .local v5, "quality":I
    :goto_0
    if-eqz p2, :cond_0

    .line 85
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 88
    .local v4, "paint":Landroid/graphics/Paint;
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    const v7, -0xff0100

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    invoke-virtual {v0, p2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 96
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "paint":Landroid/graphics/Paint;
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0, p3, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    if-eqz v3, :cond_1

    .line 108
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 114
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return v6

    .line 82
    .end local v5    # "quality":I
    :cond_3
    const/16 v5, 0x64

    goto :goto_0

    .line 110
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "quality":I
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 113
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 101
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    const/4 v6, 0x0

    .line 107
    if-eqz v2, :cond_2

    .line 108
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 110
    :catch_2
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 106
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 107
    :goto_3
    if-eqz v2, :cond_4

    .line 108
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 112
    :cond_4
    :goto_4
    throw v7

    .line 110
    :catch_3
    move-exception v1

    .line 111
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 106
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 101
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static saveBitmap([F[FLjava/lang/String;)Z
    .locals 2
    .param p0, "pixels1d"    # [F
    .param p1, "alpha1d"    # [F
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->saveBitmap([F[FLjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v0

    return v0
.end method

.method public static saveBitmap([F[FLjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 8
    .param p0, "pixels1d"    # [F
    .param p1, "alpha1d"    # [F
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "face"    # Landroid/graphics/Rect;
    .param p4, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->getBitmapFromMatArray([F[F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    .line 37
    .local v6, "success":Z
    if-eqz p3, :cond_0

    .line 38
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    const v7, -0xff0100

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    invoke-virtual {v1, p3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 48
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    const/4 v3, 0x0

    .line 51
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    const/16 v7, 0x64

    :try_start_1
    invoke-virtual {v0, p4, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    if-eqz v4, :cond_1

    .line 60
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v3, v4

    .line 67
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return v6

    .line 62
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 65
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 54
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    const/4 v6, 0x0

    .line 59
    if-eqz v3, :cond_2

    .line 60
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 62
    :catch_2
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 59
    :goto_2
    if-eqz v3, :cond_3

    .line 60
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 64
    :cond_3
    :goto_3
    throw v7

    .line 62
    :catch_3
    move-exception v2

    .line 63
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 58
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 54
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static saveBitmapAsJpeg(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, v0, v1}, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v0

    return v0
.end method

.method public static saveBitmapAsJpeg([F[FLjava/lang/String;)Z
    .locals 2
    .param p0, "pixels1d"    # [F
    .param p1, "alpha1d"    # [F
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/fih_foxconn/imagelab/PSImageDumpUtil;->saveBitmap([F[FLjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v0

    return v0
.end method
