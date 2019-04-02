.class public Lcom/rd/animation/type/ColorAnimation;
.super Lcom/rd/animation/type/BaseAnimation;
.source "ColorAnimation.java"


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
.field static final ANIMATION_COLOR:Ljava/lang/String; = "ANIMATION_COLOR"

.field static final ANIMATION_COLOR_REVERSE:Ljava/lang/String; = "ANIMATION_COLOR_REVERSE"

.field public static final DEFAULT_SELECTED_COLOR:Ljava/lang/String; = "#ffffff"

.field public static final DEFAULT_UNSELECTED_COLOR:Ljava/lang/String; = "#33ffffff"


# instance fields
.field colorEnd:I

.field colorStart:I

.field private value:Lcom/rd/animation/data/type/ColorAnimationValue;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/rd/animation/type/BaseAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    .line 27
    new-instance v0, Lcom/rd/animation/data/type/ColorAnimationValue;

    invoke-direct {v0}, Lcom/rd/animation/data/type/ColorAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/rd/animation/type/ColorAnimation;->value:Lcom/rd/animation/data/type/ColorAnimationValue;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/rd/animation/type/ColorAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/rd/animation/type/ColorAnimation;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/rd/animation/type/ColorAnimation;->onAnimateUpdated(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private hasChanges(II)Z
    .locals 2
    .param p1, "colorStart"    # I
    .param p2, "colorEnd"    # I

    .prologue
    const/4 v0, 0x1

    .line 99
    iget v1, p0, Lcom/rd/animation/type/ColorAnimation;->colorStart:I

    if-eq v1, p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    iget v1, p0, Lcom/rd/animation/type/ColorAnimation;->colorEnd:I

    if-ne v1, p2, :cond_0

    .line 107
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
    .line 111
    const-string v2, "ANIMATION_COLOR"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    .local v0, "color":I
    const-string v2, "ANIMATION_COLOR_REVERSE"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 114
    .local v1, "colorReverse":I
    iget-object v2, p0, Lcom/rd/animation/type/ColorAnimation;->value:Lcom/rd/animation/data/type/ColorAnimationValue;

    invoke-virtual {v2, v0}, Lcom/rd/animation/data/type/ColorAnimationValue;->setColor(I)V

    .line 115
    iget-object v2, p0, Lcom/rd/animation/type/ColorAnimation;->value:Lcom/rd/animation/data/type/ColorAnimationValue;

    invoke-virtual {v2, v1}, Lcom/rd/animation/data/type/ColorAnimationValue;->setColorReverse(I)V

    .line 117
    iget-object v2, p0, Lcom/rd/animation/type/ColorAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/rd/animation/type/ColorAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    iget-object v3, p0, Lcom/rd/animation/type/ColorAnimation;->value:Lcom/rd/animation/data/type/ColorAnimationValue;

    invoke-interface {v2, v3}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimator()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/rd/animation/type/ColorAnimation;->createAnimator()Landroid/animation/ValueAnimator;

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
    new-instance v1, Lcom/rd/animation/type/ColorAnimation$1;

    invoke-direct {v1, p0}, Lcom/rd/animation/type/ColorAnimation$1;-><init>(Lcom/rd/animation/type/ColorAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    return-object v0
.end method

.method createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;
    .locals 6
    .param p1, "isReverse"    # Z

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string v3, "ANIMATION_COLOR_REVERSE"

    .line 82
    .local v3, "propertyName":Ljava/lang/String;
    iget v1, p0, Lcom/rd/animation/type/ColorAnimation;->colorEnd:I

    .line 83
    .local v1, "colorStart":I
    iget v0, p0, Lcom/rd/animation/type/ColorAnimation;->colorStart:I

    .line 91
    .local v0, "colorEnd":I
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 92
    .local v2, "holder":Landroid/animation/PropertyValuesHolder;
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 94
    return-object v2

    .line 86
    .end local v0    # "colorEnd":I
    .end local v1    # "colorStart":I
    .end local v2    # "holder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_0
    const-string v3, "ANIMATION_COLOR"

    .line 87
    .restart local v3    # "propertyName":Ljava/lang/String;
    iget v1, p0, Lcom/rd/animation/type/ColorAnimation;->colorStart:I

    .line 88
    .restart local v1    # "colorStart":I
    iget v0, p0, Lcom/rd/animation/type/ColorAnimation;->colorEnd:I

    .restart local v0    # "colorEnd":I
    goto :goto_0
.end method

.method public bridge synthetic progress(F)Lcom/rd/animation/type/BaseAnimation;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/rd/animation/type/ColorAnimation;->progress(F)Lcom/rd/animation/type/ColorAnimation;

    move-result-object v0

    return-object v0
.end method

.method public progress(F)Lcom/rd/animation/type/ColorAnimation;
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 48
    iget-object v2, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 49
    iget-wide v2, p0, Lcom/rd/animation/type/ColorAnimation;->animationDuration:J

    long-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-long v0, v2

    .line 51
    .local v0, "playTime":J
    iget-object v2, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 56
    .end local v0    # "playTime":J
    :cond_0
    return-object p0
.end method

.method public with(II)Lcom/rd/animation/type/ColorAnimation;
    .locals 6
    .param p1, "colorStart"    # I
    .param p2, "colorEnd"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    iget-object v2, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/rd/animation/type/ColorAnimation;->hasChanges(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iput p1, p0, Lcom/rd/animation/type/ColorAnimation;->colorStart:I

    .line 64
    iput p2, p0, Lcom/rd/animation/type/ColorAnimation;->colorEnd:I

    .line 66
    invoke-virtual {p0, v4}, Lcom/rd/animation/type/ColorAnimation;->createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 67
    .local v0, "colorHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p0, v5}, Lcom/rd/animation/type/ColorAnimation;->createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 69
    .local v1, "reverseColorHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 72
    .end local v0    # "colorHolder":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "reverseColorHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    return-object p0
.end method
