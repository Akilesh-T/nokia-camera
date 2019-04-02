.class public Lcom/android/camera/ui/AnimatedCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedCircleDrawable.java"


# static fields
.field private static final CIRCLE_ANIM_DURATION_MS:I = 0x12c

.field private static DRAWABLE_MAX_LEVEL:I


# instance fields
.field private mAlpha:I

.field private mCanvasHeight:I

.field private mCanvasWidth:I

.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mSmallRadiusTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x2710

    sput v0, Lcom/android/camera/ui/AnimatedCircleDrawable;->DRAWABLE_MAX_LEVEL:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "smallRadiusTarget"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mAlpha:I

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iput p1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mSmallRadiusTarget:I

    .line 45
    return-void
.end method

.method private static diagonalLength(II)I
    .locals 2
    .param p0, "w"    # I
    .param p1, "h"    # I

    .prologue
    .line 142
    mul-int v0, p0, p0

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private static map(IIIII)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "in_min"    # I
    .param p2, "in_max"    # I
    .param p3, "out_min"    # I
    .param p4, "out_max"    # I

    .prologue
    .line 138
    sub-int v0, p0, p1

    sub-int v1, p4, p3

    mul-int/2addr v0, v1

    sub-int v1, p2, p1

    div-int/2addr v0, v1

    add-int/2addr v0, p3

    return v0
.end method

.method private updatePaintColor()V
    .locals 4

    .prologue
    .line 53
    iget v1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 54
    .local v0, "paintColor":I
    iget-object v1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->invalidateSelf()V

    .line 56
    return-void
.end method


# virtual methods
.method public animateToFullSize()V
    .locals 4

    .prologue
    .line 103
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->getLevel()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/android/camera/ui/AnimatedCircleDrawable;->DRAWABLE_MAX_LEVEL:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 105
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 106
    sget-object v1, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    new-instance v1, Lcom/android/camera/ui/AnimatedCircleDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/AnimatedCircleDrawable$2;-><init>(Lcom/android/camera/ui/AnimatedCircleDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 114
    return-void
.end method

.method public animateToSmallRadius()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 86
    iget v2, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mSmallRadiusTarget:I

    iget v3, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mCanvasWidth:I

    iget v4, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mCanvasHeight:I

    .line 87
    invoke-static {v3, v4}, Lcom/android/camera/ui/AnimatedCircleDrawable;->diagonalLength(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/android/camera/ui/AnimatedCircleDrawable;->DRAWABLE_MAX_LEVEL:I

    .line 86
    invoke-static {v2, v5, v3, v5, v4}, Lcom/android/camera/ui/AnimatedCircleDrawable;->map(IIIII)I

    move-result v1

    .line 89
    .local v1, "smallLevel":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->getLevel()I

    move-result v3

    aput v3, v2, v5

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 91
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    sget-object v2, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    new-instance v2, Lcom/android/camera/ui/AnimatedCircleDrawable$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/AnimatedCircleDrawable$1;-><init>(Lcom/android/camera/ui/AnimatedCircleDrawable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 100
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mCanvasWidth:I

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mCanvasHeight:I

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->getLevel()I

    move-result v0

    sget v1, Lcom/android/camera/ui/AnimatedCircleDrawable;->DRAWABLE_MAX_LEVEL:I

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/AnimatedCircleDrawable;->diagonalLength(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 121
    invoke-static {v0, v5, v1, v5, v2}, Lcom/android/camera/ui/AnimatedCircleDrawable;->map(IIIII)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mRadius:I

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, -0x3

    return v0
.end method

.method public onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->getLevel()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->invalidateSelf()V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mAlpha:I

    .line 67
    invoke-direct {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->updatePaintColor()V

    .line 68
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable;->mColor:I

    .line 49
    invoke-direct {p0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->updatePaintColor()V

    .line 50
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 73
    return-void
.end method
