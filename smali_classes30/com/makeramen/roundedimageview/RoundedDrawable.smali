.class public Lcom/makeramen/roundedimageview/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# static fields
.field public static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field public static final TAG:Ljava/lang/String; = "RoundedDrawable"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private final mBitmapWidth:I

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:F

.field private final mBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private final mCornersRounded:[Z

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mOval:Z

.field private mRebuildShader:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private final mSquareCornersRect:Landroid/graphics/RectF;

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v5, -0x1000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    .line 60
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 61
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 62
    iput-boolean v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mRebuildShader:Z

    .line 65
    iput v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mOval:Z

    .line 69
    iput v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    .line 70
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 71
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 74
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    .line 78
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    return-void

    .line 66
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private static all([Z)Z
    .locals 4
    .param p0, "booleans"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 622
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v0, p0, v2

    .line 623
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 625
    .end local v0    # "b":Z
    :goto_1
    return v1

    .line 622
    .restart local v0    # "b":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    .end local v0    # "b":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static any([Z)Z
    .locals 4
    .param p0, "booleans"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 615
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-boolean v0, p0, v2

    .line 616
    .local v0, "b":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 618
    .end local v0    # "b":Z
    :cond_0
    return v1

    .line 615
    .restart local v0    # "b":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x2

    .line 126
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 127
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v3, "height":I
    .local v4, "width":I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 131
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 132
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 134
    .restart local v3    # "height":I
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const-string v5, "RoundedDrawable"

    const-string v6, "Failed to create bitmap from drawable!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 92
    if-eqz p0, :cond_0

    .line 93
    new-instance v0, Lcom/makeramen/roundedimageview/RoundedDrawable;

    invoke-direct {v0, p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 100
    if-eqz p0, :cond_0

    .line 101
    instance-of v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;

    if-eqz v5, :cond_1

    .line 122
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v0, "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 104
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v5, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_3

    move-object v3, p0

    .line 105
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 106
    .local v3, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 109
    .local v4, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 110
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 111
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-static {v1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object p0, v3

    .line 113
    goto :goto_0

    .line 117
    .end local v2    # "i":I
    .end local v3    # "ld":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "num":I
    :cond_3
    invoke-static {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 119
    new-instance p0, Lcom/makeramen/roundedimageview/RoundedDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static only(I[Z)Z
    .locals 6
    .param p0, "index"    # I
    .param p1, "booleans"    # [Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 606
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 607
    aget-boolean v5, p1, v0

    if-ne v0, p0, :cond_0

    move v4, v3

    :goto_1
    if-eq v5, v4, :cond_1

    .line 611
    :goto_2
    return v2

    :cond_0
    move v4, v2

    .line 607
    goto :goto_1

    .line 606
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 611
    goto :goto_2
.end method

.method private redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 311
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    invoke-static {v5}, Lcom/makeramen/roundedimageview/RoundedDrawable;->all([Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 320
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, v5, Landroid/graphics/RectF;->left:F

    .line 321
    .local v1, "left":F
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, v5, Landroid/graphics/RectF;->top:F

    .line 322
    .local v4, "top":F
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float v3, v1, v5

    .line 323
    .local v3, "right":F
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float v0, v4, v5

    .line 324
    .local v0, "bottom":F
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 326
    .local v2, "radius":F
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-nez v5, :cond_2

    .line 327
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    add-float v6, v1, v2

    add-float v7, v4, v2

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 328
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 331
    :cond_2
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-nez v5, :cond_3

    .line 332
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    sub-float v6, v3, v2

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 333
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 336
    :cond_3
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v6, 0x2

    aget-boolean v5, v5, v6

    if-nez v5, :cond_4

    .line 337
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    sub-float v6, v3, v2

    sub-float v7, v0, v2

    invoke-virtual {v5, v6, v7, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 338
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 341
    :cond_4
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v6, 0x3

    aget-boolean v5, v5, v6

    if-nez v5, :cond_0

    .line 342
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    sub-float v6, v0, v2

    add-float v7, v1, v2

    invoke-virtual {v5, v1, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 343
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private redrawBorderForSquareCorners(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    invoke-static {v0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->all([Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->left:F

    .line 358
    .local v10, "left":F
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 359
    .local v2, "top":F
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float v13, v10, v0

    .line 360
    .local v13, "right":F
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float v9, v2, v0

    .line 361
    .local v9, "bottom":F
    iget v12, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 362
    .local v12, "radius":F
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    .line 364
    .local v11, "offset":F
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_2

    .line 365
    sub-float v1, v10, v11

    add-float v3, v10, v12

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 366
    sub-float v5, v2, v11

    add-float v7, v2, v12

    iget-object v8, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v10

    move v6, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_3

    .line 370
    sub-float v0, v13, v12

    sub-float v1, v0, v11

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v13

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 371
    sub-float v5, v2, v11

    add-float v7, v2, v12

    iget-object v8, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v13

    move v6, v13

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-nez v0, :cond_4

    .line 375
    sub-float v0, v13, v12

    sub-float v4, v0, v11

    add-float v6, v13, v11

    iget-object v8, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 376
    sub-float v5, v9, v12

    iget-object v8, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v13

    move v6, v13

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 380
    sub-float v4, v10, v11

    add-float v6, v10, v12

    iget-object v8, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 381
    sub-float v5, v9, v12

    iget-object v8, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v10

    move v6, v10

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x40000000    # 2.0f

    .line 172
    sget-object v3, Lcom/makeramen/roundedimageview/RoundedDrawable$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 228
    :pswitch_0
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 229
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 230
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 231
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 232
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 259
    :goto_0
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 260
    return-void

    .line 174
    :pswitch_1
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 175
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 177
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 178
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 179
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v8

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v5, v5

    .line 178
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 184
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 186
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 191
    .local v1, "dy":F
    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 193
    .local v2, "scale":F
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v8

    .line 199
    :goto_1
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 200
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v8

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    add-float v5, v1, v8

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 195
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 196
    .restart local v2    # "scale":F
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v8

    goto :goto_1

    .line 205
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "scale":F
    :pswitch_3
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 207
    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 208
    const/high16 v2, 0x3f800000    # 1.0f

    .line 214
    .restart local v2    # "scale":F
    :goto_2
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v8

    float-to-int v3, v3

    int-to-float v0, v3

    .line 215
    .restart local v0    # "dx":F
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v8

    float-to-int v3, v3

    int-to-float v1, v3

    .line 217
    .restart local v1    # "dy":F
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 218
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 220
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 221
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 222
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 223
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 210
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "scale":F
    :cond_1
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 211
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 210
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .restart local v2    # "scale":F
    goto :goto_2

    .line 236
    .end local v2    # "scale":F
    :pswitch_4
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 237
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 238
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 239
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 240
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 244
    :pswitch_5
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 245
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 246
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 247
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 248
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 252
    :pswitch_6
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 253
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 254
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 255
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 273
    iget-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mRebuildShader:Z

    if-eqz v2, :cond_1

    .line 274
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 275
    .local v0, "bitmapShader":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v2, v3, :cond_0

    .line 276
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mRebuildShader:Z

    .line 282
    .end local v0    # "bitmapShader":Landroid/graphics/BitmapShader;
    :cond_1
    iget-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mOval:Z

    if-eqz v2, :cond_4

    .line 283
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 284
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 285
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 308
    :cond_2
    :goto_0
    return-void

    .line 287
    :cond_3
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 290
    :cond_4
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    invoke-static {v2}, Lcom/makeramen/roundedimageview/RoundedDrawable;->any([Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 291
    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 292
    .local v1, "radius":F
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    .line 293
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 294
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->redrawBorderForSquareCorners(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 298
    :cond_5
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 302
    .end local v1    # "radius":F
    :cond_6
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 303
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    return v0
.end method

.method public getCornerRadius(I)F
    .locals 1
    .param p1, "corner"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 387
    const/4 v0, -0x3

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSourceBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public isOval()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mOval:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 266
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 268
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->updateShaderMatrix()V

    .line 269
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 159
    .local v0, "newColor":I
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    const/4 v1, 0x1

    .line 163
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v1

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 398
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->invalidateSelf()V

    .line 399
    return-void
.end method

.method public setBorderColor(I)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 542
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setBorderColor(Landroid/content/res/ColorStateList;)Lcom/makeramen/roundedimageview/RoundedDrawable;

    move-result-object v0

    return-object v0
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .locals 4
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 550
    if-eqz p1, :cond_0

    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :goto_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 551
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->getState()[I

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    return-object p0

    .line 550
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0
.end method

.method public setBorderWidth(F)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 532
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    .line 533
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 534
    return-object p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 409
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->invalidateSelf()V

    .line 410
    return-void
.end method

.method public setCornerRadius(F)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 456
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setCornerRadius(FFFF)Lcom/makeramen/roundedimageview/RoundedDrawable;

    .line 457
    return-object p0
.end method

.method public setCornerRadius(FFFF)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .locals 8
    .param p1, "topLeft"    # F
    .param p2, "topRight"    # F
    .param p3, "bottomRight"    # F
    .param p4, "bottomLeft"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 498
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 499
    .local v1, "radiusSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Float;>;"
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 506
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 507
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Multiple nonzero corner radii not yet supported."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 511
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 512
    .local v0, "radius":F
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    cmpg-float v2, v0, v7

    if-gez v2, :cond_2

    .line 513
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid radius value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 515
    :cond_2
    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 520
    .end local v0    # "radius":F
    :goto_0
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    cmpl-float v2, p1, v7

    if-lez v2, :cond_4

    move v2, v3

    :goto_1
    aput-boolean v2, v5, v4

    .line 521
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    cmpl-float v2, p2, v7

    if-lez v2, :cond_5

    move v2, v3

    :goto_2
    aput-boolean v2, v5, v3

    .line 522
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v6, 0x2

    cmpl-float v2, p3, v7

    if-lez v2, :cond_6

    move v2, v3

    :goto_3
    aput-boolean v2, v5, v6

    .line 523
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v5, 0x3

    cmpl-float v6, p4, v7

    if-lez v6, :cond_7

    :goto_4
    aput-boolean v3, v2, v5

    .line 524
    return-object p0

    .line 517
    :cond_3
    iput v7, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    goto :goto_0

    :cond_4
    move v2, v4

    .line 520
    goto :goto_1

    :cond_5
    move v2, v4

    .line 521
    goto :goto_2

    :cond_6
    move v2, v4

    .line 522
    goto :goto_3

    :cond_7
    move v3, v4

    .line 523
    goto :goto_4
.end method

.method public setCornerRadius(IF)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .locals 2
    .param p1, "corner"    # I
    .param p2, "radius"    # F

    .prologue
    const/4 v1, 0x0

    .line 468
    cmpl-float v0, p2, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multiple nonzero corner radii not yet supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    cmpl-float v0, p2, v1

    if-nez v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    invoke-static {p1, v0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->only(I[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iput v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 484
    :goto_0
    return-object p0

    .line 478
    :cond_2
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 479
    iput p2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 481
    :cond_3
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    goto :goto_0
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 414
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 415
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->invalidateSelf()V

    .line 416
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 420
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 421
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->invalidateSelf()V

    .line 422
    return-void
.end method

.method public setOval(Z)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .locals 0
    .param p1, "oval"    # Z

    .prologue
    .line 560
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mOval:Z

    .line 561
    return-object p0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 569
    if-nez p1, :cond_0

    .line 570
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 573
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 574
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->updateShaderMatrix()V

    .line 576
    :cond_1
    return-object p0
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .locals 1
    .param p1, "tileModeX"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    .line 585
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mRebuildShader:Z

    .line 587
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->invalidateSelf()V

    .line 589
    :cond_0
    return-object p0
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .locals 1
    .param p1, "tileModeY"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    .line 598
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mRebuildShader:Z

    .line 600
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->invalidateSelf()V

    .line 602
    :cond_0
    return-object p0
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 629
    invoke-static {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
