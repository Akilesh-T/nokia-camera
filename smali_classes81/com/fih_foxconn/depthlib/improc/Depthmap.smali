.class public Lcom/fih_foxconn/depthlib/improc/Depthmap;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/graphics/Bitmap;

.field c:[B

.field d:F

.field e:F

.field f:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->c:[B

    iput v2, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->d:F

    iput v2, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->e:F

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/fih_foxconn/depthlib/improc/Depthmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fih_foxconn/depthlib/improc/Depthmap;->parse(Ljava/io/InputStream;Z)Lcom/fih_foxconn/depthlib/improc/Depthmap;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Z)Lcom/fih_foxconn/depthlib/improc/Depthmap;
    .locals 4

    new-instance v1, Lcom/fih_foxconn/depthlib/improc/Depthmap;

    invoke-direct {v1}, Lcom/fih_foxconn/depthlib/improc/Depthmap;-><init>()V

    :try_start_0
    new-instance v0, Landroid/a/a/a/a;

    invoke-direct {v0, p0}, Landroid/a/a/a/a;-><init>(Ljava/io/InputStream;)V

    iget-object v2, v0, Landroid/a/a/a/a;->d:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    iget-wide v2, v0, Landroid/a/a/a/a;->b:D

    double-to-float v2, v2

    iput v2, v1, Lcom/fih_foxconn/depthlib/improc/Depthmap;->e:F

    iget-wide v2, v0, Landroid/a/a/a/a;->c:D

    double-to-float v2, v2

    iput v2, v1, Lcom/fih_foxconn/depthlib/improc/Depthmap;->d:F

    iget-object v2, v0, Landroid/a/a/a/a;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/fih_foxconn/depthlib/improc/Depthmap;->a:Ljava/lang/String;

    iget-object v2, v0, Landroid/a/a/a/a;->e:[B

    iput-object v2, v1, Lcom/fih_foxconn/depthlib/improc/Depthmap;->c:[B

    iget-object v0, v0, Landroid/a/a/a/a;->f:Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/fih_foxconn/depthlib/improc/Depthmap;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public byteArray()[B
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->c:[B

    return-object v0
.end method

.method public depthmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public far()F
    .locals 1

    iget v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->e:F

    return v0
.end method

.method public format()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->a:Ljava/lang/String;

    return-object v0
.end method

.method public gimage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public hasDepthMap()Z
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGImage()Z
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public near()F
    .locals 1

    iget v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->d:F

    return v0
.end method

.method public normalizedDepthmap()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 v0, 0x270f

    move v3, v0

    move v4, v2

    move v0, v2

    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    aget v5, v1, v0

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_1

    aget v5, v1, v0

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    sub-int v6, v4, v3

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/16 v6, 0xff

    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, v8

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Depthmap] depthmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", near="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", far="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->e:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/improc/Depthmap;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
