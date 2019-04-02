.class public Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:[B

.field private c:[B

.field private d:[B

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->a:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->g:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->h:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    return-void
.end method

.method private a()I
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->j:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->e:I

    div-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->f:I

    div-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v2, v4, v8

    new-array v2, v2, [I

    mul-int v3, v4, v8

    new-array v10, v3, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v3, 0x0

    :goto_0
    mul-int v5, v4, v8

    if-ge v3, v5, :cond_0

    aget v5, v2, v3

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    aput v5, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->a:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getHistogram(Landroid/content/Context;Landroid/graphics/Bitmap;)[I

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v1}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getTwoMeansCenters(Landroid/graphics/Bitmap;)[F

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v4, v2}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getRefinedTwoMeansThreshold([I[F)I

    move-result v5

    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget v6, v4, v3

    if-le v6, v1, :cond_1

    aget v1, v4, v3

    move v2, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method


# virtual methods
.method public getDepthMap()[B
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->b:[B

    return-object v0
.end method

.method public getOriImage()[B
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->c:[B

    return-object v0
.end method

.method public getResultImage()[B
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->d:[B

    return-object v0
.end method

.method public refocus(II[B)I
    .locals 14

    new-instance v1, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/fih_foxconn/depthlib/improc/Depthmap;->parse(Ljava/io/InputStream;Z)Lcom/fih_foxconn/depthlib/improc/Depthmap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fih_foxconn/depthlib/improc/Depthmap;->hasDepthMap()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->c:[B

    invoke-virtual {v1}, Lcom/fih_foxconn/depthlib/improc/Depthmap;->byteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->b:[B

    const/4 v2, 0x0

    move-object/from16 v0, p3

    array-length v3, v0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->i:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->e:I

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->f:I

    invoke-virtual {v1}, Lcom/fih_foxconn/depthlib/improc/Depthmap;->depthmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->j:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->e:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->f:I

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/fih_foxconn/depthlib/improc/Depthmap;->depthmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->e:I

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->f:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->j:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const-string v1, "mFocusPos.x : %s, mFocusPos.y : %s, pixel x: %s, pixel y: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->e:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->f:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->j:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->e:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->f:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->g:I

    :goto_1
    const-string v1, "target depth : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v7

    new-instance v5, Lcom/fih_foxconn/depthlib/a;

    invoke-direct {v5, v7}, Lcom/fih_foxconn/depthlib/a;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    invoke-static {v7}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v8

    invoke-static {v7}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->create(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/ScriptIntrinsicResize;

    move-result-object v9

    invoke-static {v7}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->e:I

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->f:I

    invoke-static {v7, v1, v2, v3}, Landroid/support/v8/renderscript/Type;->createXY(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-static {v7, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->i:Landroid/graphics/Bitmap;

    invoke-static {v7, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v10

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->i:Landroid/graphics/Bitmap;

    invoke-static {v7, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v11

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->j:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->e:I

    div-int/lit8 v4, v4, 0x6

    iget v6, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->f:I

    div-int/lit8 v6, v6, 0x6

    const/4 v12, 0x1

    invoke-static {v1, v4, v6, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v8, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v8, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v8, v6}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v9, v6}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v9, v10}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v5, v11}, Lcom/fih_foxconn/depthlib/a;->a(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v5, v10}, Lcom/fih_foxconn/depthlib/a;->b(Landroid/support/v8/renderscript/Allocation;)V

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->h:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Lcom/fih_foxconn/depthlib/a;->c(I)V

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->g:I

    invoke-virtual {v5, v1}, Lcom/fih_foxconn/depthlib/a;->a(I)V

    const/4 v1, 0x0

    move v6, v1

    :goto_2
    const/16 v1, 0x8

    if-ge v6, v1, :cond_a

    mul-int/lit8 v1, v6, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->i:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x0

    invoke-virtual {v1, v4, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_3
    invoke-static {v7, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v6, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v8, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v8, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v8, v12}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v9, v12}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    rem-int/lit8 v1, v6, 0x2

    if-nez v1, :cond_6

    move-object v1, v2

    :goto_5
    invoke-virtual {v9, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v12}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    if-nez v6, :cond_7

    move-object v1, v2

    move-object v4, v5

    :goto_6
    invoke-virtual {v4, v1}, Lcom/fih_foxconn/depthlib/a;->c(Landroid/support/v8/renderscript/Allocation;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->a()I

    move-result v1

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->g:I

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->i:Landroid/graphics/Bitmap;

    iget v12, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->e:I

    div-int/2addr v12, v1

    iget v13, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->f:I

    div-int v1, v13, v1

    const/4 v13, 0x1

    invoke-static {v4, v12, v1, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/high16 v1, 0x41100000    # 9.0f

    goto :goto_4

    :cond_6
    move-object v1, v3

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v5, v1}, Lcom/fih_foxconn/depthlib/a;->b(I)V

    rem-int/lit8 v1, v6, 0x2

    if-nez v1, :cond_8

    move-object v1, v2

    :goto_7
    invoke-virtual {v5, v1}, Lcom/fih_foxconn/depthlib/a;->d(Landroid/support/v8/renderscript/Allocation;)V

    rem-int/lit8 v1, v6, 0x2

    if-nez v1, :cond_9

    move-object v1, v2

    move-object v4, v5

    goto :goto_6

    :cond_8
    move-object v1, v3

    goto :goto_7

    :cond_9
    move-object v1, v3

    move-object v4, v5

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->e:I

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->f:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/support/v8/renderscript/RenderScript;->finish()V

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v10}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v5}, Lcom/fih_foxconn/depthlib/a;->destroy()V

    invoke-virtual {v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->destroy()V

    invoke-virtual {v9}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->destroy()V

    invoke-virtual {v7}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->d:[B

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->b:[B

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->c:[B

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->d:[B

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->i:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->j:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public setBlurStrength(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->h:F

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusPos(FF)I
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v2

    if-gez v0, :cond_0

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/MainCamBokeh;->k:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    goto :goto_0
.end method
