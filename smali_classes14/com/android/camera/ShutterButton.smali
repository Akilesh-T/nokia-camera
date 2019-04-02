.class public Lcom/android/camera/ShutterButton;
.super Landroid/widget/ImageView;
.source "ShutterButton.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ShutterButton$GestureListener;,
        Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# static fields
.field public static final ALPHA_WHEN_DISABLED:F = 0.2f

.field public static final ALPHA_WHEN_ENABLED:F = 1.0f

.field private static final ANIMATION_TIME:I = 0x64

.field public static final CLICK_EVENT_THRESHOLD:F = 500.0f

.field private static final SWIPE_DOWN:I = 0x1

.field private static final SWIPE_LEFT:I = 0x2

.field private static final SWIPE_RIGHT:I = 0x3

.field public static final SWIPE_THRESHOLD:F = 40.0f

.field private static final SWIPE_UP:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field actionDownTime:J

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCenterX:F

.field private mCenterY:F

.field private mCurRatioValue:I

.field private mCurScaleValue:I

.field private mCurStopRatioValue:F

.field private mCurStopScaleValue:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsNeedStopVideoBtnAnim:Z

.field private mIsNeedVideoBtnAnim:Z

.field private mIsShuttonBtnAnimating:Z

.field private final mLargestScrollRangeBottom:I

.field private final mLargestScrollRangeTop:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ShutterButton$OnShutterButtonListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockMove:Z

.field private mMovable:Z

.field private mOldPressed:Z

.field private mOrientation:I

.field private mRedPaint:Landroid/graphics/Paint;

.field private mRoundRatio:F

.field private mShutterBtnPadding:F

.field private mShutterBtnRect:Landroid/graphics/RectF;

.field private mShutterBtnWidth:F

.field private mStartX:F

.field private mStartY:F

.field private mStopBtnAnimSet:Landroid/animation/AnimatorSet;

.field private mStopVideoBtnScaleAnim:Landroid/animation/ValueAnimator;

.field private mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private mTouchEnabled:Z

.field private mValueAnimation:Landroid/animation/ValueAnimator;

