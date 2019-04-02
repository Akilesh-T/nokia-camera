.class public Lcom/rd/animation/type/DropAnimation;
.super Lcom/rd/animation/type/BaseAnimation;
.source "DropAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rd/animation/type/DropAnimation$AnimationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rd/animation/type/BaseAnimation",
        "<",
        "Landroid/animation/AnimatorSet;",
        ">;"
    }
.end annotation


# instance fields
.field private heightEnd:I

.field private heightStart:I

.field private radius:I

.field private value:Lcom/rd/animation/data/type/DropAnimationValue;

.field private widthEnd:I

.field private widthStart:I


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/rd/animation/type/BaseAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    .line 25
    new-instance v0, Lcom/rd/animation/data/type/DropAnimationValue;

    invoke-direct {v0}, Lcom/rd/animation/data/type/DropAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/rd/animation/type/DropAnimation;->value:Lcom/rd/animation/data/type/DropAnimationValue;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/rd/animation/type/DropAnimation;Landroid/animation/ValueAnimator;Lcom/rd/animation/type/DropAnimation$AnimationType;)V
    .locals 0
    .param p0, "x0"    # Lcom/rd/animation/type/DropAnimation;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;
    .param p2, "x2"    # Lcom/rd/animation/type/DropAnimation$AnimationType;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/rd/animation/type/DropAnimation;->onAnimatorUpdate(Landroid/animation/ValueAnimator;Lcom/rd/animation/type/DropAnimation$AnimationType;)V

    return-void
.end method

