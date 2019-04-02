.class Lcom/android/camera/widget/FilmstripView$ViewItem;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/FilmstripView$ViewItem$RenderSize;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mData:Lcom/android/camera/data/FilmstripItem;

.field private final mFilmstrip:Lcom/android/camera/widget/FilmstripView;

.field private mIndex:I

.field private mLeftPosition:I

.field private mLockAtFullOpacity:Z

.field private mRenderSize:Lcom/android/camera/widget/FilmstripView$ViewItem$RenderSize;

.field private mTranslationXAnimator:Landroid/animation/ValueAnimator;

.field private mTranslationYAnimator:Landroid/animation/ValueAnimator;

.field private final mView:Landroid/view/View;

.field private final mViewArea:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(ILandroid/view/View;Lcom/android/camera/data/FilmstripItem;Lcom/android/camera/widget/FilmstripView;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "data"    # Lcom/android/camera/data/FilmstripItem;
    .param p4, "filmstrip"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p4, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    .line 182
    iput-object p2, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    .line 183
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    .line 185
    iput p1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mIndex:I

    .line 186
    iput-object p3, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mData:Lcom/android/camera/data/FilmstripItem;

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mLeftPosition:I

    .line 188
    sget-object v0, Lcom/android/camera/widget/FilmstripView$ViewItem$RenderSize;->TINY:Lcom/android/camera/widget/FilmstripView$ViewItem$RenderSize;

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mRenderSize:Lcom/android/camera/widget/FilmstripView$ViewItem$RenderSize;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mLockAtFullOpacity:Z

    .line 191
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 193
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/widget/FilmstripView$ViewItem;)Lcom/android/camera/widget/FilmstripView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$ViewItem;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/widget/FilmstripView$ViewItem;)Lcom/android/camera/data/FilmstripItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$ViewItem;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mData:Lcom/android/camera/data/FilmstripItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/widget/FilmstripView$ViewItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$ViewItem;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method private layoutAt(II)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    .line 476
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    .line 475
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 477
    return-void
.end method

.method private runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "startValue"    # F
    .param p3, "targetValue"    # F
    .param p4, "duration_ms"    # J
    .param p6, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 385
    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p1, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 389
    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 390
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 391
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public addViewToHierarchy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/FilmstripView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/FilmstripView;->addView(Landroid/view/View;)V

    .line 430
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 431
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setAlpha(F)V

    .line 432
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 433
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationY(F)V

    .line 434
    return-void
.end method

