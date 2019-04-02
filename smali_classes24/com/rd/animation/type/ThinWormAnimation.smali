.class public Lcom/rd/animation/type/ThinWormAnimation;
.super Lcom/rd/animation/type/WormAnimation;
.source "ThinWormAnimation.java"


# instance fields
.field private value:Lcom/rd/animation/data/type/ThinWormAnimationValue;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/rd/animation/type/WormAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    .line 15
    new-instance v0, Lcom/rd/animation/data/type/ThinWormAnimationValue;

    invoke-direct {v0}, Lcom/rd/animation/data/type/ThinWormAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/rd/animation/type/ThinWormAnimation;->value:Lcom/rd/animation/data/type/ThinWormAnimationValue;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/rd/animation/type/ThinWormAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/rd/animation/type/ThinWormAnimation;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/rd/animation/type/ThinWormAnimation;->onAnimateUpdated(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createHeightAnimator(IIJ)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "fromHeight"    # I
    .param p2, "toHeight"    # I
    .param p3, "duration"    # J

    .prologue
    .line 64
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 65
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 67
    new-instance v1, Lcom/rd/animation/type/ThinWormAnimation$1;

    invoke-direct {v1, p0}, Lcom/rd/animation/type/ThinWormAnimation$1;-><init>(Lcom/rd/animation/type/ThinWormAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    return-object v0
.end method

.method private onAnimateUpdated(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v1, p0, Lcom/rd/animation/type/ThinWormAnimation;->value:Lcom/rd/animation/data/type/ThinWormAnimationValue;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/rd/animation/data/type/ThinWormAnimationValue;->setHeight(I)V

    .line 80
    iget-object v0, p0, Lcom/rd/animation/type/ThinWormAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/rd/animation/type/ThinWormAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    iget-object v1, p0, Lcom/rd/animation/type/ThinWormAnimation;->value:Lcom/rd/animation/data/type/ThinWormAnimationValue;

    invoke-interface {v0, v1}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic duration(J)Lcom/rd/animation/type/BaseAnimation;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/rd/animation/type/ThinWormAnimation;->duration(J)Lcom/rd/animation/type/ThinWormAnimation;

    move-result-object v0

    return-object v0
.end method

.method public duration(J)Lcom/rd/animation/type/ThinWormAnimation;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/rd/animation/type/WormAnimation;->duration(J)Lcom/rd/animation/type/WormAnimation;

    .line 21
    return-object p0
.end method

.method public bridge synthetic duration(J)Lcom/rd/animation/type/WormAnimation;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/rd/animation/type/ThinWormAnimation;->duration(J)Lcom/rd/animation/type/ThinWormAnimation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic progress(F)Lcom/rd/animation/type/BaseAnimation;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/rd/animation/type/ThinWormAnimation;->progress(F)Lcom/rd/animation/type/ThinWormAnimation;

    move-result-object v0

    return-object v0
.end method

.method public progress(F)Lcom/rd/animation/type/ThinWormAnimation;
    .locals 14
    .param p1, "progress"    # F

    .prologue
    const-wide/16 v12, 0x0

    .line 87
    iget-object v9, p0, Lcom/rd/animation/type/ThinWormAnimation;->animator:Landroid/animation/Animator;

    if-eqz v9, :cond_4

    .line 88
    iget-wide v10, p0, Lcom/rd/animation/type/ThinWormAnimation;->animationDuration:J

    long-to-float v9, v10

    mul-float/2addr v9, p1

    float-to-long v4, v9

    .line 89
    .local v4, "progressDuration":J
    iget-object v9, p0, Lcom/rd/animation/type/ThinWormAnimation;->animator:Landroid/animation/Animator;

    check-cast v9, Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 91
    .local v8, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_4

    .line 92
    iget-object v9, p0, Lcom/rd/animation/type/ThinWormAnimation;->animator:Landroid/animation/Animator;

    check-cast v9, Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 94
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v10

    sub-long v6, v4, v10

    .line 95
    .local v6, "setDuration":J
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 97
    .local v2, "duration":J
    cmp-long v9, v6, v2

    if-lez v9, :cond_2

    .line 98
    move-wide v6, v2

    .line 104
    :cond_0
    :goto_1
    add-int/lit8 v9, v8, -0x1

    if-ne v1, v9, :cond_3

    cmp-long v9, v6, v12

    if-gtz v9, :cond_3

    .line 91
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_2
    cmp-long v9, v6, v12

    if-gez v9, :cond_0

    .line 101
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_1

    .line 109
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_2

    .line 114
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v1    # "i":I
    .end local v2    # "duration":J
    .end local v4    # "progressDuration":J
    .end local v6    # "setDuration":J
    .end local v8    # "size":I
    :cond_4
    return-object p0
.end method

.method public bridge synthetic progress(F)Lcom/rd/animation/type/WormAnimation;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/rd/animation/type/ThinWormAnimation;->progress(F)Lcom/rd/animation/type/ThinWormAnimation;

    move-result-object v0

    return-object v0
.end method

.method public with(IIIZ)Lcom/rd/animation/type/WormAnimation;
    .locals 23
    .param p1, "coordinateStart"    # I
    .param p2, "coordinateEnd"    # I
    .param p3, "radius"    # I
    .param p4, "isRightSide"    # Z

    .prologue
    .line 26
    invoke-virtual/range {p0 .. p4}, Lcom/rd/animation/type/ThinWormAnimation;->hasChanges(IIIZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/rd/animation/type/ThinWormAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/rd/animation/type/ThinWormAnimation;->animator:Landroid/animation/Animator;

    .line 29
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rd/animation/type/ThinWormAnimation;->coordinateStart:I

    .line 30
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rd/animation/type/ThinWormAnimation;->coordinateEnd:I

    .line 32
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rd/animation/type/ThinWormAnimation;->radius:I

    .line 33
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/rd/animation/type/ThinWormAnimation;->isRightSide:Z

    .line 35
    mul-int/lit8 v4, p3, 0x2

    .line 36
    .local v4, "height":I
    sub-int v5, p1, p3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/rd/animation/type/ThinWormAnimation;->rectLeftEdge:I

    .line 37
    add-int v5, p1, p3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/rd/animation/type/ThinWormAnimation;->rectRightEdge:I

    .line 39
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/rd/animation/type/ThinWormAnimation;->value:Lcom/rd/animation/data/type/ThinWormAnimationValue;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/rd/animation/type/ThinWormAnimation;->rectLeftEdge:I

    invoke-virtual {v5, v6}, Lcom/rd/animation/data/type/ThinWormAnimationValue;->setRectStart(I)V

    .line 40
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/rd/animation/type/ThinWormAnimation;->value:Lcom/rd/animation/data/type/ThinWormAnimationValue;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/rd/animation/type/ThinWormAnimation;->rectRightEdge:I

    invoke-virtual {v5, v6}, Lcom/rd/animation/data/type/ThinWormAnimationValue;->setRectEnd(I)V

    .line 41
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/rd/animation/type/ThinWormAnimation;->value:Lcom/rd/animation/data/type/ThinWormAnimationValue;

    invoke-virtual {v5, v4}, Lcom/rd/animation/data/type/ThinWormAnimationValue;->setHeight(I)V

    .line 43
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/rd/animation/type/ThinWormAnimation;->createRectValues(Z)Lcom/rd/animation/type/WormAnimation$RectValues;

    move-result-object v14

    .line 44
    .local v14, "rec":Lcom/rd/animation/type/WormAnimation$RectValues;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/rd/animation/type/ThinWormAnimation;->animationDuration:J

    long-to-double v6, v6

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v10

    double-to-long v8, v6

    .line 45
    .local v8, "sizeDuration":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/rd/animation/type/ThinWormAnimation;->animationDuration:J

    long-to-double v6, v6

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v10

    double-to-long v0, v6

    move-wide/from16 v16, v0

    .line 47
    .local v16, "reverseDelay":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/rd/animation/type/ThinWormAnimation;->animationDuration:J

    long-to-double v6, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v10

    double-to-long v12, v6

    .line 48
    .local v12, "heightDuration":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/rd/animation/type/ThinWormAnimation;->animationDuration:J

    long-to-double v6, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v10

    double-to-long v0, v6

    move-wide/from16 v20, v0

    .line 50
    .local v20, "reverseHeightDelay":J
    iget v6, v14, Lcom/rd/animation/type/WormAnimation$RectValues;->fromX:I

    iget v7, v14, Lcom/rd/animation/type/WormAnimation$RectValues;->toX:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rd/animation/type/ThinWormAnimation;->value:Lcom/rd/animation/data/type/ThinWormAnimationValue;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/rd/animation/type/ThinWormAnimation;->createWormAnimator(IIJZLcom/rd/animation/data/type/WormAnimationValue;)Landroid/animation/ValueAnimator;

    move-result-object v19

    .line 51
    .local v19, "straightAnimator":Landroid/animation/ValueAnimator;
    iget v6, v14, Lcom/rd/animation/type/WormAnimation$RectValues;->reverseFromX:I

    iget v7, v14, Lcom/rd/animation/type/WormAnimation$RectValues;->reverseToX:I

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rd/animation/type/ThinWormAnimation;->value:Lcom/rd/animation/data/type/ThinWormAnimationValue;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/rd/animation/type/ThinWormAnimation;->createWormAnimator(IIJZLcom/rd/animation/data/type/WormAnimationValue;)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 52
    .local v15, "reverseAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {v15 .. v17}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 54
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v1, v12, v13}, Lcom/rd/animation/type/ThinWormAnimation;->createHeightAnimator(IIJ)Landroid/animation/ValueAnimator;

    move-result-object v22

    .line 55
    .local v22, "straightHeightAnimator":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v4, v12, v13}, Lcom/rd/animation/type/ThinWormAnimation;->createHeightAnimator(IIJ)Landroid/animation/ValueAnimator;

    move-result-object v18

    .line 56
    .local v18, "reverseHeightAnimator":Landroid/animation/ValueAnimator;
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 58
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/rd/animation/type/ThinWormAnimation;->animator:Landroid/animation/Animator;

    check-cast v5, Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v19, v6, v7

    const/4 v7, 0x1

    aput-object v15, v6, v7

    const/4 v7, 0x2

    aput-object v22, v6, v7

    const/4 v7, 0x3

    aput-object v18, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 60
    .end local v4    # "height":I
    .end local v8    # "sizeDuration":J
    .end local v12    # "heightDuration":J
    .end local v14    # "rec":Lcom/rd/animation/type/WormAnimation$RectValues;
    .end local v15    # "reverseAnimator":Landroid/animation/ValueAnimator;
    .end local v16    # "reverseDelay":J
    .end local v18    # "reverseHeightAnimator":Landroid/animation/ValueAnimator;
    .end local v19    # "straightAnimator":Landroid/animation/ValueAnimator;
    .end local v20    # "reverseHeightDelay":J
    .end local v22    # "straightHeightAnimator":Landroid/animation/ValueAnimator;
    :cond_0
    return-object p0
.end method
