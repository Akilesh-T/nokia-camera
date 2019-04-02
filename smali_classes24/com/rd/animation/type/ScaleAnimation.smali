.class public Lcom/rd/animation/type/ScaleAnimation;
.super Lcom/rd/animation/type/ColorAnimation;
.source "ScaleAnimation.java"


# static fields
.field static final ANIMATION_SCALE:Ljava/lang/String; = "ANIMATION_SCALE"

.field static final ANIMATION_SCALE_REVERSE:Ljava/lang/String; = "ANIMATION_SCALE_REVERSE"

.field public static final DEFAULT_SCALE_FACTOR:F = 0.7f

.field public static final MAX_SCALE_FACTOR:F = 1.0f

.field public static final MIN_SCALE_FACTOR:F = 0.3f


# instance fields
.field radius:I

.field scaleFactor:F

.field private value:Lcom/rd/animation/data/type/ScaleAnimationValue;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/rd/animation/type/ColorAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    .line 27
    new-instance v0, Lcom/rd/animation/data/type/ScaleAnimationValue;

    invoke-direct {v0}, Lcom/rd/animation/data/type/ScaleAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/rd/animation/type/ScaleAnimation;->value:Lcom/rd/animation/data/type/ScaleAnimationValue;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/rd/animation/type/ScaleAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/rd/animation/type/ScaleAnimation;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/rd/animation/type/ScaleAnimation;->onAnimateUpdated(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private hasChanges(IIIF)Z
    .locals 2
    .param p1, "colorStart"    # I
    .param p2, "colorEnd"    # I
    .param p3, "radiusValue"    # I
    .param p4, "scaleFactorValue"    # F

    .prologue
    const/4 v0, 0x1

    .line 110
    iget v1, p0, Lcom/rd/animation/type/ScaleAnimation;->colorStart:I

    if-eq v1, p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    iget v1, p0, Lcom/rd/animation/type/ScaleAnimation;->colorEnd:I

    if-ne v1, p2, :cond_0

    .line 118
    iget v1, p0, Lcom/rd/animation/type/ScaleAnimation;->radius:I

    if-ne v1, p3, :cond_0

    .line 122
    iget v1, p0, Lcom/rd/animation/type/ScaleAnimation;->scaleFactor:F

    cmpl-float v1, v1, p4

    if-nez v1, :cond_0

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAnimateUpdated(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    const-string v4, "ANIMATION_COLOR"

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    .local v0, "color":I
    const-string v4, "ANIMATION_COLOR_REVERSE"

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72
    .local v1, "colorReverse":I
    const-string v4, "ANIMATION_SCALE"

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 73
    .local v2, "radius":I
    const-string v4, "ANIMATION_SCALE_REVERSE"

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 75
    .local v3, "radiusReverse":I
    iget-object v4, p0, Lcom/rd/animation/type/ScaleAnimation;->value:Lcom/rd/animation/data/type/ScaleAnimationValue;

    invoke-virtual {v4, v0}, Lcom/rd/animation/data/type/ScaleAnimationValue;->setColor(I)V

    .line 76
    iget-object v4, p0, Lcom/rd/animation/type/ScaleAnimation;->value:Lcom/rd/animation/data/type/ScaleAnimationValue;

    invoke-virtual {v4, v1}, Lcom/rd/animation/data/type/ScaleAnimationValue;->setColorReverse(I)V

    .line 78
    iget-object v4, p0, Lcom/rd/animation/type/ScaleAnimation;->value:Lcom/rd/animation/data/type/ScaleAnimationValue;

    invoke-virtual {v4, v2}, Lcom/rd/animation/data/type/ScaleAnimationValue;->setRadius(I)V

    .line 79
    iget-object v4, p0, Lcom/rd/animation/type/ScaleAnimation;->value:Lcom/rd/animation/data/type/ScaleAnimationValue;

    invoke-virtual {v4, v3}, Lcom/rd/animation/data/type/ScaleAnimationValue;->setRadiusReverse(I)V

    .line 81
    iget-object v4, p0, Lcom/rd/animation/type/ScaleAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    if-eqz v4, :cond_0

    .line 82
    iget-object v4, p0, Lcom/rd/animation/type/ScaleAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    iget-object v5, p0, Lcom/rd/animation/type/ScaleAnimation;->value:Lcom/rd/animation/data/type/ScaleAnimationValue;

    invoke-interface {v4, v5}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    .line 84
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
    invoke-virtual {p0}, Lcom/rd/animation/type/ScaleAnimation;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator()Landroid/animation/ValueAnimator;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 33
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 34
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    new-instance v1, Lcom/rd/animation/type/ScaleAnimation$1;

    invoke-direct {v1, p0}, Lcom/rd/animation/type/ScaleAnimation$1;-><init>(Lcom/rd/animation/type/ScaleAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    return-object v0
.end method

.method protected createScalePropertyHolder(Z)Landroid/animation/PropertyValuesHolder;
    .locals 6
    .param p1, "isReverse"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string v2, "ANIMATION_SCALE_REVERSE"

    .line 94
    .local v2, "propertyName":Ljava/lang/String;
    iget v3, p0, Lcom/rd/animation/type/ScaleAnimation;->radius:I

    .line 95
    .local v3, "startRadiusValue":I
    iget v4, p0, Lcom/rd/animation/type/ScaleAnimation;->radius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/rd/animation/type/ScaleAnimation;->scaleFactor:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 102
    .local v0, "endRadiusValue":I
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 103
    .local v1, "holder":Landroid/animation/PropertyValuesHolder;
    new-instance v4, Landroid/animation/IntEvaluator;

    invoke-direct {v4}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 105
    return-object v1

    .line 97
    .end local v0    # "endRadiusValue":I
    .end local v1    # "holder":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "startRadiusValue":I
    :cond_0
    const-string v2, "ANIMATION_SCALE"

    .line 98
    .restart local v2    # "propertyName":Ljava/lang/String;
    iget v4, p0, Lcom/rd/animation/type/ScaleAnimation;->radius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/rd/animation/type/ScaleAnimation;->scaleFactor:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 99
    .restart local v3    # "startRadiusValue":I
    iget v0, p0, Lcom/rd/animation/type/ScaleAnimation;->radius:I

    .restart local v0    # "endRadiusValue":I
    goto :goto_0
.end method

.method public with(IIIF)Lcom/rd/animation/type/ScaleAnimation;
    .locals 8
    .param p1, "colorStart"    # I
    .param p2, "colorEnd"    # I
    .param p3, "radius"    # I
    .param p4, "scaleFactor"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    iget-object v4, p0, Lcom/rd/animation/type/ScaleAnimation;->animator:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rd/animation/type/ScaleAnimation;->hasChanges(IIIF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    iput p1, p0, Lcom/rd/animation/type/ScaleAnimation;->colorStart:I

    .line 51
    iput p2, p0, Lcom/rd/animation/type/ScaleAnimation;->colorEnd:I

    .line 53
    iput p3, p0, Lcom/rd/animation/type/ScaleAnimation;->radius:I

    .line 54
    iput p4, p0, Lcom/rd/animation/type/ScaleAnimation;->scaleFactor:F

    .line 56
    invoke-virtual {p0, v6}, Lcom/rd/animation/type/ScaleAnimation;->createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 57
    .local v0, "colorHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p0, v7}, Lcom/rd/animation/type/ScaleAnimation;->createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 59
    .local v1, "reverseColorHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p0, v6}, Lcom/rd/animation/type/ScaleAnimation;->createScalePropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 60
    .local v2, "scaleHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p0, v7}, Lcom/rd/animation/type/ScaleAnimation;->createScalePropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 62
    .local v3, "scaleReverseHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v4, p0, Lcom/rd/animation/type/ScaleAnimation;->animator:Landroid/animation/Animator;

    check-cast v4, Landroid/animation/ValueAnimator;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 65
    .end local v0    # "colorHolder":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "reverseColorHolder":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "scaleHolder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "scaleReverseHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    return-object p0
.end method
