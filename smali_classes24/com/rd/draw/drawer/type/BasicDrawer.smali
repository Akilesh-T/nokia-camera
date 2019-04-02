.class public Lcom/rd/draw/drawer/type/BasicDrawer;
.super Lcom/rd/draw/drawer/type/BaseDrawer;
.source "BasicDrawer.java"


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
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/rd/draw/drawer/type/BaseDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    .line 17
    iget-object v0, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object v0, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    iget-object v0, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IZII)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "isSelectedItem"    # Z
    .param p4, "coordinateX"    # I
    .param p5, "coordinateY"    # I

    .prologue
    .line 29
    iget-object v10, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v10

    int-to-float v4, v10

    .line 30
    .local v4, "radius":F
    iget-object v10, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v8

    .line 31
    .local v8, "strokePx":I
    iget-object v10, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getScaleFactor()F

    move-result v5

    .line 33
    .local v5, "scaleFactor":F
    iget-object v10, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v6

    .line 34
    .local v6, "selectedColor":I
    iget-object v10, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v9

    .line 35
    .local v9, "unselectedColor":I
    iget-object v10, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v7

    .line 36
    .local v7, "selectedPosition":I
    iget-object v10, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v10}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v1

    .line 38
    .local v1, "animationType":Lcom/rd/animation/type/AnimationType;
    sget-object v10, Lcom/rd/animation/type/AnimationType;->SCALE:Lcom/rd/animation/type/AnimationType;

    if-ne v1, v10, :cond_2

    if-nez p3, :cond_2

    .line 39
    mul-float/2addr v4, v5

    .line 45
    :cond_0
    :goto_0
    move v2, v9

    .line 46
    .local v2, "color":I
    if-ne p2, v7, :cond_1

    .line 47
    move v2, v6

    .line 51
    :cond_1
    sget-object v10, Lcom/rd/animation/type/AnimationType;->FILL:Lcom/rd/animation/type/AnimationType;

    if-ne v1, v10, :cond_3

    if-eq p2, v7, :cond_3

    .line 52
    iget-object v3, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    .line 53
    .local v3, "paint":Landroid/graphics/Paint;
    int-to-float v10, v8

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    move/from16 v0, p4

    int-to-float v10, v0

    move/from16 v0, p5

    int-to-float v11, v0

    invoke-virtual {p1, v10, v11, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    return-void

    .line 41
    .end local v2    # "color":I
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_2
    sget-object v10, Lcom/rd/animation/type/AnimationType;->SCALE_DOWN:Lcom/rd/animation/type/AnimationType;

    if-ne v1, v10, :cond_0

    if-eqz p3, :cond_0

    .line 42
    mul-float/2addr v4, v5

    goto :goto_0

    .line 55
    .restart local v2    # "color":I
    :cond_3
    iget-object v3, p0, Lcom/rd/draw/drawer/type/BasicDrawer;->paint:Landroid/graphics/Paint;

    .restart local v3    # "paint":Landroid/graphics/Paint;
    goto :goto_1
.end method
