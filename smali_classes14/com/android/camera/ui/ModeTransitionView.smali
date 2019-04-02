.class public Lcom/android/camera/ui/ModeTransitionView;
.super Landroid/view/View;
.source "ModeTransitionView.java"


# static fields
.field private static final ALPHA_FULLY_OPAQUE:I = 0xff

.field private static final ALPHA_FULLY_TRANSPARENT:I = 0x0

.field private static final ALPHA_HALF_TRANSPARENT:I = 0x7f

.field private static final FADE_OUT:I = 0x6

.field private static final FADE_OUT_DURATION_MS:I = 0xfa

.field private static final ICON_FADE_OUT_DURATION_MS:I = 0x12c

.field private static final IDLE:I = 0x0

.field private static final PEEP_HOLE_ANIMATION:I = 0x5

.field private static final PEEP_HOLE_ANIMATION_DURATION_MS:I = 0x12c

.field private static final PULL_DOWN_SHADE:I = 0x2

.field private static final PULL_LEFT_SHADE:I = 0x3

.field private static final PULL_RIGHT_SHADE:I = 0x4

.field private static final PULL_UP_SHADE:I = 0x1

.field private static final SCROLL_DISTANCE_MULTIPLY_FACTOR:F = 2.0f

.field private static final SHOW_STATIC_IMAGE:I = 0x7

.field private static final SHOW_TRANSPARENT_COVER:I = 0x8

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAnimationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

.field private mAnimationType:I

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBackgroundColor:I

.field private final mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mIconRect:Landroid/graphics/Rect;

.field private mIconSize:I

.field private final mMaskPaint:Landroid/graphics/Paint;

.field private mPeepHoleAnimator:Landroid/animation/AnimatorSet;

.field private mPeepHoleCenterX:I

.field private mPeepHoleCenterY:I

.field private mRadius:F

.field private mScrollDistance:F

.field private mScrollTrendX:F

.field private mScrollTrendY:F

.field private final mShadePaint:Landroid/graphics/Paint;

.field private final mShadePath:Landroid/graphics/Path;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ModeTransView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/ModeTransitionView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mMaskPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    iput v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    .line 81
    iput v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    .line 82
    iput v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterX:I

    .line 83
    iput v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterY:I

    .line 84
    iput v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mRadius:F

    .line 87
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    .line 88
    iput v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollDistance:F

    .line 89
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mShadePath:Landroid/graphics/Path;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mShadePaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mBackgroundColor:I

    .line 100
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/camera/ui/ModeTransitionView$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/ModeTransitionView$1;-><init>(Lcom/android/camera/ui/ModeTransitionView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconSize:I

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ModeTransitionView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ModeTransitionView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendX:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/ModeTransitionView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendX:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ModeTransitionView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendY:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/ModeTransitionView;)Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/ui/ModeTransitionView;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;
    .param p1, "x1"    # Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/camera/ui/ModeTransitionView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendY:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/ui/ModeTransitionView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/camera/ui/ModeTransitionView;->mRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ModeTransitionView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ModeTransitionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ModeTransitionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterX:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ModeTransitionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterY:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/ui/ModeTransitionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ModeTransitionView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/ui/ModeTransitionView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeTransitionView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    return p1
.end method

