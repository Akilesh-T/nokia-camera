.class Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;
.super Lcom/android/camera/widget/AnimationEffects;
.source "ModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeepholeAnimationEffect"
.end annotation


# static fields
.field private static final PEEP_HOLE_ANIMATION_DURATION_MS:I = 0x1f4

.field private static final UNSET:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field private final mBackgroundDrawArea:Landroid/graphics/RectF;

.field private mBackgroundOverlay:Landroid/graphics/Bitmap;

.field private mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mMaskPaint:Landroid/graphics/Paint;

.field private mPeepHoleAnimator:Landroid/animation/ValueAnimator;

.field private mPeepHoleCenterX:I

.field private mPeepHoleCenterY:I

.field private mRadius:F

.field private mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/camera/ui/ModeListView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModeListView;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1628
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {p0}, Lcom/android/camera/widget/AnimationEffects;-><init>()V

    .line 1611
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mMaskPaint:Landroid/graphics/Paint;

    .line 1612
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackgroundDrawArea:Landroid/graphics/RectF;

    .line 1614
    iput v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    .line 1615
    iput v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    .line 1616
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mRadius:F

    .line 1623
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    .line 1624
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    .line 1629
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1630
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1632
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1633
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1635
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1636
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1638
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->setupAnimators()V

    .line 1639
    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;
    .param p1, "x1"    # F

    .prologue
    .line 1606
    iput p1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mRadius:F

    return p1
.end method

.method static synthetic access$4000(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private setupAnimators()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1f4

    const v9, 0x7f090115

    const/4 v8, 0x2

    .line 1642
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1643
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1644
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1645
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$1;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$1;-><init>(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1652
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$2;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$2;-><init>(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1668
    new-array v5, v8, [I

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1669
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1670
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1671
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$3;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$3;-><init>(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1679
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$4;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$4;-><init>(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1695
    iget v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    iget-object v6, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v6}, Lcom/android/camera/ui/ModeListView;->access$3100(Lcom/android/camera/ui/ModeListView;)I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1696
    .local v1, "horizontalDistanceToFarEdge":I
    iget v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    iget-object v6, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v6}, Lcom/android/camera/ui/ModeListView;->access$3200(Lcom/android/camera/ui/ModeListView;)I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1697
    .local v4, "verticalDistanceToFarEdge":I
    mul-int v5, v1, v1

    mul-int v6, v4, v4

    add-int/2addr v5, v6

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 1699
    .local v0, "endRadius":I
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-virtual {v5}, Lcom/android/camera/ui/ModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 1702
    .local v3, "startRadius":I
    new-array v5, v8, [F

    const/4 v6, 0x0

    int-to-float v7, v3

    aput v7, v5, v6

    const/4 v6, 0x1

    int-to-float v7, v0

    aput v7, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    .line 1703
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1704
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1705
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$5;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$5;-><init>(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1713
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$6;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$6;-><init>(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1728
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-virtual {v5}, Lcom/android/camera/ui/ModeListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1729
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1730
    .local v2, "size":I
    new-instance v5, Lcom/android/camera/ui/TouchCircleDrawable;

    iget-object v6, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-virtual {v6}, Lcom/android/camera/ui/ModeListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/camera/ui/TouchCircleDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    .line 1731
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {v5, v2, v2}, Lcom/android/camera/ui/TouchCircleDrawable;->setSize(II)V

    .line 1732
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    new-instance v6, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$7;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$7;-><init>(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/TouchCircleDrawable;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1738
    return-void

    .line 1642
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 1668
    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method public cancelAnimation()Z
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1888
    :cond_0
    const/4 v0, 0x0

    .line 1891
    :goto_0
    return v0

    .line 1890
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1891
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1791
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackgroundOverlay:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackgroundDrawArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1793
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1794
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackgroundOverlay:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1796
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TouchCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1800
    :cond_0
    return-void
.end method

.method public drawForeground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1756
    iget v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1757
    iget v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1759
    :cond_0
    return-void
.end method

.method public endAnimation()V
    .locals 0

    .prologue
    .line 1883
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1748
    const/4 v0, 0x1

    return v0
.end method

.method public setAnimationStartingPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1762
    iput p1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    .line 1763
    iput p2, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    .line 1764
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .param p2, "drawArea"    # Landroid/graphics/RectF;

    .prologue
    .line 1778
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    .line 1779
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackgroundDrawArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1780
    return-void
.end method

.method public setBackgroundOverlay(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "overlay"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackgroundOverlay:Landroid/graphics/Bitmap;

    .line 1787
    return-void
.end method

.method public setModeSpecificColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    const v1, 0xffffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1768
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/ModeListView;->access$3102(Lcom/android/camera/ui/ModeListView;I)I

    .line 1743
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0, p2}, Lcom/android/camera/ui/ModeListView;->access$3202(Lcom/android/camera/ui/ModeListView;I)I

    .line 1744
    return-void
.end method

.method public shouldDrawSuper()Z
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mBackgroundOverlay:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/16 v3, 0xff

    const/4 v2, -0x1

    .line 1859
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1879
    :goto_0
    return-void

    .line 1862
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    if-ne v1, v2, :cond_2

    .line 1863
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$3100(Lcom/android/camera/ui/ModeListView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    .line 1864
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$3200(Lcom/android/camera/ui/ModeListView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    .line 1867
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1868
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1873
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1874
    .local v0, "s":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1875
    if-eqz p1, :cond_3

    .line 1876
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1878
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public startFadeoutAnimation(Landroid/animation/Animator$AnimatorListener;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;III)V
    .locals 5
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p2, "selectedItem"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "modeId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1812
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1813
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1815
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    .line 1816
    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getIconDrawableClone()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1817
    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getIconDrawableSize()I

    move-result v3

    .line 1815
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/TouchCircleDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 1818
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TouchCircleDrawable;->setCenter(Landroid/graphics/Point;)V

    .line 1819
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getHighlightColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TouchCircleDrawable;->setColor(I)V

    .line 1820
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    new-instance v2, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$8;

    invoke-direct {v2, p0, p2, p5}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$8;-><init>(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TouchCircleDrawable;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1839
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1840
    .local v0, "s":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1841
    if-eqz p1, :cond_0

    .line 1842
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1844
    :cond_0
    new-instance v1, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$9;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$9;-><init>(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1853
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/TouchCircleDrawable;->animate(I)V

    .line 1854
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1855
    return-void
.end method
