.class public Lcom/android/camera/ui/compass/CompassTipContainerLayout;
.super Lcom/android/camera/ui/RotateLayout;
.source "CompassTipContainerLayout.java"


# static fields
.field private static MARGIN_BOTTOM_PORTRAIT_IN_DP:I

.field private static MARGIN_TOP_PORTRAIT_IN_DP:I


# instance fields
.field private mCompassTipLayout:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 25
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->MARGIN_TOP_PORTRAIT_IN_DP:I

    .line 26
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090034

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->MARGIN_BOTTOM_PORTRAIT_IN_DP:I

    .line 27
    return-void

    .line 26
    :cond_0
    const v1, 0x7f090033

    goto :goto_0
.end method

.method private updateCompassTipLayout()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 49
    iget-object v1, p0, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->mCompassTipLayout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->mCompassTipLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 88
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->mCompassTipLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 54
    :sswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 57
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 58
    sget v1, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->MARGIN_TOP_PORTRAIT_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 59
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 62
    :sswitch_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    sget v1, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->MARGIN_TOP_PORTRAIT_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 65
    sget v1, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->MARGIN_BOTTOM_PORTRAIT_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 66
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 67
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 70
    :sswitch_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 71
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 73
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 74
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 75
    sget v1, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->MARGIN_TOP_PORTRAIT_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 78
    :sswitch_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 79
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    sget v1, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->MARGIN_BOTTOM_PORTRAIT_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 81
    sget v1, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->MARGIN_TOP_PORTRAIT_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 82
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 83
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 32
    const v0, 0x7f0f00e6

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->mCompassTipLayout:Landroid/view/View;

    .line 33
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->onMeasure(II)V

    .line 38
    iget v0, p0, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->setOrientation(IZ)V

    .line 39
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 43
    iput p1, p0, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->mOrientation:I

    .line 44
    invoke-direct {p0}, Lcom/android/camera/ui/compass/CompassTipContainerLayout;->updateCompassTipLayout()V

    .line 45
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 46
    return-void
.end method