.field private mWhitePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ShutterButton"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ShutterButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v2, 0x7f09003a

    const/4 v1, 0x0

    .line 430
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mTouchEnabled:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/camera/ShutterButton;->mMovable:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ShutterButton;->mCurScaleValue:I

    .line 104
    iput-boolean v1, p0, Lcom/android/camera/ShutterButton;->mIsShuttonBtnAnimating:Z

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mListeners:Ljava/util/List;

    .line 470
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ShutterButton;->actionDownTime:J

    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ShutterButton;->mLargestScrollRangeTop:I

    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ShutterButton;->mLargestScrollRangeBottom:I

    .line 433
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ShutterButton;->mShutterBtnWidth:F

    .line 434
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ShutterButton;->mShutterBtnPadding:F

    .line 435
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/ShutterButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ShutterButton;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ShutterButton;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/ShutterButton;->setScrollPosition(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/ShutterButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/ShutterButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/ShutterButton;->mLockMove:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/ShutterButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/ShutterButton;->mCurScaleValue:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/camera/ShutterButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/ShutterButton;->mCurRatioValue:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/ShutterButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/ShutterButton;->mIsShuttonBtnAnimating:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/ShutterButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/ShutterButton;->mIsNeedVideoBtnAnim:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/ShutterButton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/ShutterButton;->mCurStopScaleValue:F

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/ShutterButton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/ShutterButton;->mCurStopRatioValue:F

    return p1
.end method

.method static synthetic access$902(Lcom/android/camera/ShutterButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/ShutterButton;->mIsNeedStopVideoBtnAnim:Z

    return p1
.end method

.method private callShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 640
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 641
    .local v0, "listener":Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    invoke-interface {v0, p1}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 643
    .end local v0    # "listener":Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    :cond_0
    return-void
.end method

.method private cancelAnims()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mStopBtnAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mStopBtnAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mStopBtnAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 294
    :cond_1
    return-void
.end method

.method private doSwipeAction(I)V
    .locals 4
    .param p1, "swipe"    # I

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-boolean v0, p0, Lcom/android/camera/ShutterButton;->mMovable:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->clearAnimation()V

    .line 400
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getScrollY()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    .line 401
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 402
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ShutterButton$7;

    invoke-direct {v1, p0}, Lcom/android/camera/ShutterButton$7;-><init>(Lcom/android/camera/ShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 407
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ShutterButton$8;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ShutterButton$8;-><init>(Lcom/android/camera/ShutterButton;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 419
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 421
    :cond_0
    return-void
.end method

.method private initPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 438
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mRedPaint:Landroid/graphics/Paint;

    .line 439
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mRedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mRedPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mWhitePaint:Landroid/graphics/Paint;

    .line 444
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mWhitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 446
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mWhitePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ShutterButton;->mRoundRatio:F

    .line 449
    return-void
.end method

.method public static isGestureUp(II)Ljava/lang/Boolean;
    .locals 4
    .param p0, "swiped"    # I
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 115
    sparse-switch p1, :sswitch_data_0

    .line 141
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 117
    :sswitch_0
    if-nez p0, :cond_1

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_1
    if-ne p0, v0, :cond_0

    .line 120
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 123
    :sswitch_1
    if-ne p0, v2, :cond_2

    .line 124
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_2
    if-ne p0, v3, :cond_0

    .line 126
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 129
    :sswitch_2
    if-nez p0, :cond_3

    .line 130
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_3
    if-ne p0, v0, :cond_0

    .line 132
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 135
    :sswitch_3
    if-ne p0, v2, :cond_4

    .line 136
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_4
    if-ne p0, v3, :cond_0

    .line 138
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private setScrollPosition(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/16 v6, 0x10e

    const/16 v5, 0x5a

    .line 691
    move v2, p1

    .line 692
    .local v2, "scrollPosition":I
    iget v4, p0, Lcom/android/camera/ShutterButton;->mOrientation:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/camera/ShutterButton;->mOrientation:I

    if-ne v4, v6, :cond_4

    :cond_0
    const/4 v1, 0x1

    .line 693
    .local v1, "isLandScape":Z
    :goto_0
    if-eqz v1, :cond_5

    iget v3, p0, Lcom/android/camera/ShutterButton;->mLargestScrollRangeBottom:I

    .line 694
    .local v3, "topRange":I
    :goto_1
    if-eqz v1, :cond_6

    iget v0, p0, Lcom/android/camera/ShutterButton;->mLargestScrollRangeTop:I

    .line 696
    .local v0, "bottomRange":I
    :goto_2
    if-lez p1, :cond_1

    if-le p1, v3, :cond_1

    .line 697
    move v2, v3

    .line 699
    :cond_1
    if-gez p1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v0, :cond_2

    .line 700
    neg-int v2, v0

    .line 703
    :cond_2
    iget v4, p0, Lcom/android/camera/ShutterButton;->mOrientation:I

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/camera/ShutterButton;->mOrientation:I

    if-ne v4, v6, :cond_7

    .line 704
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/ShutterButton;->setScrollX(I)V

    .line 708
    :goto_3
    return-void

    .line 692
    .end local v0    # "bottomRange":I
    .end local v1    # "isLandScape":Z
    .end local v3    # "topRange":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 693
    .restart local v1    # "isLandScape":Z
    :cond_5
    iget v3, p0, Lcom/android/camera/ShutterButton;->mLargestScrollRangeTop:I

    goto :goto_1

    .line 694
    .restart local v3    # "topRange":I
    :cond_6
    iget v0, p0, Lcom/android/camera/ShutterButton;->mLargestScrollRangeBottom:I

    goto :goto_2

    .line 706
    .restart local v0    # "bottomRange":I
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/camera/ShutterButton;->setScrollY(I)V

    goto :goto_3
.end method

.method private startStopVideoBtnAnim(I)V
    .locals 8
    .param p1, "resId"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 347
    new-array v1, v7, [F

    const/4 v2, 0x0

    aput v2, v1, v5

    iget-object v2, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const v3, 0x3efaaaab

    iget-object v4, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ShutterButton;->mStopVideoBtnScaleAnim:Landroid/animation/ValueAnimator;

    .line 348
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mStopVideoBtnScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ShutterButton$4;

    invoke-direct {v2, p0}, Lcom/android/camera/ShutterButton$4;-><init>(Lcom/android/camera/ShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 355
    new-array v1, v7, [F

    iget v2, p0, Lcom/android/camera/ShutterButton;->mRoundRatio:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 356
    .local v0, "ratioAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/camera/ShutterButton$5;

    invoke-direct {v1, p0}, Lcom/android/camera/ShutterButton$5;-><init>(Lcom/android/camera/ShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 364
    new-instance v1, Lcom/android/camera/ShutterButton$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ShutterButton$6;-><init>(Lcom/android/camera/ShutterButton;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ShutterButton;->mStopBtnAnimSet:Landroid/animation/AnimatorSet;

    .line 392
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mStopBtnAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 393
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mStopBtnAnimSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/camera/ShutterButton;->mStopVideoBtnScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 394
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mStopBtnAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 395
    return-void
.end method

.method private startVideoBtnAnim(I)V
    .locals 8
    .param p1, "resId"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 297
    new-array v2, v7, [I

    aput v4, v2, v4

    iget-object v3, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 298
    .local v1, "scaleAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/camera/ShutterButton$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ShutterButton$1;-><init>(Lcom/android/camera/ShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 305
    new-array v2, v7, [I

    iget-object v3, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v2, v4

    aput v4, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 306
    .local v0, "ratioAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/camera/ShutterButton$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ShutterButton$2;-><init>(Lcom/android/camera/ShutterButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ShutterButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 315
    iget-object v2, p0, Lcom/android/camera/ShutterButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 316
    iget-object v2, p0, Lcom/android/camera/ShutterButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 317
    iget-object v2, p0, Lcom/android/camera/ShutterButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/camera/ShutterButton$3;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/ShutterButton$3;-><init>(Lcom/android/camera/ShutterButton;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    iget-object v2, p0, Lcom/android/camera/ShutterButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 344
    return-void
.end method


# virtual methods
.method public addOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 474
    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    .line 581
    :goto_0
    return v7

    .line 476
    :cond_0
    iget-boolean v7, p0, Lcom/android/camera/ShutterButton;->mTouchEnabled:Z

    if-eqz v7, :cond_16

    .line 478
    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v7, :cond_1

    .line 479
    new-instance v7, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/android/camera/ShutterButton$GestureListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/camera/ShutterButton$GestureListener;-><init>(Lcom/android/camera/ShutterButton;Lcom/android/camera/ShutterButton$1;)V

    invoke-direct {v7, v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/android/camera/ShutterButton;->mGestureDetector:Landroid/view/GestureDetector;

    .line 480
    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 487
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_2

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gez v7, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_4

    .line 490
    :cond_2
    const/4 v3, 0x0

    .line 492
    .local v3, "invalid":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-nez v7, :cond_3

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/ShutterButton;->actionDownTime:J

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    cmp-long v7, v8, v10

    if-lez v7, :cond_a

    const/4 v3, 0x1

    .line 495
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/camera/ShutterButton;->mStartX:F

    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/camera/ShutterButton;->mStartY:F

    .line 499
    :cond_3
    if-nez v3, :cond_b

    .line 500
    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 506
    .end local v3    # "invalid":Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/android/camera/ShutterButton;->mStartX:F

    sub-float/2addr v7, v8

    float-to-int v4, v7

    .line 508
    .local v4, "moveX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/android/camera/ShutterButton;->mStartY:F

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 509
    .local v5, "moveY":I
    iget-boolean v7, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/camera/ShutterButton;->mMovable:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/camera/ShutterButton;->mLockMove:Z

    if-nez v7, :cond_6

    .line 510
    iget v7, p0, Lcom/android/camera/ShutterButton;->mOrientation:I

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/android/camera/ShutterButton;->mOrientation:I

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_c

    .line 511
    :cond_5
    neg-int v7, v4

    invoke-direct {p0, v7}, Lcom/android/camera/ShutterButton;->setScrollPosition(I)V

    .line 518
    .end local v4    # "moveX":I
    .end local v5    # "moveY":I
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 519
    new-instance v7, Lcom/android/camera/ui/TouchCoordinate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/camera/ui/TouchCoordinate;-><init>(FFFF)V

    iput-object v7, p0, Lcom/android/camera/ShutterButton;->mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 521
    iget v7, p0, Lcom/android/camera/ShutterButton;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v0, v7

    .line 522
    .local v0, "diffX":I
    iget v7, p0, Lcom/android/camera/ShutterButton;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v1, v7

    .line 524
    .local v1, "diffY":I
    iget-boolean v7, p0, Lcom/android/camera/ShutterButton;->mMovable:Z

    if-eqz v7, :cond_9

    .line 525
    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-nez v7, :cond_8

    .line 527
    :cond_7
    iget v7, p0, Lcom/android/camera/ShutterButton;->mOrientation:I

    sparse-switch v7, :sswitch_data_0

    .line 537
    const/4 v2, 0x0

    .line 541
    .local v2, "distance":I
    :goto_3
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v2, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    .line 542
    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 543
    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/android/camera/ShutterButton$9;

    invoke-direct {v8, p0}, Lcom/android/camera/ShutterButton$9;-><init>(Lcom/android/camera/ShutterButton;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 548
    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mValueAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 551
    .end local v2    # "distance":I
    :cond_8
    sget-boolean v7, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_d

    .line 579
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    :cond_9
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto/16 :goto_0

    .line 494
    .restart local v3    # "invalid":Z
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 502
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 513
    .end local v3    # "invalid":Z
    .restart local v4    # "moveX":I
    .restart local v5    # "moveY":I
    :cond_c
    neg-int v7, v5

    invoke-direct {p0, v7}, Lcom/android/camera/ShutterButton;->setScrollPosition(I)V

    goto/16 :goto_2

    .line 530
    .end local v4    # "moveX":I
    .end local v5    # "moveY":I
    .restart local v0    # "diffX":I
    .restart local v1    # "diffY":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getScrollY()I

    move-result v2

    .line 531
    .restart local v2    # "distance":I
    goto :goto_3

    .line 534
    .end local v2    # "distance":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getScrollX()I

    move-result v2

    .line 535
    .restart local v2    # "distance":I
    goto :goto_3

    .line 554
    .end local v2    # "distance":I
    :cond_d
    iget v7, p0, Lcom/android/camera/ShutterButton;->mOrientation:I

    if-eqz v7, :cond_e

    iget v7, p0, Lcom/android/camera/ShutterButton;->mOrientation:I

    const/16 v8, 0xb4

    if-ne v7, v8, :cond_12

    .line 555
    :cond_e
    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_f

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getScrollY()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 557
    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getScrollY()I

    move-result v7

    if-gtz v7, :cond_10

    if-lez v1, :cond_11

    .line 558
    :cond_10
    const/4 v6, 0x0

    .line 562
    .local v6, "swipe":I
    :goto_5
    invoke-direct {p0, v6}, Lcom/android/camera/ShutterButton;->doSwipeAction(I)V

    goto :goto_4

    .line 560
    .end local v6    # "swipe":I
    :cond_11
    const/4 v6, 0x1

    .restart local v6    # "swipe":I
    goto :goto_5

    .line 565
    .end local v6    # "swipe":I
    :cond_12
    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_13

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getScrollX()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 567
    :cond_13
    if-ltz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getScrollX()I

    move-result v7

    if-gez v7, :cond_15

    .line 568
    :cond_14
    const/4 v6, 0x2

    .line 572
    .restart local v6    # "swipe":I
    :goto_6
    invoke-direct {p0, v6}, Lcom/android/camera/ShutterButton;->doSwipeAction(I)V

    goto :goto_4

    .line 570
    .end local v6    # "swipe":I
    :cond_15
    const/4 v6, 0x3

    .restart local v6    # "swipe":I
    goto :goto_6

    .line 581
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    .end local v6    # "swipe":I
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 527
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 600
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 601
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    .line 602
    .local v0, "pressed":Z
    iget-boolean v1, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 603
    if-nez v0, :cond_1

    .line 625
    new-instance v1, Lcom/android/camera/ShutterButton$10;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ShutterButton$10;-><init>(Lcom/android/camera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 631
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ShutterButton;->mLockMove:Z

    .line 635
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    .line 637
    :cond_0
    return-void

    .line 633
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public enableMovable(Z)V
    .locals 0
    .param p1, "movable"    # Z

    .prologue
    .line 586
    iput-boolean p1, p0, Lcom/android/camera/ShutterButton;->mMovable:Z

    .line 587
    return-void
.end method

.method public enableTouch(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 590
    iput-boolean p1, p0, Lcom/android/camera/ShutterButton;->mTouchEnabled:Z

    .line 591
    return-void
.end method

.method public isShuttonBtnAnimating()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/ShutterButton;->mIsShuttonBtnAnimating:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 237
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 238
    iget-boolean v0, p0, Lcom/android/camera/ShutterButton;->mIsNeedVideoBtnAnim:Z

    if-eqz v0, :cond_0

    .line 239
    iget v0, p0, Lcom/android/camera/ShutterButton;->mCenterX:F

    iget v5, p0, Lcom/android/camera/ShutterButton;->mCenterY:F

    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 243
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mWhitePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget v5, p0, Lcom/android/camera/ShutterButton;->mCurScaleValue:I

    sub-int v8, v0, v5

    .line 245
    .local v8, "curWidth":I
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/android/camera/ShutterButton;->mCurScaleValue:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v1, v0, v5

    .line 246
    .local v1, "left":F
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/android/camera/ShutterButton;->mCurScaleValue:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v2, v0, v5

    .line 247
    .local v2, "top":F
    int-to-float v0, v8

    add-float v3, v1, v0

    .line 248
    .local v3, "right":F
    int-to-float v0, v8

    add-float v4, v2, v0

    .line 249
    .local v4, "bottom":F
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 251
    .local v9, "rectF":Landroid/graphics/RectF;
    iget v0, p0, Lcom/android/camera/ShutterButton;->mCurRatioValue:I

    int-to-float v0, v0

    iget v5, p0, Lcom/android/camera/ShutterButton;->mCurRatioValue:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 254
    .end local v1    # "left":F
    .end local v2    # "top":F
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    .end local v8    # "curWidth":I
    .end local v9    # "rectF":Landroid/graphics/RectF;
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ShutterButton;->mIsNeedStopVideoBtnAnim:Z

    if-eqz v0, :cond_1

    .line 255
    iget v0, p0, Lcom/android/camera/ShutterButton;->mCenterX:F

    iget v5, p0, Lcom/android/camera/ShutterButton;->mCenterY:F

    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mWhitePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    const v0, 0x3efaaaab

    iget-object v5, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ShutterButton;->mCurStopScaleValue:F

    add-float v11, v0, v5

    .line 259
    .local v11, "roundRectWidth":F
    const v0, 0x3e82aaab

    iget-object v5, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v10, v0, v5

    .line 260
    .local v10, "rectPadding":F
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v10

    iget v5, p0, Lcom/android/camera/ShutterButton;->mCurStopScaleValue:F

    div-float/2addr v5, v12

    sub-float v1, v0, v5

    .line 261
    .restart local v1    # "left":F
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v10

    iget v5, p0, Lcom/android/camera/ShutterButton;->mCurStopScaleValue:F

    div-float/2addr v5, v12

    sub-float v2, v0, v5

    .line 262
    .restart local v2    # "top":F
    add-float v3, v1, v11

    .line 263
    .restart local v3    # "right":F
    add-float v4, v2, v11

    .line 265
    .restart local v4    # "bottom":F
    iget v5, p0, Lcom/android/camera/ShutterButton;->mCurStopRatioValue:F

    iget v6, p0, Lcom/android/camera/ShutterButton;->mCurStopRatioValue:F

    iget-object v7, p0, Lcom/android/camera/ShutterButton;->mWhitePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 268
    .end local v1    # "left":F
    .end local v2    # "top":F
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    .end local v10    # "rectPadding":F
    .end local v11    # "roundRectWidth":F
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 220
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 221
    sub-int v5, p4, p2

    .line 224
    .local v5, "width":I
    const v6, 0x3de739ce

    int-to-float v7, v5

    mul-float v0, v6, v7

    .line 225
    .local v0, "padding":F
    const/4 v2, 0x0

    .line 226
    .local v2, "rectLeft":F
    const/4 v4, 0x0

    .line 227
    .local v4, "rectTop":F
    int-to-float v6, v5

    add-float v3, v2, v6

    .line 228
    .local v3, "rectRight":F
    int-to-float v6, v5

    add-float v1, v4, v6

    .line 229
    .local v1, "rectBottom":F
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v2, v0

    add-float v8, v4, v0

    sub-float v9, v3, v0

    sub-float v10, v1, v0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    .line 231
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iput v6, p0, Lcom/android/camera/ShutterButton;->mCenterX:F

    .line 232
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mShutterBtnRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    iput v6, p0, Lcom/android/camera/ShutterButton;->mCenterY:F

    .line 233
    return-void
.end method

.method public performClick()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 647
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v7

    .line 649
    .local v7, "result":Z
    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getScrollY()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 650
    sget-object v8, Lcom/android/camera/ShutterButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v9, "ignore performClick during scroll"

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 687
    :cond_0
    return v7

    .line 654
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/ShutterButton;->actionDownTime:J

    sub-long v0, v8, v10

    .line 655
    .local v0, "EVENT_DURATION":J
    long-to-float v8, v0

    const/high16 v9, 0x43fa0000    # 500.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 656
    sget-object v8, Lcom/android/camera/ShutterButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ignore invalid onClick event: EVENT_DURATION = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 658
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 659
    .local v3, "isTlakBackMode":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "accessibility"

    .line 660
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    .line 662
    .local v6, "mAccessibilitymanager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v6, v12}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    .line 663
    .local v5, "mAccessibilityServiceInfolist":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-eqz v5, :cond_3

    .line 664
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 665
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.talkback"

    .line 666
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 667
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 664
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 672
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 679
    .end local v3    # "isTlakBackMode":Ljava/lang/Boolean;
    .end local v5    # "mAccessibilityServiceInfolist":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v6    # "mAccessibilitymanager":Landroid/view/accessibility/AccessibilityManager;
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 681
    iget-object v8, p0, Lcom/android/camera/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 682
    .local v4, "listener":Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    iget-object v9, p0, Lcom/android/camera/ShutterButton;->mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    invoke-interface {v4, v9}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V

    .line 683
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/ShutterButton;->mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 684
    invoke-interface {v4}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    goto :goto_1
.end method

.method public playVideoBtnAnim(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/camera/ShutterButton;->cancelAnims()V

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ShutterButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mIsNeedVideoBtnAnim:Z

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mIsNeedStopVideoBtnAnim:Z

    .line 275
    invoke-direct {p0}, Lcom/android/camera/ShutterButton;->initPaint()V

    .line 276
    invoke-direct {p0, p1}, Lcom/android/camera/ShutterButton;->startVideoBtnAnim(I)V

    .line 277
    return-void
.end method

.method public removeOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 468
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-boolean v0, p0, Lcom/android/camera/ShutterButton;->mMovable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ShutterButton;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/camera/ShutterButton;->setScrollX(I)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/camera/ShutterButton;->setScrollY(I)V

    .line 151
    :cond_0
    iput p1, p0, Lcom/android/camera/ShutterButton;->mOrientation:I

    .line 152
    return-void
.end method

.method public stopVideoBtnAnim(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/camera/ShutterButton;->cancelAnims()V

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ShutterButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mIsNeedVideoBtnAnim:Z

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mIsNeedStopVideoBtnAnim:Z

    .line 284
    invoke-direct {p0, p1}, Lcom/android/camera/ShutterButton;->startStopVideoBtnAnim(I)V

    .line 285
    return-void
.end method