.method private prepareShadeAnimation(IIILcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
    .locals 1
    .param p1, "animationType"    # I
    .param p2, "shadeColorId"    # I
    .param p3, "iconResId"    # I
    .param p4, "listener"    # Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .prologue
    .line 538
    iput-object p4, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .line 539
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 542
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    .line 543
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/ModeTransitionView;->resetShade(II)V

    .line 544
    return-void
.end method

.method private resetShade(II)V
    .locals 3
    .param p1, "shadeColorId"    # I
    .param p2, "modeIconResourceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 555
    .local v0, "shadeColor":I
    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mBackgroundColor:I

    .line 556
    iget-object v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mShadePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeTransitionView;->setScrollDistance(F)V

    .line 560
    invoke-direct {p0, p2}, Lcom/android/camera/ui/ModeTransitionView;->updateIconDrawableByResourceId(I)V

    .line 561
    iget-object v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 562
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 563
    return-void
.end method

.method private setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 594
    if-nez p1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 599
    :goto_0
    return-void

    .line 597
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private snap()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 383
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendY:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    if-ne v0, v1, :cond_1

    .line 385
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/ModeTransitionView;->snapShadeTo(II)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendY:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    if-ne v0, v5, :cond_2

    .line 388
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/ModeTransitionView;->snapShadeTo(II)V

    goto :goto_0

    .line 389
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    if-ne v0, v1, :cond_3

    .line 391
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/ui/ModeTransitionView;->snapShadeTo(IIZ)V

    goto :goto_0

    .line 392
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    if-ne v0, v5, :cond_4

    .line 394
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/ui/ModeTransitionView;->snapShadeTo(IIZ)V

    goto :goto_0

    .line 395
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendX:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 397
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/ModeTransitionView;->snapShadeTo(II)V

    goto :goto_0

    .line 398
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendX:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 400
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    neg-int v0, v0

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/ModeTransitionView;->snapShadeTo(II)V

    goto :goto_0

    .line 401
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendX:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_7

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 403
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/ui/ModeTransitionView;->snapShadeTo(IIZ)V

    goto :goto_0

    .line 404
    :cond_7
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollTrendX:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 406
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/ui/ModeTransitionView;->snapShadeTo(IIZ)V

    goto :goto_0
.end method

.method private snapShadeTo(II)V
    .locals 1
    .param p1, "scrollDistance"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/ModeTransitionView;->snapShadeTo(IIZ)V

    .line 412
    return-void
.end method

.method private snapShadeTo(IIZ)V
    .locals 2
    .param p1, "scrollDistance"    # I
    .param p2, "alpha"    # I
    .param p3, "snapToFullScreen"    # Z

    .prologue
    .line 424
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 461
    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeTransitionView;->setScrollDistance(F)V

    .line 462
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 463
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    .line 464
    if-nez p3, :cond_1

    .line 465
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    invoke-interface {v0, p3}, Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;->onAnimationFinished(Z)V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .line 472
    :cond_2
    return-void
.end method

.method private startPeepHoleAnimation(FF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v8, 0x2

    .line 281
    iget-object v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 361
    :goto_0
    return-void

    .line 284
    :cond_0
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    .line 285
    float-to-int v5, p1

    iput v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterX:I

    .line 286
    float-to-int v5, p2

    iput v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterY:I

    .line 288
    iget v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterX:I

    iget v6, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    iget v7, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterX:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 289
    .local v1, "horizontalDistanceToFarEdge":I
    iget v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterY:I

    iget v6, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    iget v7, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterY:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 290
    .local v4, "verticalDistanceToFarEdge":I
    mul-int v5, v1, v1

    mul-int v6, v4, v4

    add-int/2addr v5, v6

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 296
    .local v0, "endRadius":I
    new-array v5, v8, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 297
    .local v3, "iconScaleAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 299
    new-array v5, v8, [I

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 301
    .local v2, "iconAlphaAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 303
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    .line 304
    iget-object v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    new-array v6, v8, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 305
    iget-object v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    new-instance v5, Lcom/android/camera/ui/ModeTransitionView$2;

    invoke-direct {v5, p0, v0, v2, v3}, Lcom/android/camera/ui/ModeTransitionView$2;-><init>(Lcom/android/camera/ui/ModeTransitionView;ILandroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 326
    iget-object v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/camera/ui/ModeTransitionView$3;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ModeTransitionView$3;-><init>(Lcom/android/camera/ui/ModeTransitionView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 359
    iget-object v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 296
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 299
    :array_1
    .array-data 4
        0x7f
        0x0
    .end array-data
.end method

.method private updateIconDrawableByResourceId(I)V
    .locals 3
    .param p1, "modeIconResourceId"    # I

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 575
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 577
    sget-object v1, Lcom/android/camera/ui/ModeTransitionView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Invalid resource id for icon drawable. Setting icon drawable to null."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 578
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ModeTransitionView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ModeTransitionView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateShade()V
    .locals 12

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v11, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 136
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mShadePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 139
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    if-ne v0, v3, :cond_4

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mShadePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getScrollDistance()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getScrollDistance()F

    move-result v9

    .line 150
    .local v9, "shadeHeight":F
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 151
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, v9, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    if-nez v0, :cond_5

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 159
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->invalidate()V

    .line 185
    .end local v9    # "shadeHeight":F
    :cond_3
    :goto_2
    return-void

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mShadePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getScrollDistance()F

    move-result v2

    neg-float v4, v2

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getScrollDistance()F

    move-result v0

    mul-float v9, v0, v6

    .restart local v9    # "shadeHeight":F
    goto :goto_0

    .line 154
    :cond_5
    float-to-int v0, v9

    iget v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    div-int v8, v0, v1

    .line 156
    .local v8, "alpha":I
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 160
    .end local v8    # "alpha":I
    .end local v9    # "shadeHeight":F
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    if-eq v0, v4, :cond_7

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mShadePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 163
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    if-ne v0, v4, :cond_a

    .line 165
    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mShadePath:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getScrollDistance()F

    move-result v3

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    int-to-float v6, v0

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getScrollDistance()F

    move-result v10

    .line 174
    .local v10, "shadeWidth":F
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 175
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, v10, v0

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    if-nez v0, :cond_b

    .line 176
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 183
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->invalidate()V

    goto :goto_2

    .line 170
    .end local v10    # "shadeWidth":F
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mShadePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getScrollDistance()F

    move-result v2

    neg-float v3, v2

    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    int-to-float v4, v2

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getScrollDistance()F

    move-result v0

    mul-float v10, v0, v6

    .restart local v10    # "shadeWidth":F
    goto :goto_3

    .line 178
    :cond_b
    float-to-int v0, v10

    iget v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    div-int v8, v0, v1

    .line 180
    .restart local v8    # "alpha":I
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 130
    return-void
.end method

.method public getScrollDistance()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollDistance:F

    return v0
.end method

.method public hideImageCover()V
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 711
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 712
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    .line 713
    return-void
.end method

.method public hideModeCover(Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
    .locals 2
    .param p1, "animationFinishedListener"    # Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .prologue
    const/4 v1, 0x0

    .line 631
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    if-eqz v0, :cond_1

    .line 633
    if-eqz p1, :cond_0

    .line 635
    invoke-interface {p1, v1}, Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;->onAnimationFinished(Z)V

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    .line 641
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 642
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeTransitionView;->setAlpha(F)V

    .line 643
    if-eqz p1, :cond_2

    .line 644
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;->onAnimationFinished(Z)V

    .line 646
    :cond_2
    iput v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    if-ne v2, v0, :cond_3

    .line 219
    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollDistance:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollDistance:F

    iget v3, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 220
    :cond_3
    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 221
    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollDistance:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollDistance:F

    iget v3, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 222
    :cond_5
    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 223
    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollDistance:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollDistance:F

    iget v3, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 224
    :cond_7
    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 225
    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollDistance:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollDistance:F

    iget v3, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v1

    .line 227
    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 232
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 233
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 236
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/ModeTransitionView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 253
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    :goto_1
    return-void

    .line 238
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mShadePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mShadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 241
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 242
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 243
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 247
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 249
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 250
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 259
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    .line 260
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    .line 262
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 264
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 265
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 366
    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 367
    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mExternalGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mExternalGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    move v0, v1

    .line 376
    :cond_1
    :goto_0
    return v0

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 372
    .local v0, "touchHandled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/android/camera/ui/ModeTransitionView;->snap()V

    goto :goto_0
.end method

.method public prepareToPullDownShade(IILcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
    .locals 1
    .param p1, "shadeColorId"    # I
    .param p2, "modeIconResourceId"    # I
    .param p3, "listener"    # Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .prologue
    .line 498
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/camera/ui/ModeTransitionView;->prepareShadeAnimation(IIILcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V

    .line 499
    return-void
.end method

.method public prepareToPullLeftShade(IILcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
    .locals 1
    .param p1, "shadeColorId"    # I
    .param p2, "modeIconResourceId"    # I
    .param p3, "listener"    # Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .prologue
    .line 511
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/camera/ui/ModeTransitionView;->prepareShadeAnimation(IIILcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V

    .line 512
    return-void
.end method

.method public prepareToPullRightShade(IILcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
    .locals 1
    .param p1, "shadeColorId"    # I
    .param p2, "modeIconResourceId"    # I
    .param p3, "listener"    # Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .prologue
    .line 524
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/camera/ui/ModeTransitionView;->prepareShadeAnimation(IIILcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V

    .line 525
    return-void
.end method

.method public prepareToPullUpShade(IILcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
    .locals 1
    .param p1, "shadeColorId"    # I
    .param p2, "iconId"    # I
    .param p3, "listener"    # Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .prologue
    .line 485
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/camera/ui/ModeTransitionView;->prepareShadeAnimation(IIILcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V

    .line 486
    return-void
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 685
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 686
    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 687
    .local v0, "alphaScaled":I
    iget v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mBackgroundColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x18

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mBackgroundColor:I

    .line 688
    iget-object v1, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 689
    return-void
.end method

.method public setScrollDistance(F)V
    .locals 3
    .param p1, "scrollDistance"    # F

    .prologue
    const/4 v2, 0x0

    .line 195
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 196
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 197
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 208
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/ModeTransitionView;->mScrollDistance:F

    .line 209
    invoke-direct {p0}, Lcom/android/camera/ui/ModeTransitionView;->updateShade()V

    .line 210
    return-void

    .line 198
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 199
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 200
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 201
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 202
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 203
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 204
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 205
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 206
    iget v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0
.end method

.method public setupExternalGestureDetector(Landroid/view/GestureDetector;)V
    .locals 9
    .param p1, "externalGestureDetector"    # Landroid/view/GestureDetector;

    .prologue
    const/4 v5, 0x0

    .line 716
    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mExternalGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 718
    .local v0, "event_time":J
    iget-object v8, p0, Lcom/android/camera/ui/ModeTransitionView;->mExternalGestureDetector:Landroid/view/GestureDetector;

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 720
    .end local v0    # "event_time":J
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/ModeTransitionView;->mExternalGestureDetector:Landroid/view/GestureDetector;

    .line 721
    return-void
.end method

.method public setupModeCover(II)V
    .locals 3
    .param p1, "colorId"    # I
    .param p2, "modeIconResourceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 610
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mPeepHoleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 613
    :cond_0
    iput v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    .line 614
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mBackgroundColor:I

    .line 616
    invoke-direct {p0, p2}, Lcom/android/camera/ui/ModeTransitionView;->updateIconDrawableByResourceId(I)V

    .line 617
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 618
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 619
    return-void
.end method

.method public setupModeCover(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "screenShot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/camera/ui/ModeTransitionView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 696
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 697
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    .line 698
    return-void
.end method

.method public setupTransparentCover()V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 702
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->mAnimationType:I

    .line 703
    return-void
.end method

.method public startPeepHoleAnimation()V
    .locals 3

    .prologue
    .line 272
    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 273
    .local v0, "x":F
    iget v2, p0, Lcom/android/camera/ui/ModeTransitionView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 274
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->startPeepHoleAnimation(FF)V

    .line 275
    return-void
.end method
