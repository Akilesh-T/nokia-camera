.class public Lcom/android/camera/pip/opengl/gesture/TranslationRect;
.super Ljava/lang/Object;
.source "TranslationRect.java"


# instance fields
.field private final MARGIN_BOTTOM_RATIO:F

.field private final MARGIN_HORIZONTAL_RATIO:F

.field private final MARGIN_TOP_RATIO:F

.field private final SIZE_RATIO:F

.field private mCornerRectF:[Landroid/graphics/RectF;

.field private mRectF:Landroid/graphics/RectF;

.field private mRendererHeight:I

.field private mRendererWidth:I

.field private mTransMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRendererWidth:I

    .line 19
    iput v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRendererHeight:I

    .line 24
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 28
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f090208

    invoke-static {v1, v2}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->getResourcesValue(Landroid/content/res/Resources;I)F

    move-result v2

    iput v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->MARGIN_TOP_RATIO:F

    .line 29
    const v2, 0x7f090206

    invoke-static {v1, v2}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->getResourcesValue(Landroid/content/res/Resources;I)F

    move-result v2

    iput v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->MARGIN_BOTTOM_RATIO:F

    .line 30
    const v2, 0x7f090207

    invoke-static {v1, v2}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->getResourcesValue(Landroid/content/res/Resources;I)F

    move-result v2

    iput v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->MARGIN_HORIZONTAL_RATIO:F

    .line 32
    const v2, 0x7f090205

    invoke-static {v1, v2}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->getResourcesValue(Landroid/content/res/Resources;I)F

    move-result v2

    iput v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->SIZE_RATIO:F

    .line 33
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    aput-object v3, v2, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mTransMatrix:Landroid/graphics/Matrix;

    .line 37
    return-void
.end method

.method private changeToXCoord(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 101
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRendererWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method private changeToYCoord(F)F
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 105
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRendererHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private static getResourcesValue(Landroid/content/res/Resources;I)F
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 109
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 110
    .local v0, "typedValue":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 111
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private translateCheck(FF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRendererWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRendererHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public contains(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 57
    .local v0, "isContained":Z
    sget-boolean v1, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_GESTURE:Z

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lcom/android/camera/util/PIPSTBUtil;->TAG_GESTURE:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isContained="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    :cond_0
    return v0
.end method

.method public getRectPosition()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getVertexCoord()[F
    .locals 6

    .prologue
    .line 93
    iget-object v4, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, v4}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->changeToXCoord(F)F

    move-result v1

    .line 94
    .local v1, "left":F
    iget-object v4, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v4}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->changeToYCoord(F)F

    move-result v3

    .line 95
    .local v3, "top":F
    iget-object v4, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, v4}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->changeToXCoord(F)F

    move-result v2

    .line 96
    .local v2, "right":F
    iget-object v4, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v4}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->changeToYCoord(F)F

    move-result v0

    .line 97
    .local v0, "bottom":F
    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v5, 0x2

    aput v2, v4, v5

    const/4 v5, 0x3

    aput v3, v4, v5

    const/4 v5, 0x4

    aput v1, v4, v5

    const/4 v5, 0x5

    aput v0, v4, v5

    const/4 v5, 0x6

    aput v2, v4, v5

    const/4 v5, 0x7

    aput v0, v4, v5

    return-object v4
.end method

.method protected setRendererSize(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRendererWidth:I

    .line 41
    iput p2, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRendererHeight:I

    .line 42
    iget v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->MARGIN_HORIZONTAL_RATIO:F

    int-to-float v6, p1

    mul-float v2, v5, v6

    .line 43
    .local v2, "left":F
    iget v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->MARGIN_TOP_RATIO:F

    int-to-float v6, p2

    mul-float v4, v5, v6

    .line 44
    .local v4, "top":F
    iget v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->SIZE_RATIO:F

    int-to-float v6, p1

    mul-float/2addr v5, v6

    add-float v3, v2, v5

    .line 45
    .local v3, "right":F
    iget v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->SIZE_RATIO:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .line 46
    .local v0, "bottom":F
    iget v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->MARGIN_BOTTOM_RATIO:F

    int-to-float v6, p2

    mul-float v1, v5, v6

    .line 47
    .local v1, "bottomMargin":F
    iget-object v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    iget-object v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    iget-object v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    int-to-float v6, p1

    sub-float/2addr v6, v3

    int-to-float v7, p1

    sub-float/2addr v7, v2

    invoke-virtual {v5, v6, v4, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 51
    iget-object v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    int-to-float v6, p2

    iget v7, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->SIZE_RATIO:F

    int-to-float v8, p2

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sub-float/2addr v6, v7

    int-to-float v7, p2

    sub-float/2addr v7, v1

    invoke-virtual {v5, v2, v6, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 52
    iget-object v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    int-to-float v6, p1

    sub-float/2addr v6, v3

    int-to-float v7, p2

    iget v8, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->SIZE_RATIO:F

    int-to-float v9, p2

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    sub-float/2addr v7, v8

    int-to-float v8, p1

    sub-float/2addr v8, v2

    int-to-float v9, p2

    sub-float/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 53
    return-void
.end method

.method public translate(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->translateCheck(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mTransMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 66
    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mTransMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mTransMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public updateToNearest()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "index":I
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 80
    .local v3, "targetDistance":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 81
    iget-object v4, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    aget-object v6, v6, v1

    .line 82
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    iget-object v7, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 81
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 83
    .local v0, "distance":F
    cmpg-float v4, v0, v3

    if-gez v4, :cond_0

    .line 84
    move v3, v0

    .line 85
    move v2, v1

    .line 80
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "distance":F
    :cond_1
    iget-object v4, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->mCornerRectF:[Landroid/graphics/RectF;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    return-void
.end method
