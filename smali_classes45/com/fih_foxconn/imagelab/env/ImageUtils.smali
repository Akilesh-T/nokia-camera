.class public Lcom/fih_foxconn/imagelab/env/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

.field static final kMaxChannelValue:I = 0x3ffff

.field private static useNativeConversion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v1, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-direct {v1}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>()V

    sput-object v1, Lcom/fih_foxconn/imagelab/env/ImageUtils;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    .line 34
    :try_start_0
    const-string v1, "tensorflow_demo"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fih_foxconn/imagelab/env/ImageUtils;->useNativeConversion:Z

    return-void

    .line 35
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 36
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/fih_foxconn/imagelab/env/ImageUtils;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v2, "Native library not found, native RGB -> YUV conversion may be unavailable."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/imagelab/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static YUV2RGB(III)I
    .locals 8
    .param p0, "y"    # I
    .param p1, "u"    # I
    .param p2, "v"    # I

    .prologue
    const/4 v5, 0x0

    const v4, 0x3ffff

    .line 139
    add-int/lit8 v6, p0, -0x10

    if-gez v6, :cond_3

    move p0, v5

    .line 140
    :goto_0
    add-int/lit8 p1, p1, -0x80

    .line 141
    add-int/lit8 p2, p2, -0x80

    .line 148
    mul-int/lit16 v3, p0, 0x4a8

    .line 149
    .local v3, "y1192":I
    mul-int/lit16 v6, p2, 0x662

    add-int v2, v3, v6

    .line 150
    .local v2, "r":I
    mul-int/lit16 v6, p2, 0x341

    sub-int v6, v3, v6

    mul-int/lit16 v7, p1, 0x190

    sub-int v1, v6, v7

    .line 151
    .local v1, "g":I
    mul-int/lit16 v6, p1, 0x812

    add-int v0, v3, v6

    .line 154
    .local v0, "b":I
    if-le v2, v4, :cond_4

    move v2, v4

    .line 155
    :cond_0
    :goto_1
    if-le v1, v4, :cond_5

    move v1, v4

    .line 156
    :cond_1
    :goto_2
    if-le v0, v4, :cond_6

    move v0, v4

    .line 158
    :cond_2
    :goto_3
    const/high16 v4, -0x1000000

    shl-int/lit8 v5, v2, 0x6

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    shr-int/lit8 v5, v1, 0x2

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    shr-int/lit8 v5, v0, 0xa

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    return v4

    .line 139
    .end local v0    # "b":I
    .end local v1    # "g":I
    .end local v2    # "r":I
    .end local v3    # "y1192":I
    :cond_3
    add-int/lit8 p0, p0, -0x10

    goto :goto_0

    .line 154
    .restart local v0    # "b":I
    .restart local v1    # "g":I
    .restart local v2    # "r":I
    .restart local v3    # "y1192":I
    :cond_4
    if-gez v2, :cond_0

    move v2, v5

    goto :goto_1

    .line 155
    :cond_5
    if-gez v1, :cond_1

    move v1, v5

    goto :goto_2

    .line 156
    :cond_6
    if-gez v0, :cond_2

    move v0, v5

    goto :goto_3
.end method

