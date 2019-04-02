.class public Lcom/rd/animation/type/FillAnimation;
.super Lcom/rd/animation/type/ColorAnimation;
.source "FillAnimation.java"


# static fields
.field private static final ANIMATION_RADIUS:Ljava/lang/String; = "ANIMATION_RADIUS"

.field private static final ANIMATION_RADIUS_REVERSE:Ljava/lang/String; = "ANIMATION_RADIUS_REVERSE"

.field private static final ANIMATION_STROKE:Ljava/lang/String; = "ANIMATION_STROKE"

.field private static final ANIMATION_STROKE_REVERSE:Ljava/lang/String; = "ANIMATION_STROKE_REVERSE"

.field public static final DEFAULT_STROKE_DP:I = 0x1


# instance fields
.field private radius:I

.field private stroke:I

.field private value:Lcom/rd/animation/data/type/FillAnimationValue;


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
    new-instance v0, Lcom/rd/animation/data/type/FillAnimationValue;

    invoke-direct {v0}, Lcom/rd/animation/data/type/FillAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/rd/animation/type/FillAnimation;->value:Lcom/rd/animation/data/type/FillAnimationValue;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/rd/animation/type/FillAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/rd/animation/type/FillAnimation;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/rd/animation/type/FillAnimation;->onAnimateUpdated(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createRadiusPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;
    .locals 6
    .param p1, "isReverse"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string v2, "ANIMATION_RADIUS_REVERSE"

    .line 87
    .local v2, "propertyName":Ljava/lang/String;
    iget v4, p0, Lcom/rd/animation/type/FillAnimation;->radius:I

    div-int/lit8 v3, v4, 0x2

    .line 88
    .local v3, "startRadiusValue":I
    iget v0, p0, Lcom/rd/animation/type/FillAnimation;->radius:I

    .line 95
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

    .line 96
    .local v1, "holder":Landroid/animation/PropertyValuesHolder;
    new-instance v4, Landroid/animation/IntEvaluator;

    invoke-direct {v4}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 98
    return-object v1

    .line 90
    .end local v0    # "endRadiusValue":I
    .end local v1    # "holder":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "startRadiusValue":I
    :cond_0
    const-string v2, "ANIMATION_RADIUS"

    .line 91
    .restart local v2    # "propertyName":Ljava/lang/String;
    iget v3, p0, Lcom/rd/animation/type/FillAnimation;->radius:I

    .line 92
    .restart local v3    # "startRadiusValue":I
    iget v4, p0, Lcom/rd/animation/type/FillAnimation;->radius:I

    div-int/lit8 v0, v4, 0x2

    .restart local v0    # "endRadiusValue":I
    goto :goto_0
.end method

.method private createStrokePropertyHolder(Z)Landroid/animation/PropertyValuesHolder;
    .locals 6
    .param p1, "isReverse"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    const-string v2, "ANIMATION_STROKE_REVERSE"

    .line 109
    .local v2, "propertyName":Ljava/lang/String;
    iget v3, p0, Lcom/rd/animation/type/FillAnimation;->radius:I

    .line 110
    .local v3, "startStrokeValue":I
    const/4 v0, 0x0

    .line 117
    .local v0, "endStrokeValue":I
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 118
    .local v1, "holder":Landroid/animation/PropertyValuesHolder;
    new-instance v4, Landroid/animation/IntEvaluator;

    invoke-direct {v4}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 120
    return-object v1

    .line 112
    .end local v0    # "endStrokeValue":I
    .end local v1    # "holder":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "startStrokeValue":I
    :cond_0
    const-string v2, "ANIMATION_STROKE"

    .line 113
    .restart local v2    # "propertyName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 114
    .restart local v3    # "startStrokeValue":I
    iget v0, p0, Lcom/rd/animation/type/FillAnimation;->radius:I

    .restart local v0    # "endStrokeValue":I
    goto :goto_0
.end method

.method private hasChanges(IIII)Z
    .locals 2
    .param p1, "colorStart"    # I
    .param p2, "colorEnd"    # I
    .param p3, "radiusValue"    # I
    .param p4, "strokeValue"    # I

    .prologue
    const/4 v0, 0x1

    .line 149
    iget v1, p0, Lcom/rd/animation/type/FillAnimation;->colorStart:I

    if-eq v1, p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget v1, p0, Lcom/rd/animation/type/FillAnimation;->colorEnd:I

    if-ne v1, p2, :cond_0

    .line 157
    iget v1, p0, Lcom/rd/animation/type/FillAnimation;->radius:I

    if-ne v1, p3, :cond_0

    .line 161
    iget v1, p0, Lcom/rd/animation/type/FillAnimation;->stroke:I

    if-ne v1, p4, :cond_0

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAnimateUpdated(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    const-string v6, "ANIMATION_COLOR"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    .local v0, "color":I
    const-string v6, "ANIMATION_COLOR_REVERSE"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 127
    .local v1, "colorReverse":I
    const-string v6, "ANIMATION_RADIUS"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 128
    .local v2, "radius":I
    const-string v6, "ANIMATION_RADIUS_REVERSE"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 130
    .local v3, "radiusReverse":I
    const-string v6, "ANIMATION_STROKE"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 131
    .local v4, "stroke":I
    const-string v6, "ANIMATION_STROKE_REVERSE"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 133
    .local v5, "strokeReverse":I
    iget-object v6, p0, Lcom/rd/animation/type/FillAnimation;->value:Lcom/rd/animation/data/type/FillAnimationValue;

    invoke-virtual {v6, v0}, Lcom/rd/animation/data/type/FillAnimationValue;->setColor(I)V

    .line 134
    iget-object v6, p0, Lcom/rd/animation/type/FillAnimation;->value:Lcom/rd/animation/data/type/FillAnimationValue;

    invoke-virtual {v6, v1}, Lcom/rd/animation/data/type/FillAnimationValue;->setColorReverse(I)V

    .line 136
    iget-object v6, p0, Lcom/rd/animation/type/FillAnimation;->value:Lcom/rd/animation/data/type/FillAnimationValue;

    invoke-virtual {v6, v2}, Lcom/rd/animation/data/type/FillAnimationValue;->setRadius(I)V

    .line 137
    iget-object v6, p0, Lcom/rd/animation/type/FillAnimation;->value:Lcom/rd/animation/data/type/FillAnimationValue;

    invoke-virtual {v6, v3}, Lcom/rd/animation/data/type/FillAnimationValue;->setRadiusReverse(I)V

    .line 139
    iget-object v6, p0, Lcom/rd/animation/type/FillAnimation;->value:Lcom/rd/animation/data/type/FillAnimationValue;

    invoke-virtual {v6, v4}, Lcom/rd/animation/data/type/FillAnimationValue;->setStroke(I)V

    .line 140
    iget-object v6, p0, Lcom/rd/animation/type/FillAnimation;->value:Lcom/rd/animation/data/type/FillAnimationValue;

    invoke-virtual {v6, v5}, Lcom/rd/animation/data/type/FillAnimationValue;->setStrokeReverse(I)V

    .line 142
    iget-object v6, p0, Lcom/rd/animation/type/FillAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    if-eqz v6, :cond_0

    .line 143
    iget-object v6, p0, Lcom/rd/animation/type/FillAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    iget-object v7, p0, Lcom/rd/animation/type/FillAnimation;->value:Lcom/rd/animation/data/type/FillAnimationValue;

    invoke-interface {v6, v7}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    .line 145
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
    invoke-virtual {p0}, Lcom/rd/animation/type/FillAnimation;->createAnimator()Landroid/animation/ValueAnimator;

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
    new-instance v1, Lcom/rd/animation/type/FillAnimation$1;

    invoke-direct {v1, p0}, Lcom/rd/animation/type/FillAnimation$1;-><init>(Lcom/rd/animation/type/FillAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    return-object v0
.end method

.method public with(IIII)Lcom/rd/animation/type/FillAnimation;
    .locals 10
    .param p1, "colorStart"    # I
    .param p2, "colorEnd"    # I
    .param p3, "radius"    # I
    .param p4, "stroke"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 48
    iget-object v6, p0, Lcom/rd/animation/type/FillAnimation;->animator:Landroid/animation/Animator;

    if-eqz v6, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rd/animation/type/FillAnimation;->hasChanges(IIII)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    iput p1, p0, Lcom/rd/animation/type/FillAnimation;->colorStart:I

    .line 51
    iput p2, p0, Lcom/rd/animation/type/FillAnimation;->colorEnd:I

    .line 53
    iput p3, p0, Lcom/rd/animation/type/FillAnimation;->radius:I

    .line 54
    iput p4, p0, Lcom/rd/animation/type/FillAnimation;->stroke:I

    .line 56
    invoke-virtual {p0, v8}, Lcom/rd/animation/type/FillAnimation;->createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 57
    .local v0, "colorHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p0, v9}, Lcom/rd/animation/type/FillAnimation;->createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 59
    .local v3, "reverseColorHolder":Landroid/animation/PropertyValuesHolder;
    invoke-direct {p0, v8}, Lcom/rd/animation/type/FillAnimation;->createRadiusPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 60
    .local v1, "radiusHolder":Landroid/animation/PropertyValuesHolder;
    invoke-direct {p0, v9}, Lcom/rd/animation/type/FillAnimation;->createRadiusPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 62
    .local v2, "radiusReverseHolder":Landroid/animation/PropertyValuesHolder;
    invoke-direct {p0, v8}, Lcom/rd/animation/type/FillAnimation;->createStrokePropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 63
    .local v4, "strokeHolder":Landroid/animation/PropertyValuesHolder;
    invoke-direct {p0, v9}, Lcom/rd/animation/type/FillAnimation;->createStrokePropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 65
    .local v5, "strokeReverseHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v6, p0, Lcom/rd/animation/type/FillAnimation;->animator:Landroid/animation/Animator;

    check-cast v6, Landroid/animation/ValueAnimator;

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v7, v8

    aput-object v3, v7, v9

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    const/4 v8, 0x4

    aput-object v4, v7, v8

    const/4 v8, 0x5

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 76
    .end local v0    # "colorHolder":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "radiusHolder":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "radiusReverseHolder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "reverseColorHolder":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "strokeHolder":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "strokeReverseHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    return-object p0
.end method
