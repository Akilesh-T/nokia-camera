.class public Lcom/fih_foxconn/imagelab/PSImageLite;
.super Lcom/fih_foxconn/imagelab/AbstractPSImage;
.source "PSImageLite.java"


# static fields
.field private static final LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;


# instance fields
.field private final NUM_CLASS:I

.field private final PS_LITE_BUFFER:I

.field private img1D:[B

.field private rstImg1D:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>()V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSImageLite;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 25
    const/4 v0, 0x4

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/fih_foxconn/imagelab/PSImageLite;-><init>(Landroid/graphics/Bitmap;IZI)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZ)V
    .locals 1
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z

    .prologue
    .line 29
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fih_foxconn/imagelab/PSImageLite;-><init>(Landroid/graphics/Bitmap;IZI)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZI)V
    .locals 6
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z
    .param p4, "numOfInputChannels"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    .line 32
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSImage;-><init>()V

    .line 17
    const/4 v0, 0x4

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_LITE_BUFFER:I

    .line 19
    iput v5, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->NUM_CLASS:I

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->width:I

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->height:I

    .line 36
    iput p2, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->jpegRotation:I

    .line 37
    iput-boolean p3, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->isHwRotate:Z

    .line 38
    new-array v0, v2, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->MEAN_RGB:[D

    .line 39
    iput p4, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->NUM_PS_INPUT_CHANNELS:I

    .line 41
    iget v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->NUM_PS_INPUT_CHANNELS:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->img1D:[B

    .line 42
    iget v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    add-int/lit8 v1, v1, 0x4

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->rstImg1D:[B

    .line 44
    iget v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->argbPixels:[I

    .line 46
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    .line 47
    sget-object v0, Lcom/fih_foxconn/imagelab/PSImageLite;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v1, "jpegRotation: %d isHwRotate: %s ch: %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/fih_foxconn/imagelab/PSImageLite;->prepareInputBmpArgb(Landroid/graphics/Bitmap;)V

    .line 50
    return-void

    .line 38
    :array_0
    .array-data 8
        0x405fe00000000000L    # 127.5
        0x405fe00000000000L    # 127.5
        0x405fe00000000000L    # 127.5
    .end array-data
.end method


# virtual methods
.method public getBlendBitmap()Landroid/graphics/Bitmap;
    .locals 20

    .prologue
    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/fih_foxconn/imagelab/PSImageLite;->getRstBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 72
    .local v1, "maskBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    .line 73
    .local v9, "argbBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 74
    .local v4, "in_width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 75
    .local v8, "in_height":I
    mul-int v3, v4, v8

    new-array v2, v3, [I

    .line 76
    .local v2, "mask":[I
    mul-int v3, v4, v8

    new-array v10, v3, [I

    .line 78
    .local v10, "argb":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 79
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 81
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    mul-int v3, v4, v8

    move/from16 v0, v19

    if-ge v0, v3, :cond_0

    .line 82
    aget v3, v10, v19

    const v5, 0xffffff

    and-int/2addr v3, v5

    aget v5, v2, v19

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    aput v3, v10, v19

    .line 81
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 85
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 86
    .local v11, "resultBmp":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v10

    move v14, v4

    move/from16 v17, v4

    move/from16 v18, v8

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 88
    return-object v11
.end method

.method public getInputImg1D()[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->img1D:[B

    return-object v0
.end method

.method public getRgbBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 61
    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, "mutableBmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->argbPixels:[I

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    iget v6, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    iget v7, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 63
    return-object v0
.end method

.method public getRstBitmap()Landroid/graphics/Bitmap;
    .locals 29

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    mul-int/2addr v4, v5

    new-array v3, v4, [I

    .line 138
    .local v3, "pixels":[I
    const/16 v24, 0x0

    .line 139
    .local v24, "pixelsIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->MEAN_RGB:[D

    const/4 v5, 0x0

    aget-wide v22, v4, v5

    .line 140
    .local v22, "mean_r":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->MEAN_RGB:[D

    const/4 v5, 0x1

    aget-wide v20, v4, v5

    .line 141
    .local v20, "mean_g":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->MEAN_RGB:[D

    const/4 v5, 0x2

    aget-wide v18, v4, v5

    .line 143
    .local v18, "mean_b":D
    const/4 v12, 0x2

    .line 144
    .local v12, "gap":I
    const/16 v17, 0x2

    .line 146
    .local v17, "pixelStride":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    if-ge v15, v4, :cond_2

    .line 148
    move v13, v12

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    add-int/lit8 v4, v4, 0x4

    sub-int/2addr v4, v12

    if-ge v13, v4, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    add-int/lit8 v4, v4, 0x4

    mul-int/2addr v4, v15

    add-int/2addr v4, v13

    mul-int v25, v4, v17

    .line 151
    .local v25, "pos":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->rstImg1D:[B

    aget-byte v4, v4, v25

    and-int/lit16 v0, v4, 0xff

    move/from16 v27, v0

    .line 152
    .local v27, "rst0":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->rstImg1D:[B

    add-int/lit8 v5, v25, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    move/from16 v28, v0

    .line 153
    .local v28, "rst1":I
    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_0

    const/4 v11, 0x0

    .line 155
    .local v11, "A":I
    :goto_2
    and-int/lit16 v4, v11, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v5, v11, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v11, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v11, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v24

    .line 160
    add-int/lit8 v24, v24, 0x1

    .line 148
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 153
    .end local v11    # "A":I
    :cond_0
    const/16 v11, 0xff

    goto :goto_2

    .line 146
    .end local v25    # "pos":I
    .end local v27    # "rst0":I
    .end local v28    # "rst1":I
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 164
    .end local v13    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 165
    .local v2, "mutableBmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 167
    move-object/from16 v16, v2

    .line 169
    .local v16, "maskBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->isHwRotate:Z

    if-eqz v4, :cond_7

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_6

    const/4 v14, 0x1

    .line 171
    .local v14, "isLandscapeBuffer":Z
    :goto_3
    if-eqz v14, :cond_3

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v8, v4, v5

    .line 174
    .local v8, "resize_h":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    sub-int v6, v4, v8

    .line 176
    .local v6, "resize_top":I
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v2, v4, v6, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 201
    .end local v6    # "resize_top":I
    .end local v8    # "resize_h":I
    .end local v14    # "isLandscapeBuffer":Z
    :cond_3
    :goto_4
    move-object/from16 v26, v16

    .line 202
    .local v26, "resultBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    if-eq v4, v5, :cond_5

    .line 203
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 206
    :cond_5
    return-object v26

    .line 170
    .end local v26    # "resultBmp":Landroid/graphics/Bitmap;
    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    .line 179
    :cond_7
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 180
    .local v9, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->jpegRotation:I

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 181
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->jpegRotation:I

    sparse-switch v4, :sswitch_data_0

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_WIDTH:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v8, v4, v5

    .line 192
    .restart local v8    # "resize_h":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageLite;->PS_HEIGHT:I

    sub-int v6, v4, v8

    .line 194
    .restart local v6    # "resize_top":I
    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v10, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    goto :goto_4

    .line 184
    .end local v6    # "resize_top":I
    .end local v8    # "resize_h":I
    :sswitch_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 185
    goto/16 :goto_4

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public getRstImg1D()[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageLite;->rstImg1D:[B

    return-object v0
.end method
