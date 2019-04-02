.class public Lcom/rd/draw/drawer/type/DropDrawer;
.super Lcom/rd/draw/drawer/type/BaseDrawer;
.source "DropDrawer.java"


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
    invoke-direct {p0, p1, p2}, Lcom/rd/draw/drawer/type/BaseDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    .line 15
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;II)V
    .locals 8
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
    instance-of v4, p2, Lcom/rd/animation/data/type/DropAnimationValue;

    if-nez v4, :cond_0

    .line 41
    :goto_0
    return-void

    :cond_0
    move-object v3, p2

    .line 27
    check-cast v3, Lcom/rd/animation/data/type/DropAnimationValue;

    .line 28
    .local v3, "v":Lcom/rd/animation/data/type/DropAnimationValue;
    iget-object v4, p0, Lcom/rd/draw/drawer/type/DropDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v2

    .line 29
    .local v2, "unselectedColor":I
    iget-object v4, p0, Lcom/rd/draw/drawer/type/DropDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v1

    .line 30
    .local v1, "selectedColor":I
    iget-object v4, p0, Lcom/rd/draw/drawer/type/DropDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v4

    int-to-float v0, v4

    .line 32
    .local v0, "radius":F
    iget-object v4, p0, Lcom/rd/draw/drawer/type/DropDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/rd/draw/drawer/type/DropDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 35
    iget-object v4, p0, Lcom/rd/draw/drawer/type/DropDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v4, p0, Lcom/rd/draw/drawer/type/DropDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/rd/draw/data/Indicator;->getOrientation()Lcom/rd/draw/data/Orientation;

    move-result-object v4

    sget-object v5, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v4, v5, :cond_1

    .line 37
    invoke-virtual {v3}, Lcom/rd/animation/data/type/DropAnimationValue;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Lcom/rd/animation/data/type/DropAnimationValue;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/rd/animation/data/type/DropAnimationValue;->getRadius()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rd/draw/drawer/type/DropDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v3}, Lcom/rd/animation/data/type/DropAnimationValue;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Lcom/rd/animation/data/type/DropAnimationValue;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/rd/animation/data/type/DropAnimationValue;->getRadius()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rd/draw/drawer/type/DropDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