.method private createValueAnimation(IIJLcom/rd/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "fromValue"    # I
    .param p2, "toValue"    # I
    .param p3, "duration"    # J
    .param p5, "type"    # Lcom/rd/animation/type/DropAnimation$AnimationType;

    .prologue
    .line 111
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 112
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 113
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    new-instance v1, Lcom/rd/animation/type/DropAnimation$1;

    invoke-direct {v1, p0, p5}, Lcom/rd/animation/type/DropAnimation$1;-><init>(Lcom/rd/animation/type/DropAnimation;Lcom/rd/animation/type/DropAnimation$AnimationType;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 121
    return-object v0
.end method

.method private hasChanges(IIIII)Z
    .locals 2
    .param p1, "widthStart"    # I
    .param p2, "widthEnd"    # I
    .param p3, "heightStart"    # I
    .param p4, "heightEnd"    # I
    .param p5, "radius"    # I

    .prologue
    const/4 v0, 0x1

    .line 148
    iget v1, p0, Lcom/rd/animation/type/DropAnimation;->widthStart:I

    if-eq v1, p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    iget v1, p0, Lcom/rd/animation/type/DropAnimation;->widthEnd:I

    if-ne v1, p2, :cond_0

    .line 156
    iget v1, p0, Lcom/rd/animation/type/DropAnimation;->heightStart:I

    if-ne v1, p3, :cond_0

    .line 160
    iget v1, p0, Lcom/rd/animation/type/DropAnimation;->heightEnd:I

    if-ne v1, p4, :cond_0

    .line 164
    iget v1, p0, Lcom/rd/animation/type/DropAnimation;->radius:I

    if-ne v1, p5, :cond_0

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAnimatorUpdate(Landroid/animation/ValueAnimator;Lcom/rd/animation/type/DropAnimation$AnimationType;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/rd/animation/type/DropAnimation$AnimationType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 127
    .local v0, "frameValue":I
    sget-object v1, Lcom/rd/animation/type/DropAnimation$2;->$SwitchMap$com$rd$animation$type$DropAnimation$AnimationType:[I

    invoke-virtual {p2}, Lcom/rd/animation/type/DropAnimation$AnimationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/rd/animation/type/DropAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/rd/animation/type/DropAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    iget-object v2, p0, Lcom/rd/animation/type/DropAnimation;->value:Lcom/rd/animation/data/type/DropAnimationValue;

    invoke-interface {v1, v2}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    .line 144
    :cond_0
    return-void

    .line 129
    :pswitch_0
    iget-object v1, p0, Lcom/rd/animation/type/DropAnimation;->value:Lcom/rd/animation/data/type/DropAnimationValue;

    invoke-virtual {v1, v0}, Lcom/rd/animation/data/type/DropAnimationValue;->setWidth(I)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v1, p0, Lcom/rd/animation/type/DropAnimation;->value:Lcom/rd/animation/data/type/DropAnimationValue;

    invoke-virtual {v1, v0}, Lcom/rd/animation/data/type/DropAnimationValue;->setHeight(I)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v1, p0, Lcom/rd/animation/type/DropAnimation;->value:Lcom/rd/animation/data/type/DropAnimationValue;

    invoke-virtual {v1, v0}, Lcom/rd/animation/data/type/DropAnimationValue;->setRadius(I)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic createAnimator()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/rd/animation/type/DropAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator()Landroid/animation/AnimatorSet;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 32
    .local v0, "animator":Landroid/animation/AnimatorSet;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    return-object v0
.end method

.method public bridge synthetic duration(J)Lcom/rd/animation/type/BaseAnimation;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/rd/animation/type/DropAnimation;->duration(J)Lcom/rd/animation/type/DropAnimation;

    move-result-object v0

    return-object v0
.end method

.method public duration(J)Lcom/rd/animation/type/DropAnimation;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/rd/animation/type/BaseAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    .line 75
    return-object p0
.end method

.method public bridge synthetic progress(F)Lcom/rd/animation/type/BaseAnimation;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/rd/animation/type/DropAnimation;->progress(F)Lcom/rd/animation/type/DropAnimation;

    move-result-object v0

    return-object v0
.end method

.method public progress(F)Lcom/rd/animation/type/DropAnimation;
    .locals 12
    .param p1, "progress"    # F

    .prologue
    .line 39
    iget-object v7, p0, Lcom/rd/animation/type/DropAnimation;->animator:Landroid/animation/Animator;

    if-eqz v7, :cond_4

    .line 40
    iget-wide v10, p0, Lcom/rd/animation/type/DropAnimation;->animationDuration:J

    long-to-float v7, v10

    mul-float/2addr v7, p1

    float-to-long v8, v7

    .line 41
    .local v8, "playTimeLeft":J
    const/4 v6, 0x0

    .line 43
    .local v6, "isReverse":Z
    iget-object v7, p0, Lcom/rd/animation/type/DropAnimation;->animator:Landroid/animation/Animator;

    check-cast v7, Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .local v0, "anim":Landroid/animation/Animator;
    move-object v1, v0

    .line 44
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 45
    .local v1, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 46
    .local v2, "animDuration":J
    move-wide v4, v8

    .line 48
    .local v4, "currPlayTime":J
    if-eqz v6, :cond_1

    .line 49
    sub-long/2addr v4, v2

    .line 52
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_0

    .line 55
    cmp-long v10, v4, v2

    if-ltz v10, :cond_2

    .line 56
    move-wide v4, v2

    .line 59
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    array-length v10, v10

    if-lez v10, :cond_3

    .line 60
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 63
    :cond_3
    if-nez v6, :cond_0

    iget-wide v10, p0, Lcom/rd/animation/type/DropAnimation;->animationDuration:J

    cmp-long v10, v2, v10

    if-ltz v10, :cond_0

    .line 64
    const/4 v6, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    .end local v2    # "animDuration":J
    .end local v4    # "currPlayTime":J
    .end local v6    # "isReverse":Z
    .end local v8    # "playTimeLeft":J
    :cond_4
    return-object p0
.end method

.method public with(IIIII)Lcom/rd/animation/type/DropAnimation;
    .locals 17
    .param p1, "widthStart"    # I
    .param p2, "widthEnd"    # I
    .param p3, "heightStart"    # I
    .param p4, "heightEnd"    # I
    .param p5, "radius"    # I

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Lcom/rd/animation/type/DropAnimation;->hasChanges(IIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/rd/animation/type/DropAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/rd/animation/type/DropAnimation;->animator:Landroid/animation/Animator;

    .line 83
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rd/animation/type/DropAnimation;->widthStart:I

    .line 84
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rd/animation/type/DropAnimation;->widthEnd:I

    .line 85
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rd/animation/type/DropAnimation;->heightStart:I

    .line 86
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rd/animation/type/DropAnimation;->heightEnd:I

    .line 87
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rd/animation/type/DropAnimation;->radius:I

    .line 89
    move/from16 v2, p5

    .line 90
    .local v2, "fromRadius":I
    move/from16 v0, p5

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    div-double/2addr v4, v6

    double-to-int v15, v4

    .line 91
    .local v15, "toRadius":I
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/rd/animation/type/DropAnimation;->animationDuration:J

    const-wide/16 v6, 0x2

    div-long v10, v4, v6

    .line 93
    .local v10, "halfDuration":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/rd/animation/type/DropAnimation;->animationDuration:J

    sget-object v8, Lcom/rd/animation/type/DropAnimation$AnimationType;->Width:Lcom/rd/animation/type/DropAnimation$AnimationType;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/rd/animation/type/DropAnimation;->createValueAnimation(IIJLcom/rd/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v16

    .line 94
    .local v16, "widthAnimator":Landroid/animation/ValueAnimator;
    sget-object v8, Lcom/rd/animation/type/DropAnimation$AnimationType;->Height:Lcom/rd/animation/type/DropAnimation$AnimationType;

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/rd/animation/type/DropAnimation;->createValueAnimation(IIJLcom/rd/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 95
    .local v12, "heightForwardAnimator":Landroid/animation/ValueAnimator;
    sget-object v8, Lcom/rd/animation/type/DropAnimation$AnimationType;->Radius:Lcom/rd/animation/type/DropAnimation$AnimationType;

    move-object/from16 v3, p0

    move v4, v2

    move v5, v15

    move-wide v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/rd/animation/type/DropAnimation;->createValueAnimation(IIJLcom/rd/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v14

    .line 97
    .local v14, "radiusForwardAnimator":Landroid/animation/ValueAnimator;
    sget-object v8, Lcom/rd/animation/type/DropAnimation$AnimationType;->Height:Lcom/rd/animation/type/DropAnimation$AnimationType;

    move-object/from16 v3, p0

    move/from16 v4, p4

    move/from16 v5, p3

    move-wide v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/rd/animation/type/DropAnimation;->createValueAnimation(IIJLcom/rd/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 98
    .local v9, "heightBackwardAnimator":Landroid/animation/ValueAnimator;
    sget-object v8, Lcom/rd/animation/type/DropAnimation$AnimationType;->Radius:Lcom/rd/animation/type/DropAnimation$AnimationType;

    move-object/from16 v3, p0

    move v4, v15

    move v5, v2

    move-wide v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/rd/animation/type/DropAnimation;->createValueAnimation(IIJLcom/rd/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 100
    .local v13, "radiusBackwardAnimator":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rd/animation/type/DropAnimation;->animator:Landroid/animation/Animator;

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 101
    invoke-virtual {v3, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 102
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 103
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 104
    invoke-virtual {v3, v13}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 107
    .end local v2    # "fromRadius":I
    .end local v9    # "heightBackwardAnimator":Landroid/animation/ValueAnimator;
    .end local v10    # "halfDuration":J
    .end local v12    # "heightForwardAnimator":Landroid/animation/ValueAnimator;
    .end local v13    # "radiusBackwardAnimator":Landroid/animation/ValueAnimator;
    .end local v14    # "radiusForwardAnimator":Landroid/animation/ValueAnimator;
    .end local v15    # "toRadius":I
    .end local v16    # "widthAnimator":Landroid/animation/ValueAnimator;
    :cond_0
    return-object p0
.end method
