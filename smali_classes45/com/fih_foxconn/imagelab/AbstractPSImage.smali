.class public abstract Lcom/fih_foxconn/imagelab/AbstractPSImage;
.super Ljava/lang/Object;
.source "AbstractPSImage.java"


# instance fields
.field protected MEAN_RGB:[D

.field protected NUM_PS_INPUT_CHANNELS:I

.field protected PS_HEIGHT:I

.field protected PS_WIDTH:I

.field protected argbPixels:[I

.field protected height:I

.field protected inputRGB:Landroid/graphics/Bitmap;

.field protected isHwRotate:Z

.field protected jpegRotation:I

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x12c

    iput v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    .line 17
    const/16 v0, 0x190

    iput v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_HEIGHT:I

    .line 18
    const/4 v0, 0x4

    iput v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->NUM_PS_INPUT_CHANNELS:I

    return-void
.end method


# virtual methods
.method public abstract getBlendBitmap()Landroid/graphics/Bitmap;
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->NUM_PS_INPUT_CHANNELS:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->height:I

    return v0
.end method

.method public getInputImgArgb()[I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->argbPixels:[I

    return-object v0
.end method

.method public getPSHeight()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_HEIGHT:I

    return v0
.end method

.method public getPSWidth()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    return v0
.end method

.method public getRgbBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 116
    iget v1, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    iget v3, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    .local v0, "mutableBmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->argbPixels:[I

    iget v3, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    iget v6, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    iget v7, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_HEIGHT:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 118
    return-object v0
.end method

.method public abstract getRstBitmap()Landroid/graphics/Bitmap;
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->width:I

    return v0
.end method

.method protected prepareInputBmpArgb(Landroid/graphics/Bitmap;)V
    .locals 21
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 33
    .local v7, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->jpegRotation:I

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 37
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->isHwRotate:Z

    if-eqz v3, :cond_2

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    const/16 v17, 0x1

    .line 39
    .local v17, "isLandscapeBuffer":Z
    :goto_0
    if-eqz v17, :cond_1

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    mul-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int v18, v3, v4

    .line 41
    .local v18, "resize_h":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_HEIGHT:I

    sub-int v19, v3, v18

    .line 43
    .local v19, "resize_top":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 45
    .local v2, "resizeInput":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 46
    .local v8, "input":Landroid/graphics/Bitmap;
    const/high16 v3, -0x1000000

    invoke-virtual {v8, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 49
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    .local v16, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    move/from16 v0, v19

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    .end local v2    # "resizeInput":Landroid/graphics/Bitmap;
    .end local v16    # "canvas":Landroid/graphics/Canvas;
    .end local v17    # "isLandscapeBuffer":Z
    .end local v18    # "resize_h":I
    .end local v19    # "resize_top":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->argbPixels:[I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_HEIGHT:I

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 89
    return-void

    .line 38
    .end local v8    # "input":Landroid/graphics/Bitmap;
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 52
    .restart local v17    # "isLandscapeBuffer":Z
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_HEIGHT:I

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .restart local v8    # "input":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 55
    .end local v8    # "input":Landroid/graphics/Bitmap;
    .end local v17    # "isLandscapeBuffer":Z
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->jpegRotation:I

    sparse-switch v3, :sswitch_data_0

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    mul-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int v18, v3, v4

    .line 69
    .restart local v18    # "resize_h":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_HEIGHT:I

    sub-int v19, v3, v18

    .line 72
    .restart local v19    # "resize_top":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 73
    .restart local v2    # "resizeInput":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 76
    .local v20, "rotateInput":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 77
    .restart local v8    # "input":Landroid/graphics/Bitmap;
    const/high16 v3, -0x1000000

    invoke-virtual {v8, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 80
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .restart local v16    # "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    move/from16 v0, v19

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 60
    .end local v2    # "resizeInput":Landroid/graphics/Bitmap;
    .end local v8    # "input":Landroid/graphics/Bitmap;
    .end local v16    # "canvas":Landroid/graphics/Canvas;
    .end local v18    # "resize_h":I
    .end local v19    # "resize_top":I
    .end local v20    # "rotateInput":Landroid/graphics/Bitmap;
    :sswitch_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/AbstractPSImage;->PS_WIDTH:I

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 62
    .restart local v2    # "resizeInput":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 63
    .restart local v8    # "input":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method
