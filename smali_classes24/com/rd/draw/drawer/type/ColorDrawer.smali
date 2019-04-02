.class public Lcom/rd/draw/drawer/type/ColorDrawer;
.super Lcom/rd/draw/drawer/type/BaseDrawer;
.source "ColorDrawer.java"


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
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/rd/draw/drawer/type/BaseDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    .line 14
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "position"    # I
    .param p4, "coordinateX"    # I
    .param p5, "coordinateY"    # I

    .prologue
    .line 22
    instance-of v6, p2, Lcom/rd/animation/data/type/ColorAnimationValue;

    if-nez v6, :cond_0

    .line 53
    :goto_0
    return-void

    :cond_0
    move-object v5, p2

    .line 26
    check-cast v5, Lcom/rd/animation/data/type/ColorAnimationValue;

    .line 27
    .local v5, "v":Lcom/rd/animation/data/type/ColorAnimationValue;
    iget-object v6, p0, Lcom/rd/draw/drawer/type/ColorDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v6

    int-to-float v2, v6

    .line 28
    .local v2, "radius":F
    iget-object v6, p0, Lcom/rd/draw/drawer/type/ColorDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    .line 30
    .local v0, "color":I
    iget-object v6, p0, Lcom/rd/draw/drawer/type/ColorDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v3

    .line 31
    .local v3, "selectedPosition":I
    iget-object v6, p0, Lcom/rd/draw/drawer/type/ColorDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v4

    .line 32
    .local v4, "selectingPosition":I
    iget-object v6, p0, Lcom/rd/draw/drawer/type/ColorDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v1

    .line 34
    .local v1, "lastSelectedPosition":I
    iget-object v6, p0, Lcom/rd/draw/drawer/type/ColorDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 35
    if-ne p3, v4, :cond_2

    .line 36
    invoke-virtual {v5}, Lcom/rd/animation/data/type/ColorAnimationValue;->getColor()I

    move-result v0

    .line 51
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/rd/draw/drawer/type/ColorDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    int-to-float v6, p4

    int-to-float v7, p5

    iget-object v8, p0, Lcom/rd/draw/drawer/type/ColorDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 38
    :cond_2
    if-ne p3, v3, :cond_1

    .line 39
    invoke-virtual {v5}, Lcom/rd/animation/data/type/ColorAnimationValue;->getColorReverse()I

    move-result v0

    goto :goto_1

    .line 43
    :cond_3
    if-ne p3, v3, :cond_4

    .line 44
    invoke-virtual {v5}, Lcom/rd/animation/data/type/ColorAnimationValue;->getColor()I

    move-result v0

    goto :goto_1

    .line 46
    :cond_4
    if-ne p3, v1, :cond_1

    .line 47
    invoke-virtual {v5}, Lcom/rd/animation/data/type/ColorAnimationValue;->getColorReverse()I

    move-result v0

    goto :goto_1
.end method
