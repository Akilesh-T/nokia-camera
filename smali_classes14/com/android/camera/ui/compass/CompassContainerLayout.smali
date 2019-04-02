.class public Lcom/android/camera/ui/compass/CompassContainerLayout;
.super Landroid/widget/FrameLayout;
.source "CompassContainerLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/hardware/HeadingSensor$HeadingSensorListener;


# static fields
.field private static final CHANGE_THRESHOLD:F = 2.0f

.field private static final COMPASS_ANIMATION_TIME:I = 0x32

.field private static final MAX_THRESHOLD:F = 340.0f

.field private static final MIN_THRESHOLD:F = 20.0f


# instance fields
.field private mCompassArrowContainer:Lcom/android/camera/ui/RotateLayout;

.field private mCompassCircle:Landroid/widget/ImageView;

.field private mCompassHeading:Landroid/widget/TextView;

.field private mCompassTipLayout:Lcom/android/camera/ui/compass/CompassTipContainerLayout;

.field private mCurrentDegree:F

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mOrientation:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCurrentDegree:F

    .line 35
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41
    const v0, 0x7f0f00e5

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/compass/CompassContainerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/compass/CompassTipContainerLayout;

    iput-object v0, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCompassTipLayout:Lcom/android/camera/ui/compass/CompassTipContainerLayout;

    .line 42
    const v0, 0x7f0f00e9

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/compass/CompassContainerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCompassArrowContainer:Lcom/android/camera/ui/RotateLayout;

    .line 43
    const v0, 0x7f0f00ea

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/compass/CompassContainerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCompassCircle:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f0f00e8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/compass/CompassContainerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCompassHeading:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public onHeadingValueChanged(I)V
    .locals 11
    .param p1, "heading"    # I

    .prologue
    const/high16 v10, 0x43b40000    # 360.0f

    const/high16 v9, 0x43aa0000    # 340.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 55
    int-to-float v7, p1

    .line 56
    .local v7, "azimuthInDegrees":F
    const/4 v8, 0x0

    .line 58
    .local v8, "ignore":Z
    iget v1, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCurrentDegree:F

    .line 59
    .local v1, "fromDegrees":F
    neg-float v2, v7

    .line 61
    .local v2, "toDegrees":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v9

    if-lez v5, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 62
    add-float/2addr v1, v10

    .line 67
    :cond_0
    :goto_0
    sub-float v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 68
    const/4 v8, 0x1

    .line 71
    :cond_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 74
    .local v0, "ra":Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x32

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 75
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 77
    iget-object v3, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCompassHeading:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCompassHeading:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCompassCircle:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    if-nez v8, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCompassCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    :cond_3
    neg-float v3, v7

    iput v3, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCurrentDegree:F

    .line 81
    return-void

    .line 63
    .end local v0    # "ra":Landroid/view/animation/RotateAnimation;
    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v9

    if-lez v5, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 64
    add-float/2addr v2, v10

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 50
    iget v0, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/compass/CompassContainerLayout;->setOrientation(IZ)V

    .line 51
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 85
    iput p1, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mOrientation:I

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/compass/CompassContainerLayout;->mCompassTipLayout:Lcom/android/camera/ui/compass/CompassTipContainerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->setOrientation(IZ)V

    .line 88
    return-void
.end method
