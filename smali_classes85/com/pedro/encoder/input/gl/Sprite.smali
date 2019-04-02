.class Lcom/pedro/encoder/input/gl/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# instance fields
.field private angle:F

.field private base:Landroid/graphics/RectF;

.field private scale:Landroid/graphics/PointF;

.field private translation:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/pedro/encoder/input/gl/Sprite;->reset()V

    .line 19
    return-void
.end method

.method private keepOldPosition(FFF)F
    .locals 6
    .param p1, "position"    # F
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 86
    sub-float v1, p2, v4

    .line 87
    .local v1, "oldRange":F
    mul-float v3, p1, v5

    div-float v2, v3, v1

    .line 88
    .local v2, "percent":F
    sub-float v0, p3, v4

    .line 89
    .local v0, "newRange":F
    div-float v3, v5, v2

    div-float p1, v0, v3

    .line 90
    return p1
.end method


# virtual methods
.method public getScale()Landroid/graphics/PointF;
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 95
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float v1, v3, v1

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float v2, v3, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getTransformedVertices()[F
    .locals 13

    .prologue
    .line 119
    iget-object v10, p0, Lcom/pedro/encoder/input/gl/Sprite;->base:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    mul-float v6, v10, v11

    .line 120
    .local v6, "x1":F
    iget-object v10, p0, Lcom/pedro/encoder/input/gl/Sprite;->base:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    mul-float v7, v10, v11

    .line 121
    .local v7, "x2":F
    iget-object v10, p0, Lcom/pedro/encoder/input/gl/Sprite;->base:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    mul-float v8, v10, v11

    .line 122
    .local v8, "y1":F
    iget-object v10, p0, Lcom/pedro/encoder/input/gl/Sprite;->base:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    mul-float v9, v10, v11

    .line 126
    .local v9, "y2":F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 127
    .local v2, "one":Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v6, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 128
    .local v5, "two":Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 129
    .local v4, "three":Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 133
    .local v1, "four":Landroid/graphics/PointF;
    iget v10, p0, Lcom/pedro/encoder/input/gl/Sprite;->angle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v3, v10

    .line 134
    .local v3, "s":F
    iget v10, p0, Lcom/pedro/encoder/input/gl/Sprite;->angle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v0, v10

    .line 137
    .local v0, "c":F
    mul-float v10, v6, v0

    mul-float v11, v8, v3

    sub-float/2addr v10, v11

    iput v10, v2, Landroid/graphics/PointF;->x:F

    .line 138
    mul-float v10, v6, v3

    mul-float v11, v8, v0

    add-float/2addr v10, v11

    iput v10, v2, Landroid/graphics/PointF;->y:F

    .line 139
    mul-float v10, v6, v0

    mul-float v11, v9, v3

    sub-float/2addr v10, v11

    iput v10, v5, Landroid/graphics/PointF;->x:F

    .line 140
    mul-float v10, v6, v3

    mul-float v11, v9, v0

    add-float/2addr v10, v11

    iput v10, v5, Landroid/graphics/PointF;->y:F

    .line 141
    mul-float v10, v7, v0

    mul-float v11, v8, v3

    sub-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/PointF;->x:F

    .line 142
    mul-float v10, v7, v3

    mul-float v11, v8, v0

    add-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/PointF;->y:F

    .line 143
    mul-float v10, v7, v0

    mul-float v11, v9, v3

    sub-float/2addr v10, v11

    iput v10, v1, Landroid/graphics/PointF;->x:F

    .line 144
    mul-float v10, v7, v3

    mul-float v11, v9, v0

    add-float/2addr v10, v11

    iput v10, v1, Landroid/graphics/PointF;->y:F

    .line 147
    iget v10, v2, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    iput v10, v2, Landroid/graphics/PointF;->x:F

    .line 148
    iget v10, v2, Landroid/graphics/PointF;->y:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v11

    iput v10, v2, Landroid/graphics/PointF;->y:F

    .line 149
    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    iput v10, v5, Landroid/graphics/PointF;->x:F

    .line 150
    iget v10, v5, Landroid/graphics/PointF;->y:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v11

    iput v10, v5, Landroid/graphics/PointF;->y:F

    .line 151
    iget v10, v4, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/PointF;->x:F

    .line 152
    iget v10, v4, Landroid/graphics/PointF;->y:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/PointF;->y:F

    .line 153
    iget v10, v1, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    iput v10, v1, Landroid/graphics/PointF;->x:F

    .line 154
    iget v10, v1, Landroid/graphics/PointF;->y:F

    iget-object v11, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v11

    iput v10, v1, Landroid/graphics/PointF;->y:F

    .line 157
    const/16 v10, 0x8

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget v12, v2, Landroid/graphics/PointF;->x:F

    aput v12, v10, v11

    const/4 v11, 0x1

    iget v12, v2, Landroid/graphics/PointF;->y:F

    aput v12, v10, v11

    const/4 v11, 0x2

    iget v12, v5, Landroid/graphics/PointF;->x:F

    aput v12, v10, v11

    const/4 v11, 0x3

    iget v12, v5, Landroid/graphics/PointF;->y:F

    aput v12, v10, v11

    const/4 v11, 0x4

    iget v12, v4, Landroid/graphics/PointF;->x:F

    aput v12, v10, v11

    const/4 v11, 0x5

    iget v12, v4, Landroid/graphics/PointF;->y:F

    aput v12, v10, v11

    const/4 v11, 0x6

    iget v12, v1, Landroid/graphics/PointF;->x:F

    aput v12, v10, v11

    const/4 v11, 0x7

    iget v12, v1, Landroid/graphics/PointF;->y:F

    aput v12, v10, v11

    return-object v10
.end method

.method public getTranslation()Landroid/graphics/PointF;
    .locals 5

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 100
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v3

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    div-float/2addr v1, v2

    neg-float v1, v1

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 108
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->base:Landroid/graphics/RectF;

    .line 110
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    .line 112
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    .line 114
    iput v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->angle:F

    .line 115
    return-void
.end method

.method public rotate(F)V
    .locals 0
    .param p1, "delta"    # F

    .prologue
    .line 104
    iput p1, p0, Lcom/pedro/encoder/input/gl/Sprite;->angle:F

    .line 105
    return-void
.end method

.method public scale(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 79
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    .line 80
    .local v0, "oldScale":Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/PointF;

    div-float v2, v3, p2

    div-float/2addr v3, p1

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    .line 81
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, v2, v3, v4}, Lcom/pedro/encoder/input/gl/Sprite;->keepOldPosition(FFF)F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 82
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v2, v3, v4}, Lcom/pedro/encoder/input/gl/Sprite;->keepOldPosition(FFF)F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 83
    return-void
