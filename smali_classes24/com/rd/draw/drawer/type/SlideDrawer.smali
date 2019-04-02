.class public Lcom/rd/draw/drawer/type/SlideDrawer;
.super Lcom/rd/draw/drawer/type/BaseDrawer;
.source "SlideDrawer.java"


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
    .locals 9
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
    instance-of v5, p2, Lcom/rd/animation/data/type/SlideAnimationValue;

    if-nez v5, :cond_0

    .line 42
    :goto_0
    return-void

    :cond_0
    move-object v4, p2

    .line 27
    check-cast v4, Lcom/rd/animation/data/type/SlideAnimationValue;

    .line 28
    .local v4, "v":Lcom/rd/animation/data/type/SlideAnimationValue;
    invoke-virtual {v4}, Lcom/rd/animation/data/type/SlideAnimationValue;->getCoordinate()I

    move-result v0

    .line 29
    .local v0, "coordinate":I
    iget-object v5, p0, Lcom/rd/draw/drawer/type/SlideDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v3

    .line 30
    .local v3, "unselectedColor":I
    iget-object v5, p0, Lcom/rd/draw/drawer/type/SlideDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v2

    .line 31
    .local v2, "selectedColor":I
    iget-object v5, p0, Lcom/rd/draw/drawer/type/SlideDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 33
    .local v1, "radius":I
    iget-object v5, p0, Lcom/rd/draw/drawer/type/SlideDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    int-to-float v5, p3

    int-to-float v6, p4

    int-to-float v7, v1

    iget-object v8, p0, Lcom/rd/draw/drawer/type/SlideDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    iget-object v5, p0, Lcom/rd/draw/drawer/type/SlideDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v5, p0, Lcom/rd/draw/drawer/type/SlideDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/rd/draw/data/Indicator;->getOrientation()Lcom/rd/draw/data/Orientation;

    move-result-object v5

    sget-object v6, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v5, v6, :cond_1

    .line 38
    int-to-float v5, v0

    int-to-float v6, p4

    int-to-float v7, v1

    iget-object v8, p0, Lcom/rd/draw/drawer/type/SlideDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 40
    :cond_1
    int-to-float v5, p3

    int-to-float v6, v0

    int-to-float v7, v1

    iget-object v8, p0, Lcom/rd/draw/drawer/type/SlideDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
