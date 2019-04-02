.class public Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;
.super Landroid/view/View;
.source "HorizontalDottedProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;
    }
.end annotation


# static fields
.field private static final MAX_DOT:I = 0x6


# instance fields
.field private final mBounceDotPaint:Landroid/graphics/Paint;

.field private final mBounceDotRadius:I

.field private final mDotGap:I

.field private final mDotPaint:Landroid/graphics/Paint;

.field private mDotPosition:I

.field private final mDotRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v2, 0x7f09009b

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotRadius:I

    .line 37
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mBounceDotRadius:I

    .line 38
    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotGap:I

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotPaint:Landroid/graphics/Paint;

    const-string v2, "#4DFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mBounceDotPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mBounceDotPaint:Landroid/graphics/Paint;

    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotPosition:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotPosition:I

    return v0
.end method

.method private drawDots(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 54
    iget v1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotPosition:I

    if-gt v0, v1, :cond_0

    .line 55
    iget v1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotGap:I

    mul-int/2addr v1, v0

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mBounceDotRadius:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mBounceDotRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mBounceDotRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mBounceDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 53
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget v1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotGap:I

    mul-int/2addr v1, v0

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mBounceDotRadius:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mBounceDotRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 60
    :cond_1
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;-><init>(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$1;)V

    .line 78
    .local v0, "bounceAnimation":Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;->setDuration(J)V

    .line 79
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;->setRepeatCount(I)V

    .line 80
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 81
    new-instance v1, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$1;-><init>(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 65
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->startAnimation()V

    .line 66
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->drawDots(Landroid/graphics/Canvas;)V

    .line 50
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 71
    iget v2, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mBounceDotRadius:I

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x6

    iget v3, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mDotGap:I

    mul-int/lit8 v3, v3, 0x5

    add-int v1, v2, v3

    .line 72
    .local v1, "width":I
    iget v2, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->mBounceDotRadius:I

    mul-int/lit8 v0, v2, 0x2

    .line 73
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->setMeasuredDimension(II)V

    .line 74
    return-void
.end method
