.class public Lcom/rd/animation/type/SlideAnimation;
.super Lcom/rd/animation/type/BaseAnimation;
.source "SlideAnimation.java"


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

.field private static final COORDINATE_NONE:I = -0x1


# instance fields
.field private coordinateEnd:I

.field private coordinateStart:I

.field private value:Lcom/rd/animation/data/type/SlideAnimationValue;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0, p1}, Lcom/rd/animation/type/BaseAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    .line 17
    iput v0, p0, Lcom/rd/animation/type/SlideAnimation;->coordinateStart:I

    .line 18
    iput v0, p0, Lcom/rd/animation/type/SlideAnimation;->coordinateEnd:I

    .line 22
    new-instance v0, Lcom/rd/animation/data/type/SlideAnimationValue;

    invoke-direct {v0}, Lcom/rd/animation/data/type/SlideAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/rd/animation/type/SlideAnimation;->value:Lcom/rd/animation/data/type/SlideAnimationValue;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/rd/animation/type/SlideAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/rd/animation/type/SlideAnimation;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/rd/animation/type/SlideAnimation;->onAnimateUpdated(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createSlidePropertyHolder()Landroid/animation/PropertyValuesHolder;
    .locals 5

    .prologue
    .line 69
    const-string v1, "ANIMATION_COORDINATE"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/rd/animation/type/SlideAnimation;->coordinateStart:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/rd/animation/type/SlideAnimation;->coordinateEnd:I

    aput v4, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 70
    .local v0, "holder":Landroid/animation/PropertyValuesHolder;
    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 72
    return-object v0
.end method

.method private hasChanges(II)Z
    .locals 2
    .param p1, "coordinateStart"    # I
    .param p2, "coordinateEnd"    # I

    .prologue
    const/4 v0, 0x1

    .line 86
    iget v1, p0, Lcom/rd/animation/type/SlideAnimation;->coordinateStart:I

    if-eq v1, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget v1, p0, Lcom/rd/animation/type/SlideAnimation;->coordinateEnd:I

    if-ne v1, p2, :cond_0

    .line 94
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAnimateUpdated(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    const-string v1, "ANIMATION_COORDINATE"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 77
    .local v0, "coordinate":I
    iget-object v1, p0, Lcom/rd/animation/type/SlideAnimation;->value:Lcom/rd/animation/data/type/SlideAnimationValue;

    invoke-virtual {v1, v0}, Lcom/rd/animation/data/type/SlideAnimationValue;->setCoordinate(I)V

    .line 79
    iget-object v1, p0, Lcom/rd/animation/type/SlideAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/rd/animation/type/SlideAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    iget-object v2, p0, Lcom/rd/animation/type/SlideAnimation;->value:Lcom/rd/animation/data/type/SlideAnimationValue;

    invoke-interface {v1, v2}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    .line 82
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
    invoke-virtual {p0}, Lcom/rd/animation/type/SlideAnimation;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator()Landroid/animation/ValueAnimator;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 28
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 29
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 30
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    new-instance v1, Lcom/rd/animation/type/SlideAnimation$1;

    invoke-direct {v1, p0}, Lcom/rd/animation/type/SlideAnimation$1;-><init>(Lcom/rd/animation/type/SlideAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38
    return-object v0
.end method

.method public bridge synthetic progress(F)Lcom/rd/animation/type/BaseAnimation;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/rd/animation/type/SlideAnimation;->progress(F)Lcom/rd/animation/type/SlideAnimation;

    move-result-object v0

    return-object v0
.end method

.method public progress(F)Lcom/rd/animation/type/SlideAnimation;
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 43
    iget-object v2, p0, Lcom/rd/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 44
    iget-wide v2, p0, Lcom/rd/animation/type/SlideAnimation;->animationDuration:J

    long-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-long v0, v2

    .line 46
    .local v0, "playTime":J
    iget-object v2, p0, Lcom/rd/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rd/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/rd/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 51
    .end local v0    # "playTime":J
    :cond_0
    return-object p0
.end method

.method public with(II)Lcom/rd/animation/type/SlideAnimation;
    .locals 4
    .param p1, "coordinateStart"    # I
    .param p2, "coordinateEnd"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/rd/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/rd/animation/type/SlideAnimation;->hasChanges(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iput p1, p0, Lcom/rd/animation/type/SlideAnimation;->coordinateStart:I

    .line 59
    iput p2, p0, Lcom/rd/animation/type/SlideAnimation;->coordinateEnd:I

    .line 61
    invoke-direct {p0}, Lcom/rd/animation/type/SlideAnimation;->createSlidePropertyHolder()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 62
    .local v0, "holder":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/rd/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    check-cast v1, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 65
    .end local v0    # "holder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    return-object p0
.end method