.method private static native convertARGB8888ToYUV420SP([I[BII)V
.end method

.method private static native convertRGB565ToYUV420SP([B[BII)V
.end method

.method public static convertYUV420SPToARGB8888([BII[I)V
    .locals 17
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "output"    # [I

    .prologue
    .line 107
    sget-boolean v14, Lcom/fih_foxconn/imagelab/env/ImageUtils;->useNativeConversion:Z

    if-eqz v14, :cond_1

    .line 109
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v14}, Lcom/fih_foxconn/imagelab/env/ImageUtils;->convertYUV420SPToARGB8888([B[IIIZ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    return-void

    .line 111
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v14, Lcom/fih_foxconn/imagelab/env/ImageUtils;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v15, "Native YUV420SP -> RGB implementation not found, falling back to Java implementation"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/fih_foxconn/imagelab/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const/4 v14, 0x0

    sput-boolean v14, Lcom/fih_foxconn/imagelab/env/ImageUtils;->useNativeConversion:Z

    .line 119
    .end local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    mul-int v5, p1, p2

    .line 120
    .local v5, "frameSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    const/4 v13, 0x0

    .local v13, "yp":I
    :goto_0
    move/from16 v0, p2

    if-ge v7, v0, :cond_0

    .line 121
    shr-int/lit8 v14, v7, 0x1

    mul-int v14, v14, p1

    add-int v9, v5, v14

    .line 122
    .local v9, "uvp":I
    const/4 v8, 0x0

    .line 123
    .local v8, "u":I
    const/4 v11, 0x0

    .line 125
    .local v11, "v":I
    const/4 v6, 0x0

    .local v6, "i":I
    move v10, v9

    .end local v9    # "uvp":I
    .local v10, "uvp":I
    :goto_1
    move/from16 v0, p1

    if-ge v6, v0, :cond_2

    .line 126
    aget-byte v14, p0, v13

    and-int/lit16 v12, v14, 0xff

    .line 127
    .local v12, "y":I
    and-int/lit8 v14, v6, 0x1

    if-nez v14, :cond_3

    .line 128
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "uvp":I
    .restart local v9    # "uvp":I
    aget-byte v14, p0, v10

    and-int/lit16 v11, v14, 0xff

    .line 129
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "uvp":I
    .restart local v10    # "uvp":I
    aget-byte v14, p0, v9

    and-int/lit16 v8, v14, 0xff

    move v9, v10

    .line 132
    .end local v10    # "uvp":I
    .restart local v9    # "uvp":I
    :goto_2
    invoke-static {v12, v8, v11}, Lcom/fih_foxconn/imagelab/env/ImageUtils;->YUV2RGB(III)I

    move-result v14

    aput v14, p3, v13

    .line 125
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v13, v13, 0x1

    move v10, v9

    .end local v9    # "uvp":I
    .restart local v10    # "uvp":I
    goto :goto_1

    .line 120
    .end local v12    # "y":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .restart local v12    # "y":I
    :cond_3
    move v9, v10

    .end local v10    # "uvp":I
    .restart local v9    # "uvp":I
    goto :goto_2
.end method

.method private static native convertYUV420SPToARGB8888([B[IIIZ)V
.end method

.method private static native convertYUV420SPToRGB565([B[BII)V
.end method

.method public static convertYUV420ToARGB8888([B[B[BIIIII[I)V
    .locals 19
    .param p0, "yData"    # [B
    .param p1, "uData"    # [B
    .param p2, "vData"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "yRowStride"    # I
    .param p6, "uvRowStride"    # I
    .param p7, "uvPixelStride"    # I
    .param p8, "out"    # [I

    .prologue
    .line 172
    sget-boolean v1, Lcom/fih_foxconn/imagelab/env/ImageUtils;->useNativeConversion:Z

    if-eqz v1, :cond_1

    .line 174
    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    :try_start_0
    invoke-static/range {v1 .. v10}, Lcom/fih_foxconn/imagelab/env/ImageUtils;->convertYUV420ToARGB8888([B[B[B[IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    return-void

    .line 177
    :catch_0
    move-exception v11

    .line 178
    .local v11, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/fih_foxconn/imagelab/env/ImageUtils;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v2, "Native YUV420 -> RGB implementation not found, falling back to Java implementation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/imagelab/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fih_foxconn/imagelab/env/ImageUtils;->useNativeConversion:Z

    .line 184
    .end local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    const/16 v17, 0x0

    .line 185
    .local v17, "yp":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    move/from16 v0, p4

    if-ge v13, v0, :cond_0

    .line 186
    mul-int v15, p5, v13

    .line 187
    .local v15, "pY":I
    shr-int/lit8 v1, v13, 0x1

    mul-int v14, p6, v1

    .line 189
    .local v14, "pUV":I
    const/4 v12, 0x0

    .local v12, "i":I
    move/from16 v18, v17

    .end local v17    # "yp":I
    .local v18, "yp":I
    :goto_1
    move/from16 v0, p3

    if-ge v12, v0, :cond_2

    .line 190
    shr-int/lit8 v1, v12, 0x1

    mul-int v1, v1, p7

    add-int v16, v14, v1

    .line 192
    .local v16, "uv_offset":I
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "yp":I
    .restart local v17    # "yp":I
    add-int v1, v15, v12

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p1, v16

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p2, v16

    and-int/lit16 v3, v3, 0xff

    invoke-static {v1, v2, v3}, Lcom/fih_foxconn/imagelab/env/ImageUtils;->YUV2RGB(III)I

    move-result v1

    aput v1, p8, v18

    .line 189
    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v17

    .end local v17    # "yp":I
    .restart local v18    # "yp":I
    goto :goto_1

    .line 185
    .end local v16    # "uv_offset":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v17, v18

    .end local v18    # "yp":I
    .restart local v17    # "yp":I
    goto :goto_0
.end method

.method private static native convertYUV420ToARGB8888([B[B[B[IIIIIIZ)V
.end method

.method public static getTransformationMatrix(IIIIIZ)Landroid/graphics/Matrix;
    .locals 13
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I
    .param p4, "applyRotation"    # I
    .param p5, "maintainAspectRatio"    # Z

    .prologue
    .line 301
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 303
    .local v3, "matrix":Landroid/graphics/Matrix;
    if-eqz p4, :cond_1

    .line 304
    rem-int/lit8 v8, p4, 0x5a

    if-eqz v8, :cond_0

    .line 305
    sget-object v8, Lcom/fih_foxconn/imagelab/env/ImageUtils;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v9, "Rotation of %d % 90 != 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/fih_foxconn/imagelab/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_0
    neg-int v8, p0

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    neg-int v9, p1

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 312
    move/from16 v0, p4

    int-to-float v8, v0

    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 317
    :cond_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x5a

    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_5

    const/4 v7, 0x1

    .line 319
    .local v7, "transpose":Z
    :goto_0
    if-eqz v7, :cond_6

    move v2, p1

    .line 320
    .local v2, "inWidth":I
    :goto_1
    if-eqz v7, :cond_7

    move v1, p0

    .line 323
    .local v1, "inHeight":I
    :goto_2
    if-ne v2, p2, :cond_2

    move/from16 v0, p3

    if-eq v1, v0, :cond_3

    .line 324
    :cond_2
    int-to-float v8, p2

    int-to-float v9, v2

    div-float v5, v8, v9

    .line 325
    .local v5, "scaleFactorX":F
    move/from16 v0, p3

    int-to-float v8, v0

    int-to-float v9, v1

    div-float v6, v8, v9

    .line 327
    .local v6, "scaleFactorY":F
    if-eqz p5, :cond_8

    .line 330
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 331
    .local v4, "scaleFactor":F
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 338
    .end local v4    # "scaleFactor":F
    .end local v5    # "scaleFactorX":F
    .end local v6    # "scaleFactorY":F
    :cond_3
    :goto_3
    if-eqz p4, :cond_4

    .line 340
    int-to-float v8, p2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    move/from16 v0, p3

    int-to-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 343
    :cond_4
    return-object v3

    .line 317
    .end local v1    # "inHeight":I
    .end local v2    # "inWidth":I
    .end local v7    # "transpose":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .restart local v7    # "transpose":Z
    :cond_6
    move v2, p0

    .line 319
    goto :goto_1

    .restart local v2    # "inWidth":I
    :cond_7
    move v1, p1

    .line 320
    goto :goto_2

    .line 334
    .restart local v1    # "inHeight":I
    .restart local v5    # "scaleFactorX":F
    .restart local v6    # "scaleFactorY":F
    :cond_8
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_3
.end method

.method public static getYUVByteSize(II)I
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 46
    mul-int v1, p0, p1

    .line 50
    .local v1, "ySize":I
    add-int/lit8 v2, p0, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p1, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x2

    .line 52
    .local v0, "uvSize":I
    add-int v2, v1, v0

    return v2
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    const-string v0, "preview.png"

    invoke-static {p0, v0}, Lcom/fih_foxconn/imagelab/env/ImageUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "tensorflow"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "root":Ljava/lang/String;
    sget-object v6, Lcom/fih_foxconn/imagelab/env/ImageUtils;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v7, "Saving %dx%d bitmap to %s."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/fih_foxconn/imagelab/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v3, "myDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    sget-object v6, Lcom/fih_foxconn/imagelab/env/ImageUtils;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v7, "Make dir failed"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/fih_foxconn/imagelab/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_0
    move-object v2, p1

    .line 81
    .local v2, "fname":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 86
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 87
    .local v4, "out":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x63

    invoke-virtual {p0, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 88
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 89
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/fih_foxconn/imagelab/env/ImageUtils;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v7, "Exception!"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7, v8}, Lcom/fih_foxconn/imagelab/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
