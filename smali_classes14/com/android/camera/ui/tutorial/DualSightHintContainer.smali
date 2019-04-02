.class public Lcom/android/camera/ui/tutorial/DualSightHintContainer;
.super Lcom/android/camera/ui/RotateLayout;
.source "DualSightHintContainer.java"


# static fields
.field private static MARGIN_AREA_HEIGHT_LANDSCAPE_IN_DP:I

.field private static MARGIN_AREA_HEIGHT_PORTRAIT_IN_DP:I

.field private static MARGIN_BOTTOM_PORTRAIT_IN_DP:I

.field private static MARGIN_CHECKBOX_BOTTOM_LANDSCAPE_IN_DP:I

.field private static MARGIN_HINT_BOTTOM_LANDSCAPE_IN_DP:I

.field private static MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

.field private static MARGIN_HORIZONTAL_PORTRAIT_IN_DP:I

.field private static MARGIN_HORIZONTAL_PORTRAIT_IN_DP_END:I

.field private static MARGIN_TOP_LANDSCAPE_IN_DP:I

.field private static MARGIN_TOP_PORTRAIT_IN_DP:I

.field private static NAVIGATION_BAR_IN_DP:I


# instance fields
.field private mButton:Landroid/view/View;

.field private mCheckBox:Landroid/view/View;

.field private mHint:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-static {p1}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->NAVIGATION_BAR_IN_DP:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_TOP_PORTRAIT_IN_DP:I

    .line 40
    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_PORTRAIT_IN_DP:I

    .line 41
    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_PORTRAIT_IN_DP_END:I

    .line 42
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_BOTTOM_PORTRAIT_IN_DP:I

    .line 43
    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_AREA_HEIGHT_PORTRAIT_IN_DP:I

    .line 45
    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_TOP_LANDSCAPE_IN_DP:I

    .line 46
    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

    .line 47
    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HINT_BOTTOM_LANDSCAPE_IN_DP:I

    .line 48
    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_AREA_HEIGHT_LANDSCAPE_IN_DP:I

    .line 49
    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_CHECKBOX_BOTTOM_LANDSCAPE_IN_DP:I

    .line 50
    return-void
.end method

.method private updateButtonLayout()V
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mButton:Landroid/view/View;

    if-nez v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 150
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 165
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 153
    :sswitch_0
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_BOTTOM_PORTRAIT_IN_DP:I

    sget v2, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->NAVIGATION_BAR_IN_DP:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 154
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_PORTRAIT_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 157
    :sswitch_1
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HINT_BOTTOM_LANDSCAPE_IN_DP:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 158
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 161
    :sswitch_2
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HINT_BOTTOM_LANDSCAPE_IN_DP:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 162
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

    sget v2, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->NAVIGATION_BAR_IN_DP:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private updateCheckBoxLayout()V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mCheckBox:Landroid/view/View;

    if-nez v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mCheckBox:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mCheckBox:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 128
    :sswitch_0
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_BOTTOM_PORTRAIT_IN_DP:I

    sget v2, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->NAVIGATION_BAR_IN_DP:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 129
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_PORTRAIT_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 130
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_PORTRAIT_IN_DP_END:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 133
    :sswitch_1
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_CHECKBOX_BOTTOM_LANDSCAPE_IN_DP:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 134
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

    sget v2, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->NAVIGATION_BAR_IN_DP:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 135
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 138
    :sswitch_2
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_CHECKBOX_BOTTOM_LANDSCAPE_IN_DP:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 139
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 140
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

    sget v2, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->NAVIGATION_BAR_IN_DP:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private updateHintContainer()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 89
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void

    .line 81
    :sswitch_0
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 86
    :sswitch_1
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private updateHintLayout()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mHint:Landroid/view/View;

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mHint:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mHint:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 100
    :sswitch_0
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_AREA_HEIGHT_PORTRAIT_IN_DP:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 101
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_TOP_PORTRAIT_IN_DP:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 102
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_PORTRAIT_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 103
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_PORTRAIT_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 106
    :sswitch_1
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_AREA_HEIGHT_LANDSCAPE_IN_DP:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 107
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_TOP_LANDSCAPE_IN_DP:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 108
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

    sget v2, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->NAVIGATION_BAR_IN_DP:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 109
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 112
    :sswitch_2
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_AREA_HEIGHT_LANDSCAPE_IN_DP:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 113
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_TOP_LANDSCAPE_IN_DP:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 114
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 115
    sget v1, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->MARGIN_HORIZONTAL_LANDSCAPE_IN_DP:I

    sget v2, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->NAVIGATION_BAR_IN_DP:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 55
    const v0, 0x7f0f0101

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mHint:Landroid/view/View;

    .line 56
    const v0, 0x7f0f0102

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mCheckBox:Landroid/view/View;

    .line 57
    const v0, 0x7f0f0103

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mButton:Landroid/view/View;

    .line 58
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->onMeasure(II)V

    .line 63
    iget v0, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->setOrientation(IZ)V

    .line 64
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 68
    iput p1, p0, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->mOrientation:I

    .line 69
    invoke-direct {p0}, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->updateHintContainer()V

    .line 70
    invoke-direct {p0}, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->updateHintLayout()V

    .line 71
    invoke-direct {p0}, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->updateCheckBoxLayout()V

    .line 72
    invoke-direct {p0}, Lcom/android/camera/ui/tutorial/DualSightHintContainer;->updateButtonLayout()V

    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 74
    return-void
.end method
