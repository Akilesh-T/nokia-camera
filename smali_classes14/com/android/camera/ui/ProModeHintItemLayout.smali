.class public Lcom/android/camera/ui/ProModeHintItemLayout;
.super Lcom/android/camera/ui/RotateLayout;
.source "ProModeHintItemLayout.java"


# static fields
.field private static MARGIN_IN_DP:I

.field private static mNavigationBarHeight:I


# instance fields
.field private mHintText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/camera/ui/ProModeHintItemLayout;->mNavigationBarHeight:I

    .line 45
    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/camera/ui/ProModeHintItemLayout;->mNavigationBarHeight:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/camera/ui/ProModeHintItemLayout;->MARGIN_IN_DP:I

    .line 47
    return-void
.end method

.method private removeRules(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 113
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 114
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 115
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 116
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 117
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f0f017e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ProModeHintItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ProModeHintItemLayout;->mHintText:Landroid/view/View;

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ProModeHintItemLayout;->setOrientation(IZ)V

    .line 54
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/16 v4, 0xf

    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 59
    iget-object v1, p0, Lcom/android/camera/ui/ProModeHintItemLayout;->mHintText:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/camera/ui/ProModeHintItemLayout;->mHintText:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .local v0, "viewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ProModeHintItemLayout;->removeRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 64
    sparse-switch p1, :sswitch_data_0

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ProModeHintItemLayout;->mHintText:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .end local v0    # "viewParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 110
    return-void

    .line 66
    .restart local v0    # "viewParam":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 69
    sget v1, Lcom/android/camera/ui/ProModeHintItemLayout;->MARGIN_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 70
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 71
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 76
    :sswitch_1
    sget v1, Lcom/android/camera/ui/ProModeHintItemLayout;->MARGIN_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 77
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 79
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 80
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 85
    :sswitch_2
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 87
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 88
    sget v1, Lcom/android/camera/ui/ProModeHintItemLayout;->MARGIN_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 89
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 93
    :sswitch_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 96
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 97
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 98
    sget v1, Lcom/android/camera/ui/ProModeHintItemLayout;->MARGIN_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
