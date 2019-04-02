.class public Lcom/rd/animation/type/SwapAnimation;
.super Lcom/rd/animation/type/BaseAnimation;
.source "SwapAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rd/animation/type/BaseAnimation",
        "<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_COORDINATE:Ljava/lang/String; = "ANIMATION_COORDINATE"

.field private static final ANIMATION_COORDINATE_REVERSE:Ljava/lang/String; = "ANIMATION_COORDINATE_REVERSE"

.field private static final COORDINATE_NONE:I = -0x1


# instance fields
.field private coordinateEnd:I

.field private coordinateStart:I

.field private value:Lcom/rd/animation/data/type/SwapAnimationValue;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/rd/animation/type/BaseAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    .line 17
    iput v0, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateStart:I

    .line 18
    iput v0, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateEnd:I

    .line 24
    new-instance v0, Lcom/rd/animation/data/type/SwapAnimationValue;

    invoke-direct {v0}, Lcom/rd/animation/data/type/SwapAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/rd/animation/type/SwapAnimation;->value:Lcom/rd/animation/data/type/SwapAnimationValue;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/rd/animation/type/SwapAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/rd/animation/type/SwapAnimation;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/rd/animation/type/SwapAnimation;->onAnimateUpdated(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createColorPropertyHolder(Ljava/lang/String;II)Landroid/animation/PropertyValuesHolder;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "startValue"    # I
    .param p3, "endValue"    # I

    .prologue
    .line 71
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 72
    .local v0, "holder":Landroid/animation/PropertyValuesHolder;
    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 74
    return-object v0
.end method

.method private hasChanges(II)Z
    .locals 2
    .param p1, "coordinateStart"    # I
    .param p2, "coordinateEnd"    # I

    .prologue
    const/4 v0, 0x1

    .line 91
    iget v1, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateStart:I

    if-eq v1, p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    iget v1, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateEnd:I

    if-ne v1, p2, :cond_0

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAnimateUpdated(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    const-string v2, "ANIMATION_COORDINATE"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    .local v0, "coordinate":I
    const-string v2, "ANIMATION_COORDINATE_REVERSE"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 81
    .local v1, "coordinateReverse":I
    iget-object v2, p0, Lcom/rd/animation/type/SwapAnimation;->value:Lcom/rd/animation/data/type/SwapAnimationValue;

    invoke-virtual {v2, v0}, Lcom/rd/animation/data/type/SwapAnimationValue;->setCoordinate(I)V

    .line 82
    iget-object v2, p0, Lcom/rd/animation/type/SwapAnimation;->value:Lcom/rd/animation/data/type/SwapAnimationValue;

    invoke-virtual {v2, v1}, Lcom/rd/animation/data/type/SwapAnimationValue;->setCoordinateReverse(I)V

    .line 84
    iget-object v2, p0, Lcom/rd/animation/type/SwapAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/rd/animation/type/SwapAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    iget-object v3, p0, Lcom/rd/animation/type/SwapAnimation;->value:Lcom/rd/animation/data/type/SwapAnimationValue;

    invoke-interface {v2, v3}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimator()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/rd/animation/type/SwapAnimation;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator()Landroid/animation/ValueAnimator;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 30
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 31
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    new-instance v1, Lcom/rd/animation/type/SwapAnimation$1;

    invoke-direct {v1, p0}, Lcom/rd/animation/type/SwapAnimation$1;-><init>(Lcom/rd/animation/type/SwapAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    return-object v0
.end method

.method public bridge synthetic progress(F)Lcom/rd/animation/type/BaseAnimation;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/rd/animation/type/SwapAnimation;->progress(F)Lcom/rd/animation/type/SwapAnimation;

    move-result-object v0

    return-object v0
.end method

.method public progress(F)Lcom/rd/animation/type/SwapAnimation;
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 45
    iget-object v2, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 46
    iget-wide v2, p0, Lcom/rd/animation/type/SwapAnimation;->animationDuration:J

    long-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-long v0, v2

    .line 48
    .local v0, "playTime":J
    iget-object v2, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 53
    .end local v0    # "playTime":J
    :cond_0
    return-object p0
.end method

.method public with(II)Lcom/rd/animation/type/SwapAnimation;
    .locals 5
    .param p1, "coordinateStart"    # I
    .param p2, "coordinateEnd"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 58
    iget-object v2, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/rd/animation/type/SwapAnimation;->hasChanges(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iput p1, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateStart:I

    .line 60
    iput p2, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateEnd:I

    .line 62
    const-string v2, "ANIMATION_COORDINATE"

    invoke-direct {p0, v2, p1, p2}, Lcom/rd/animation/type/SwapAnimation;->createColorPropertyHolder(Ljava/lang/String;II)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 63
    .local v0, "holder":Landroid/animation/PropertyValuesHolder;
    const-string v2, "ANIMATION_COORDINATE_REVERSE"

    invoke-direct {p0, v2, p2, p1}, Lcom/rd/animation/type/SwapAnimation;->createColorPropertyHolder(Ljava/lang/String;II)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 64
    .local v1, "holderReverse":Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 67
    .end local v0    # "holder":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "holderReverse":Landroid/animation/PropertyValuesHolder;
    :cond_0
    return-object p0
.end method
