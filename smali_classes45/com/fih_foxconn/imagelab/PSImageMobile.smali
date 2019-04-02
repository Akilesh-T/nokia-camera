.class public Lcom/fih_foxconn/imagelab/PSImageMobile;
.super Lcom/fih_foxconn/imagelab/AbstractPSImage;
.source "PSImageMobile.java"


# static fields
.field private static final LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;


# instance fields
.field private img1D:[F

.field private rstImg1D:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>()V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 26
    const/4 v0, 0x4

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/fih_foxconn/imagelab/PSImageMobile;-><init>(Landroid/graphics/Bitmap;IZI)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZ)V
    .locals 7
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z

    .prologue
    .line 31
    const/16 v4, 0x12c

    const/16 v5, 0x190

    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/fih_foxconn/imagelab/PSImageMobile;-><init>(Landroid/graphics/Bitmap;IZIII)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZI)V
    .locals 7
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z
    .param p4, "numOfInputChannels"    # I

    .prologue
    .line 36
    const/16 v4, 0x12c

    const/16 v5, 0x190

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/fih_foxconn/imagelab/PSImageMobile;-><init>(Landroid/graphics/Bitmap;IZIII)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZII)V
    .locals 7
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z
    .param p4, "ps_w"    # I
    .param p5, "ps_h"    # I

    .prologue
    .line 40
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fih_foxconn/imagelab/PSImageMobile;-><init>(Landroid/graphics/Bitmap;IZIII)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZIII)V
    .locals 6
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z
    .param p4, "ps_w"    # I
    .param p5, "ps_h"    # I
    .param p6, "numOfInputChannels"    # I

    .prologue
    const/4 v5, 0x3

    .line 43
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSImage;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->width:I

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->height:I

    .line 46
    iput p2, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->jpegRotation:I

    .line 47
    iput-boolean p3, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->isHwRotate:Z

    .line 49
    new-array v0, v5, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->MEAN_RGB:[D

    .line 50
    iput p6, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->NUM_PS_INPUT_CHANNELS:I

    .line 52
    iput p4, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    .line 53
    iput p5, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_HEIGHT:I

    .line 55
    iget v0, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_HEIGHT:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->NUM_PS_INPUT_CHANNELS:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->img1D:[F

    .line 56
    iget v0, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->rstImg1D:[J

    .line 57
    iget v0, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->argbPixels:[I

    .line 59
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    .line 60
    sget-object v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v1, "jpegRotation: %d isHwRotate: %s ps_w:%d ps_h: %d ch: %d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/fih_foxconn/imagelab/PSImageMobile;->prepareInputBmpArgb(Landroid/graphics/Bitmap;)V

    .line 63
    return-void

    .line 49
    nop

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
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getRstBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    .local v1, "maskBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    .line 80
    .local v9, "argbBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 81
    .local v4, "in_width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 82
    .local v8, "in_height":I
    mul-int v3, v4, v8

    new-array v2, v3, [I

    .line 83
    .local v2, "mask":[I
    mul-int v3, v4, v8

    new-array v10, v3, [I

    .line 85
    .local v10, "argb":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 86
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 88
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    mul-int v3, v4, v8

    move/from16 v0, v19

    if-ge v0, v3, :cond_0

    .line 89
    aget v3, v10, v19

    const v5, 0xffffff

    and-int/2addr v3, v5

    aget v5, v2, v19

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    aput v3, v10, v19

    .line 88
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 92
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 93
    .local v11, "resultBmp":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v10

    move v14, v4

    move/from16 v17, v4

    move/from16 v18, v8

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 95
    return-object v11
.end method

.method public getInputImg1D()[F
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->img1D:[F

    return-object v0
.end method

.method public getRstBitmap()Landroid/graphics/Bitmap;
    .locals 25

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_HEIGHT:I

    mul-int/2addr v4, v5

    new-array v3, v4, [I

    .line 104
    .local v3, "pixels":[I
    const/16 v22, 0x0

    .line 105
    .local v22, "pixelsIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->MEAN_RGB:[D

    const/4 v5, 0x0

    aget-wide v20, v4, v5

    .line 106
    .local v20, "mean_r":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->MEAN_RGB:[D

    const/4 v5, 0x1

    aget-wide v18, v4, v5

    .line 107
    .local v18, "mean_g":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->MEAN_RGB:[D

    const/4 v5, 0x2

    aget-wide v16, v4, v5

    .line 108
    .local v16, "mean_b":D
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_HEIGHT:I

    if-ge v14, v4, :cond_1

    .line 110
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    if-ge v12, v4, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    mul-int/2addr v4, v14

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->NUM_PS_INPUT_CHANNELS:I

    mul-int v23, v4, v5

    .line 113
    .local v23, "pos":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->rstImg1D:[J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    mul-int/2addr v5, v14

    add-int/2addr v5, v12

    aget-wide v4, v4, v5

    long-to-int v4, v4

    mul-int/lit16 v11, v4, 0xff

    .line 114
    .local v11, "A":I
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

    aput v4, v3, v22

    .line 119
    add-int/lit8 v22, v22, 0x1

    .line 110
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 108
    .end local v11    # "A":I
    .end local v23    # "pos":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 123
    .end local v12    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_HEIGHT:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 124
    .local v2, "mutableBmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_HEIGHT:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 127
    move-object v15, v2

    .line 129
    .local v15, "maskBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->isHwRotate:Z

    if-eqz v4, :cond_6

    .line 130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_5

    const/4 v13, 0x1

    .line 131
    .local v13, "isLandscapeBuffer":Z
    :goto_2
    if-eqz v13, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v8, v4, v5

    .line 134
    .local v8, "resize_h":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_HEIGHT:I

    sub-int v6, v4, v8

    .line 136
    .local v6, "resize_top":I
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v2, v4, v6, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 161
    .end local v6    # "resize_top":I
    .end local v8    # "resize_h":I
    .end local v13    # "isLandscapeBuffer":Z
    :cond_2
    :goto_3
    move-object/from16 v24, v15

    .line 162
    .local v24, "resultBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_HEIGHT:I

    if-eq v4, v5, :cond_4

    .line 163
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v15, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 166
    :cond_4
    return-object v24

    .line 130
    .end local v24    # "resultBmp":Landroid/graphics/Bitmap;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 139
    :cond_6
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    .local v9, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->jpegRotation:I

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 141
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->jpegRotation:I

    sparse-switch v4, :sswitch_data_0

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_WIDTH:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v8, v4, v5

    .line 152
    .restart local v8    # "resize_h":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageMobile;->PS_HEIGHT:I

    sub-int v6, v4, v8

    .line 154
    .restart local v6    # "resize_top":I
    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v10, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    goto :goto_3

    .line 144
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

    move-result-object v15

    .line 145
    goto/16 :goto_3

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public getRstImg1D()[J
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageMobile;->rstImg1D:[J

    return-object v0
.end method
