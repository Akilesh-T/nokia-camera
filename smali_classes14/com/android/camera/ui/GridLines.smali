.class public Lcom/android/camera/ui/GridLines;
.super Landroid/view/View;
.source "GridLines.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# instance fields
.field private mDrawBounds:Landroid/graphics/RectF;

.field mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private setDrawBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/ui/GridLines;->invalidate()V

    .line 76
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 44
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GridLines;->mPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/GridLines;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/GridLines;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v8, v0, v3

    .line 54
    .local v8, "thirdWidth":F
    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v7, v0, v3

    .line 55
    .local v7, "thirdHeight":F
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x3

    if-ge v6, v0, :cond_1

    .line 57
    int-to-float v0, v6

    mul-float v9, v8, v0

    .line 58
    .local v9, "x":F
    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v9

    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v3, v0, v9

    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/camera/ui/GridLines;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 61
    int-to-float v0, v6

    mul-float v10, v7, v0

    .line 62
    .local v10, "y":F
    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v10

    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v4, v0, v10

    iget-object v5, p0, Lcom/android/camera/ui/GridLines;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 66
    .end local v6    # "i":I
    .end local v7    # "thirdHeight":F
    .end local v8    # "thirdWidth":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_1
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GridLines;->setDrawBounds(Landroid/graphics/RectF;)V

    .line 71
    return-void
.end method