.method public animateAlpha(FJLandroid/animation/TimeInterpolator;)V
    .locals 8
    .param p1, "targetAlpha"    # F
    .param p2, "duration_ms"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 372
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/widget/FilmstripView$ViewItem$3;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/FilmstripView$ViewItem$3;-><init>(Lcom/android/camera/widget/FilmstripView$ViewItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAlpha()F

    move-result v2

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V

    .line 380
    return-void
.end method

.method public animateTranslationX(FJLandroid/animation/TimeInterpolator;)V
    .locals 8
    .param p1, "targetX"    # F
    .param p2, "duration_ms"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    .line 324
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/widget/FilmstripView$ViewItem$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/FilmstripView$ViewItem$1;-><init>(Lcom/android/camera/widget/FilmstripView$ViewItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationX()F

    move-result v2

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V

    .line 337
    return-void
.end method

.method public animateTranslationY(FJLandroid/animation/TimeInterpolator;)V
    .locals 8
    .param p1, "targetY"    # F
    .param p2, "duration_ms"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    .line 350
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/widget/FilmstripView$ViewItem$2;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/FilmstripView$ViewItem$2;-><init>(Lcom/android/camera/widget/FilmstripView$ViewItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationY()F

    move-result v2

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V

    .line 359
    return-void
.end method

.method public areaContains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public bringViewToFront()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/FilmstripView;->bringChildToFront(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method public getAdapterIndex()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mIndex:I

    return v0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getCenterX()I
    .locals 2

    .prologue
    .line 407
    iget v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mLeftPosition:I

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getData()Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mData:Lcom/android/camera/data/FilmstripItem;

    return-object v0
.end method

.method public getDrawAreaLeft()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 404
    return-void
.end method

.method public getLeftPosition()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mLeftPosition:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getTranslationX()F
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTranslationY()F
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getViewRect()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 483
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 484
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 485
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 486
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 487
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 488
    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public layoutWithTranslationX(Landroid/graphics/Rect;IF)V
    .locals 11
    .param p1, "drawArea"    # Landroid/graphics/Rect;
    .param p2, "refCenter"    # I
    .param p3, "scale"    # F

    .prologue
    .line 505
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    .line 506
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    .line 507
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 509
    .local v4, "translationX":F
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mLeftPosition:I

    sub-int/2addr v6, p2

    int-to-float v6, v6

    add-float/2addr v6, v4

    mul-float/2addr v6, p3

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 510
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v6, p3

    sub-float/2addr v5, v6

    float-to-int v3, v5

    .line 511
    .local v3, "top":I
    invoke-direct {p0, v1, v3}, Lcom/android/camera/widget/FilmstripView$ViewItem;->layoutAt(II)V

    .line 512
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v5, p3}, Landroid/view/View;->setScaleX(F)V

    .line 513
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v5, p3}, Landroid/view/View;->setScaleY(F)V

    .line 516
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 517
    .local v0, "l":I
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    .line 518
    .local v2, "t":I
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    int-to-float v6, v0

    int-to-float v7, v2

    int-to-float v8, v0

    iget-object v9, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    .line 519
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, p3

    add-float/2addr v8, v9

    int-to-float v9, v2

    iget-object v10, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    .line 520
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, p3

    add-float/2addr v9, v10

    .line 518
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 521
    return-void

    .line 507
    .end local v0    # "l":I
    .end local v1    # "left":I
    .end local v2    # "t":I
    .end local v3    # "top":I
    .end local v4    # "translationX":F
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public lockAtFullOpacity()V
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mLockAtFullOpacity:Z

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mLockAtFullOpacity:Z

    .line 238
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 240
    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 1
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 472
    return-void
.end method

.method postScale(FFFII)V
    .locals 7
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "postScale"    # F
    .param p4, "viewportWidth"    # I
    .param p5, "viewportHeight"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 549
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 550
    .local v1, "transX":F
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 553
    .local v2, "transY":F
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getX()F

    move-result v0

    sub-float v0, p1, v0

    sub-float v5, p3, v6

    mul-float/2addr v0, v5

    sub-float/2addr v1, v0

    .line 554
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getY()F

    move-result v0

    sub-float v0, p2, v0

    sub-float v5, p3, v6

    mul-float/2addr v0, v5

    sub-float/2addr v2, v0

    .line 555
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float v3, v0, p3

    .line 556
    .local v3, "scaleX":F
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float v4, v0, p3

    .local v4, "scaleY":F
    move-object v0, p0

    move v5, p4

    move v6, p5

    .line 557
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->updateTransform(FFFFII)V

    .line 559
    return-void
.end method

.method public removeViewFromHierarchy()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/FilmstripView;->removeView(Landroid/view/View;)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mData:Lcom/android/camera/data/FilmstripItem;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/camera/data/FilmstripItem;->recycle(Landroid/view/View;)V

    .line 442
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/widget/FilmstripView;->access$300(Lcom/android/camera/widget/FilmstripView;Landroid/view/View;I)V

    .line 443
    return-void
.end method

.method public renderFullRes()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public renderThumbnail()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public renderTiny()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method resetTransform()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 579
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 580
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 581
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 582
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mLockAtFullOpacity:Z

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 297
    :cond_0
    return-void
.end method

.method public setData(Lcom/android/camera/data/FilmstripItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mData:Lcom/android/camera/data/FilmstripItem;

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->renderTiny()V

    .line 203
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mIndex:I

    .line 260
    return-void
.end method

.method public setLeftPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mLeftPosition:I

    .line 265
    return-void
.end method

.method public setTranslationX(F)V
    .locals 2
    .param p1, "transX"    # F

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 290
    return-void
.end method

.method public setTranslationY(F)V
    .locals 2
    .param p1, "transY"    # F

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 285
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2c

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdapterIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mLeftPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t viewArea = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t centerX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t view MeasuredSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    .line 590
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t view Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    .line 591
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t view scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    .line 592
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    return-object v0
.end method

.method public translateXScaledBy(F)V
    .locals 2
    .param p1, "transX"    # F

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mFilmstrip:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 397
    return-void
.end method

.method public unlockOpacity()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mLockAtFullOpacity:Z

    .line 244
    return-void
.end method

.method updateTransform(FFFFII)V
    .locals 6
    .param p1, "transX"    # F
    .param p2, "transY"    # F
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F
    .param p5, "viewportWidth"    # I
    .param p6, "viewportHeight"    # I

    .prologue
    .line 563
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float v0, p1, v3

    .line 564
    .local v0, "left":F
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, p2, v3

    .line 565
    .local v2, "top":F
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    .line 566
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    .line 567
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p4

    add-float/2addr v5, v2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 565
    invoke-static {v3, p5, p6}, Lcom/android/camera/ui/ZoomView;->adjustToFitInBounds(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v1

    .line 569
    .local v1, "r":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->setScaleX(F)V

    .line 570
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->setScaleY(F)V

    .line 571
    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float p1, v3, v4

    .line 572
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float p2, v3, v4

    .line 573
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 574
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 575
    return-void
.end method
