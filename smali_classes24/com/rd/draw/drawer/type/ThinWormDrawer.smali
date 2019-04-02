.class public Lcom/rd/draw/drawer/type/ThinWormDrawer;
.super Lcom/rd/draw/drawer/type/WormDrawer;
.source "ThinWormDrawer.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/rd/draw/drawer/type/WormDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    .line 15
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;II)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "coordinateX"    # I
    .param p4, "coordinateY"    # I

    .prologue
    .line 23
    instance-of v7, p2, Lcom/rd/animation/data/type/ThinWormAnimationValue;

    if-nez v7, :cond_0

    .line 54
    :goto_0
    return-void

    :cond_0
    move-object v6, p2

    .line 27
    check-cast v6, Lcom/rd/animation/data/type/ThinWormAnimationValue;

    .line 28
    .local v6, "v":Lcom/rd/animation/data/type/ThinWormAnimationValue;
    invoke-virtual {v6}, Lcom/rd/animation/data/type/ThinWormAnimationValue;->getRectStart()I

    move-result v3

    .line 29
    .local v3, "rectStart":I
    invoke-virtual {v6}, Lcom/rd/animation/data/type/ThinWormAnimationValue;->getRectEnd()I

    move-result v2

    .line 30
    .local v2, "rectEnd":I
    invoke-virtual {v6}, Lcom/rd/animation/data/type/ThinWormAnimationValue;->getHeight()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 32
    .local v0, "height":I
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 33
    .local v1, "radius":I
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v5

    .line 34
    .local v5, "unselectedColor":I
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v4

    .line 36
    .local v4, "selectedColor":I
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getOrientation()Lcom/rd/draw/data/Orientation;

    move-result-object v7

    sget-object v8, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v7, v8, :cond_1

    .line 37
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v8, v3

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 38
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v8, v2

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 39
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    sub-int v8, p4, v0

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 40
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    add-int v8, p4, v0

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 49
    :goto_1
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    int-to-float v7, p3

    int-to-float v8, p4

    int-to-float v9, v1

    iget-object v10, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v8, v1

    int-to-float v9, v1

    iget-object v10, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    sub-int v8, p3, v0

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 44
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    add-int v8, p3, v0

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 45
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v8, v3

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 46
    iget-object v7, p0, Lcom/rd/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v8, v2

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    goto :goto_1
.end method
