.class public Lcom/rd/draw/drawer/type/FillDrawer;
.super Lcom/rd/draw/drawer/type/BaseDrawer;
.source "FillDrawer.java"


# instance fields
.field private strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/rd/draw/drawer/type/BaseDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    .line 18
    iget-object v0, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object v0, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V
    .locals 12
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
    .line 29
    instance-of v8, p2, Lcom/rd/animation/data/type/FillAnimationValue;

    if-nez v8, :cond_0

    .line 73
    :goto_0
    return-void

    :cond_0
    move-object v7, p2

    .line 33
    check-cast v7, Lcom/rd/animation/data/type/FillAnimationValue;

    .line 34
    .local v7, "v":Lcom/rd/animation/data/type/FillAnimationValue;
    iget-object v8, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v8}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v1

    .line 35
    .local v1, "color":I
    iget-object v8, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v8}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v8

    int-to-float v3, v8

    .line 36
    .local v3, "radius":F
    iget-object v8, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v8}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v6

    .line 38
    .local v6, "stroke":I
    iget-object v8, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v8}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v4

    .line 39
    .local v4, "selectedPosition":I
    iget-object v8, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v8}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v5

    .line 40
    .local v5, "selectingPosition":I
    iget-object v8, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v8}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v2

    .line 42
    .local v2, "lastSelectedPosition":I
    iget-object v8, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v8}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 43
    if-ne p3, v5, :cond_2

    .line 44
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getColor()I

    move-result v1

    .line 45
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getRadius()I

    move-result v8

    int-to-float v3, v8

    .line 46
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getStroke()I

    move-result v6

    .line 67
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v8, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    move/from16 v0, p4

    int-to-float v8, v0

    move/from16 v0, p5

    int-to-float v9, v0

    iget-object v10, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    iget-object v8, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    move/from16 v0, p4

    int-to-float v8, v0

    move/from16 v0, p5

    int-to-float v9, v0

    iget-object v10, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v3, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 48
    :cond_2
    if-ne p3, v4, :cond_1

    .line 49
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getColorReverse()I

    move-result v1

    .line 50
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getRadiusReverse()I

    move-result v8

    int-to-float v3, v8

    .line 51
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getStrokeReverse()I

    move-result v6

    goto :goto_1

    .line 55
    :cond_3
    if-ne p3, v4, :cond_4

    .line 56
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getColor()I

    move-result v1

    .line 57
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getRadius()I

    move-result v8

    int-to-float v3, v8

    .line 58
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getStroke()I

    move-result v6

    goto :goto_1

    .line 60
    :cond_4
    if-ne p3, v2, :cond_1

    .line 61
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getColorReverse()I

    move-result v1

    .line 62
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getRadiusReverse()I

    move-result v8

    int-to-float v3, v8

    .line 63
    invoke-virtual {v7}, Lcom/rd/animation/data/type/FillAnimationValue;->getStrokeReverse()I

    move-result v6

    goto :goto_1
.end method
