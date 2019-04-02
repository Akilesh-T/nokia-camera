.class public Lcom/rd/draw/drawer/type/WormDrawer;
.super Lcom/rd/draw/drawer/type/BaseDrawer;
.source "WormDrawer.java"


# instance fields
.field public rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/rd/draw/drawer/type/BaseDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/rd/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    .line 19
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;II)V
    .locals 10
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
    .line 27
    instance-of v6, p2, Lcom/rd/animation/data/type/WormAnimationValue;

    if-nez v6, :cond_0

    .line 57
    :goto_0
    return-void

    :cond_0
    move-object v5, p2

    .line 31
    check-cast v5, Lcom/rd/animation/data/type/WormAnimationValue;

    .line 32
    .local v5, "v":Lcom/rd/animation/data/type/WormAnimationValue;
    invoke-virtual {v5}, Lcom/rd/animation/data/type/WormAnimationValue;->getRectStart()I

    move-result v2

    .line 33
    .local v2, "rectStart":I
    invoke-virtual {v5}, Lcom/rd/animation/data/type/WormAnimationValue;->getRectEnd()I

    move-result v1

    .line 35
    .local v1, "rectEnd":I
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v0

    .line 36
    .local v0, "radius":I
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v4

    .line 37
    .local v4, "unselectedColor":I
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v3

    .line 39
    .local v3, "selectedColor":I
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->getOrientation()Lcom/rd/draw/data/Orientation;

    move-result-object v6

    sget-object v7, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v6, v7, :cond_1

    .line 40
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v7, v2

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 41
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v7, v1

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 42
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    sub-int v7, p4, v0

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 43
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    add-int v7, p4, v0

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 52
    :goto_1
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    int-to-float v6, p3

    int-to-float v7, p4

    int-to-float v8, v0

    iget-object v9, p0, Lcom/rd/draw/drawer/type/WormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 55
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/rd/draw/drawer/type/WormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    sub-int v7, p3, v0

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 47
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    add-int v7, p3, v0

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 48
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v7, v2

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 49
    iget-object v6, p0, Lcom/rd/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v7, v1

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    goto :goto_1
.end method
