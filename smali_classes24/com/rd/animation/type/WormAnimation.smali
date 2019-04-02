.class public Lcom/rd/animation/type/WormAnimation;
.super Lcom/rd/animation/type/BaseAnimation;
.source "WormAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rd/animation/type/WormAnimation$RectValues;
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
.field coordinateEnd:I

.field coordinateStart:I

.field isRightSide:Z

.field radius:I

.field rectLeftEdge:I

.field rectRightEdge:I

.field private value:Lcom/rd/animation/data/type/WormAnimationValue;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/rd/animation/type/BaseAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    .line 26
    new-instance v0, Lcom/rd/animation/data/type/WormAnimationValue;

    invoke-direct {v0}, Lcom/rd/animation/data/type/WormAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/rd/animation/type/WormAnimation;->value:Lcom/rd/animation/data/type/WormAnimationValue;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/rd/animation/type/WormAnimation;Lcom/rd/animation/data/type/WormAnimationValue;Landroid/animation/ValueAnimator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/rd/animation/type/WormAnimation;
    .param p1, "x1"    # Lcom/rd/animation/data/type/WormAnimationValue;
    .param p2, "x2"    # Landroid/animation/ValueAnimator;
    .param p3, "x3"    # Z

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/rd/animation/type/WormAnimation;->onAnimateUpdated(Lcom/rd/animation/data/type/WormAnimationValue;Landroid/animation/ValueAnimator;Z)V

    return-void
.end method

