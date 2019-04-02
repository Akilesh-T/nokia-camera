.class public Lcom/android/camera/widget/SettingsCling;
.super Landroid/widget/FrameLayout;
.source "SettingsCling.java"


# instance fields
.field private final mClingPaint:Landroid/graphics/Paint;

.field private final mClingTriangleHeight:I

.field private final mClingTriangleWidth:I

.field private final mTrianglePath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/SettingsCling;->mClingPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SettingsCling;->setWillNotDraw(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsCling;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/SettingsCling;->mClingTriangleHeight:I

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsCling;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09024b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/SettingsCling;->mClingTriangleWidth:I

    .line 47
    iget-object v0, p0, Lcom/android/camera/widget/SettingsCling;->mClingPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsCling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/widget/SettingsCling;->mClingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/camera/widget/SettingsCling;->mClingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    return-void
.end method

.method public updatePosition(Landroid/view/View;)V
    .locals 7
    .param p1, "referenceView"    # Landroid/view/View;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float v0, v4, v5

    .line 64
    .local v0, "referenceRight":F
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsCling;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/SettingsCling;->setTranslationX(F)V

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    .line 67
    .local v1, "referenceTop":F
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsCling;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/SettingsCling;->setTranslationY(F)V

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsCling;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 71
    .local v2, "triangleStartX":F
    const/4 v3, 0x0

    .line 72
    .local v3, "triangleStartY":F
    iget-object v4, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 73
    iget-object v4, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 74
    iget-object v4, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/camera/widget/SettingsCling;->mClingTriangleWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/android/camera/widget/SettingsCling;->mClingTriangleHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget-object v4, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/camera/widget/SettingsCling;->mClingTriangleWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, p0, Lcom/android/camera/widget/SettingsCling;->mClingTriangleHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    iget-object v4, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsCling;->invalidate()V

    goto :goto_0

    .line 81
    .end local v2    # "triangleStartX":F
    .end local v3    # "triangleStartY":F
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsCling;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/SettingsCling;->setTranslationY(F)V

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsCling;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 83
    .restart local v2    # "triangleStartX":F
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsCling;->getMeasuredHeight()I

    move-result v4

    int-to-float v3, v4

    .line 84
    .restart local v3    # "triangleStartY":F
    iget-object v4, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 85
    iget-object v4, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 86
    iget-object v4, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/camera/widget/SettingsCling;->mClingTriangleWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/android/camera/widget/SettingsCling;->mClingTriangleHeight:I

    int-to-float v6, v6

    sub-float v6, v3, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    iget-object v4, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/camera/widget/SettingsCling;->mClingTriangleWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, p0, Lcom/android/camera/widget/SettingsCling;->mClingTriangleHeight:I

    int-to-float v6, v6

    sub-float v6, v3, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 90
    iget-object v4, p0, Lcom/android/camera/widget/SettingsCling;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1
.end method