.end method

.method public translate(FF)V
    .locals 6
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 22
    iget-object v2, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v3

    .line 23
    .local v0, "rangeX":F
    iget-object v2, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v3

    .line 24
    .local v1, "rangeY":F
    iget-object v2, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    neg-float v3, v0

    div-float v4, v5, p2

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 25
    iget-object v2, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    neg-float v3, v1

    div-float v4, v5, p1

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 26
    return-void
.end method

.method public translate(Lcom/pedro/encoder/utils/gl/TranslateTo;)V
    .locals 6
    .param p1, "translation"    # Lcom/pedro/encoder/utils/gl/TranslateTo;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 29
    sget-object v0, Lcom/pedro/encoder/input/gl/Sprite$1;->$SwitchMap$com$pedro$encoder$utils$gl$TranslateTo:[I

    invoke-virtual {p1}, Lcom/pedro/encoder/utils/gl/TranslateTo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 32
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 33
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 34
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 38
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 39
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 42
    :pswitch_2
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 43
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 44
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 47
    :pswitch_3
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 48
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 49
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 52
    :pswitch_4
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 53
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 54
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 57
    :pswitch_5
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 58
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 61
    :pswitch_6
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 62
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 65
    :pswitch_7
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 66
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/Sprite;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 69
    :pswitch_8
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 70
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/Sprite;->translation:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