.method private onAnimateUpdated(Lcom/rd/animation/data/type/WormAnimationValue;Landroid/animation/ValueAnimator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/rd/animation/data/type/WormAnimationValue;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animation"    # Landroid/animation/ValueAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "isReverse"    # Z

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    .local v0, "rectEdge":I
    iget-boolean v1, p0, Lcom/rd/animation/type/WormAnimation;->isRightSide:Z

    if-eqz v1, :cond_2

    .line 117
    if-nez p3, :cond_1

    .line 118
    invoke-virtual {p1, v0}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectEnd(I)V

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/rd/animation/type/WormAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/rd/animation/type/WormAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-interface {v1, p1}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    .line 134
    :cond_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p1, v0}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectStart(I)V

    goto :goto_0

    .line 124
    :cond_2
    if-nez p3, :cond_3

    .line 125
    invoke-virtual {p1, v0}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectStart(I)V

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {p1, v0}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectEnd(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createAnimator()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/rd/animation/type/WormAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator()Landroid/animation/AnimatorSet;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 33
    .local v0, "animator":Landroid/animation/AnimatorSet;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    return-object v0
.end method

.method createRectValues(Z)Lcom/rd/animation/type/WormAnimation$RectValues;
    .locals 6
    .param p1, "isRightSide"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    add-int v2, v0, v1

    .line 167
    .local v2, "fromX":I
    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    add-int v3, v0, v1

    .line 169
    .local v3, "toX":I
    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    sub-int v4, v0, v1

    .line 170
    .local v4, "reverseFromX":I
    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    sub-int v5, v0, v1

    .line 180
    .local v5, "reverseToX":I
    :goto_0
    new-instance v0, Lcom/rd/animation/type/WormAnimation$RectValues;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/rd/animation/type/WormAnimation$RectValues;-><init>(Lcom/rd/animation/type/WormAnimation;IIII)V

    return-object v0

    .line 173
    .end local v2    # "fromX":I
    .end local v3    # "toX":I
    .end local v4    # "reverseFromX":I
    .end local v5    # "reverseToX":I
    :cond_0
    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    sub-int v2, v0, v1

    .line 174
    .restart local v2    # "fromX":I
    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    sub-int v3, v0, v1

    .line 176
    .restart local v3    # "toX":I
    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    add-int v4, v0, v1

    .line 177
    .restart local v4    # "reverseFromX":I
    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    add-int v5, v0, v1

    .restart local v5    # "reverseToX":I
    goto :goto_0
.end method

.method createWormAnimator(IIJZLcom/rd/animation/data/type/WormAnimationValue;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "fromValue"    # I
    .param p2, "toValue"    # I
    .param p3, "duration"    # J
    .param p5, "isReverse"    # Z
    .param p6, "value"    # Lcom/rd/animation/data/type/WormAnimationValue;

    .prologue
    .line 100
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 101
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 103
    new-instance v1, Lcom/rd/animation/type/WormAnimation$1;

    invoke-direct {v1, p0, p6, p5}, Lcom/rd/animation/type/WormAnimation$1;-><init>(Lcom/rd/animation/type/WormAnimation;Lcom/rd/animation/data/type/WormAnimationValue;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    return-object v0
.end method

.method public bridge synthetic duration(J)Lcom/rd/animation/type/BaseAnimation;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/rd/animation/type/WormAnimation;->duration(J)Lcom/rd/animation/type/WormAnimation;

    move-result-object v0

    return-object v0
.end method

.method public duration(J)Lcom/rd/animation/type/WormAnimation;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/rd/animation/type/BaseAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    .line 41
    return-object p0
.end method

.method hasChanges(IIIZ)Z
    .locals 2
    .param p1, "coordinateStart"    # I
    .param p2, "coordinateEnd"    # I
    .param p3, "radius"    # I
    .param p4, "isRightSide"    # Z

    .prologue
    const/4 v0, 0x1

    .line 138
    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    if-eq v1, p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    if-ne v1, p2, :cond_0

    .line 146
    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    if-ne v1, p3, :cond_0

    .line 150
    iget-boolean v1, p0, Lcom/rd/animation/type/WormAnimation;->isRightSide:Z

    if-ne v1, p4, :cond_0

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic progress(F)Lcom/rd/animation/type/BaseAnimation;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/rd/animation/type/WormAnimation;->progress(F)Lcom/rd/animation/type/WormAnimation;

    move-result-object v0

    return-object v0
.end method

.method public progress(F)Lcom/rd/animation/type/WormAnimation;
    .locals 10
    .param p1, "progress"    # F

    .prologue
    .line 72
    iget-object v8, p0, Lcom/rd/animation/type/WormAnimation;->animator:Landroid/animation/Animator;

    if-nez v8, :cond_1

    .line 90
    :cond_0
    return-object p0

    .line 76
    :cond_1
    iget-wide v8, p0, Lcom/rd/animation/type/WormAnimation;->animationDuration:J

    long-to-float v8, v8

    mul-float/2addr v8, p1

    float-to-long v4, v8

    .line 77
    .local v4, "progressDuration":J
    iget-object v8, p0, Lcom/rd/animation/type/WormAnimation;->animator:Landroid/animation/Animator;

    check-cast v8, Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .local v0, "anim":Landroid/animation/Animator;
    move-object v1, v0

    .line 78
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 79
    .local v1, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 80
    .local v2, "duration":J
    move-wide v6, v4

    .line 82
    .local v6, "setDuration":J
    cmp-long v9, v6, v2

    if-lez v9, :cond_2

    .line 83
    move-wide v6, v2

    .line 86
    :cond_2
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 87
    sub-long/2addr v4, v6

    .line 88
    goto :goto_0
.end method

.method public with(IIIZ)Lcom/rd/animation/type/WormAnimation;
    .locals 10
    .param p1, "coordinateStart"    # I
    .param p2, "coordinateEnd"    # I
    .param p3, "radius"    # I
    .param p4, "isRightSide"    # Z

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rd/animation/type/WormAnimation;->hasChanges(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/rd/animation/type/WormAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/rd/animation/type/WormAnimation;->animator:Landroid/animation/Animator;

    .line 48
    iput p1, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    .line 49
    iput p2, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    .line 51
    iput p3, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    .line 52
    iput-boolean p4, p0, Lcom/rd/animation/type/WormAnimation;->isRightSide:Z

    .line 54
    sub-int v1, p1, p3

    iput v1, p0, Lcom/rd/animation/type/WormAnimation;->rectLeftEdge:I

    .line 55
    add-int v1, p1, p3

    iput v1, p0, Lcom/rd/animation/type/WormAnimation;->rectRightEdge:I

    .line 57
    iget-object v1, p0, Lcom/rd/animation/type/WormAnimation;->value:Lcom/rd/animation/data/type/WormAnimationValue;

    iget v2, p0, Lcom/rd/animation/type/WormAnimation;->rectLeftEdge:I

    invoke-virtual {v1, v2}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectStart(I)V

    .line 58
    iget-object v1, p0, Lcom/rd/animation/type/WormAnimation;->value:Lcom/rd/animation/data/type/WormAnimationValue;

    iget v2, p0, Lcom/rd/animation/type/WormAnimation;->rectRightEdge:I

    invoke-virtual {v1, v2}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectEnd(I)V

    .line 60
    invoke-virtual {p0, p4}, Lcom/rd/animation/type/WormAnimation;->createRectValues(Z)Lcom/rd/animation/type/WormAnimation$RectValues;

    move-result-object v0

    .line 61
    .local v0, "rect":Lcom/rd/animation/type/WormAnimation$RectValues;
    iget-wide v2, p0, Lcom/rd/animation/type/WormAnimation;->animationDuration:J

    const-wide/16 v6, 0x2

    div-long v4, v2, v6

    .line 63
    .local v4, "duration":J
    iget v2, v0, Lcom/rd/animation/type/WormAnimation$RectValues;->fromX:I

    iget v3, v0, Lcom/rd/animation/type/WormAnimation$RectValues;->toX:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/rd/animation/type/WormAnimation;->value:Lcom/rd/animation/data/type/WormAnimationValue;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/rd/animation/type/WormAnimation;->createWormAnimator(IIJZLcom/rd/animation/data/type/WormAnimationValue;)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 64
    .local v9, "straightAnimator":Landroid/animation/ValueAnimator;
    iget v2, v0, Lcom/rd/animation/type/WormAnimation$RectValues;->reverseFromX:I

    iget v3, v0, Lcom/rd/animation/type/WormAnimation$RectValues;->reverseToX:I

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/rd/animation/type/WormAnimation;->value:Lcom/rd/animation/data/type/WormAnimationValue;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/rd/animation/type/WormAnimation;->createWormAnimator(IIJZLcom/rd/animation/data/type/WormAnimationValue;)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 65
    .local v8, "reverseAnimator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/rd/animation/type/WormAnimation;->animator:Landroid/animation/Animator;

    check-cast v1, Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 67
    .end local v0    # "rect":Lcom/rd/animation/type/WormAnimation$RectValues;
    .end local v4    # "duration":J
    .end local v8    # "reverseAnimator":Landroid/animation/ValueAnimator;
    .end local v9    # "straightAnimator":Landroid/animation/ValueAnimator;
    :cond_0
    return-object p0
.end method
