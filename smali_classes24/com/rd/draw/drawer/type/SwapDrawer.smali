.class public Lcom/rd/draw/drawer/type/SwapDrawer;
.super Lcom/rd/draw/drawer/type/BaseDrawer;
.source "SwapDrawer.java"


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
.method public draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V
    .locals 14
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
    .line 24
    move-object/from16 v0, p2

    instance-of v10, v0, Lcom/rd/animation/data/type/SwapAnimationValue;

    if-nez v10, :cond_0

    .line 67
    :goto_0
    return-void

    :cond_0
    move-object/from16 v9, p2

    .line 28
    check-cast v9, Lcom/rd/animation/data/type/SwapAnimationValue;

    .line 29
    .local v9, "v":Lcom/rd/animation/data/type/SwapAnimationValue;
    iget-object v10, p0, Lcom/rd/draw/drawer/type/SwapDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v5

    .line 30
    .local v5, "selectedColor":I
    iget-object v10, p0, Lcom/rd/draw/drawer/type/SwapDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v8

    .line 31
    .local v8, "unselectedColor":I
    iget-object v10, p0, Lcom/rd/draw/drawer/type/SwapDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v4

    .line 33
    .local v4, "radius":I
    iget-object v10, p0, Lcom/rd/draw/drawer/type/SwapDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v6

    .line 34
    .local v6, "selectedPosition":I
    iget-object v10, p0, Lcom/rd/draw/drawer/type/SwapDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v7

    .line 35
    .local v7, "selectingPosition":I
    iget-object v10, p0, Lcom/rd/draw/drawer/type/SwapDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v3

    .line 37
    .local v3, "lastSelectedPosition":I
    invoke-virtual {v9}, Lcom/rd/animation/data/type/SwapAnimationValue;->getCoordinate()I

    move-result v2

    .line 38
    .local v2, "coordinate":I
    move v1, v8

    .line 40
    .local v1, "color":I
    iget-object v10, p0, Lcom/rd/draw/drawer/type/SwapDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 41
    move/from16 v0, p3

    if-ne v0, v7, :cond_2

    .line 42
    invoke-virtual {v9}, Lcom/rd/animation/data/type/SwapAnimationValue;->getCoordinate()I

    move-result v2

    .line 43
    move v1, v5

    .line 61
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/rd/draw/drawer/type/SwapDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v10, p0, Lcom/rd/draw/drawer/type/SwapDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getOrientation()Lcom/rd/draw/data/Orientation;

    move-result-object v10

    sget-object v11, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v10, v11, :cond_5

    .line 63
    int-to-float v10, v2

    move/from16 v0, p5

    int-to-float v11, v0

    int-to-float v12, v4

    iget-object v13, p0, Lcom/rd/draw/drawer/type/SwapDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 45
    :cond_2
    move/from16 v0, p3

    if-ne v0, v6, :cond_1

    .line 46
    invoke-virtual {v9}, Lcom/rd/animation/data/type/SwapAnimationValue;->getCoordinateReverse()I

    move-result v2

    .line 47
    move v1, v8

    goto :goto_1

    .line 51
    :cond_3
    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 52
    invoke-virtual {v9}, Lcom/rd/animation/data/type/SwapAnimationValue;->getCoordinate()I

    move-result v2

    .line 53
    move v1, v5

    goto :goto_1

    .line 55
    :cond_4
    move/from16 v0, p3

    if-ne v0, v6, :cond_1

    .line 56
    invoke-virtual {v9}, Lcom/rd/animation/data/type/SwapAnimationValue;->getCoordinateReverse()I

    move-result v2

    .line 57
    move v1, v8

    goto :goto_1

    .line 65
    :cond_5
    move/from16 v0, p4

    int-to-float v10, v0

    int-to-float v11, v2

    int-to-float v12, v4

    iget-object v13, p0, Lcom/rd/draw/drawer/type/SwapDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method
