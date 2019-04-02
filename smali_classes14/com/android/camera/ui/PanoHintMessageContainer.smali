.class public Lcom/android/camera/ui/PanoHintMessageContainer;
.super Lcom/android/camera/ui/RotateLayout;
.source "PanoHintMessageContainer.java"


# static fields
.field private static MARGIN_BOTTOM_IN_PX:I

.field private static MARGIN_HORIZONTAL_IN_PX:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static extraMargin:I


# instance fields
.field private mChild:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PanoHintContainer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/PanoHintMessageContainer;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/PanoHintMessageContainer;->extraMargin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_BOTTOM_IN_PX:I

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_HORIZONTAL_IN_PX:I

    .line 22
    return-void
.end method

.method private removeRules(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 88
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 89
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 90
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 91
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 92
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 27
    const v0, 0x7f0f01bb

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PanoHintMessageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoHintMessageContainer;->mChild:Landroid/view/View;

    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/PanoHintMessageContainer;->setOrientation(IZ)V

    .line 29
    return-void
.end method

.method public setExtraMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 95
    sput p1, Lcom/android/camera/ui/PanoHintMessageContainer;->extraMargin:I

    .line 96
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xe

    .line 34
    iget-object v1, p0, Lcom/android/camera/ui/PanoHintMessageContainer;->mChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/android/camera/ui/PanoHintMessageContainer;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 37
    .local v0, "viewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    invoke-direct {p0, v0}, Lcom/android/camera/ui/PanoHintMessageContainer;->removeRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/PanoHintMessageContainer;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .end local v0    # "viewParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 85
    return-void

    .line 46
    .restart local v0    # "viewParam":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_0
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_BOTTOM_IN_PX:I

    sget v2, Lcom/android/camera/ui/PanoHintMessageContainer;->extraMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 47
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 50
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 54
    :sswitch_1
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_BOTTOM_IN_PX:I

    sget v2, Lcom/android/camera/ui/PanoHintMessageContainer;->extraMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 57
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 58
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 62
    :sswitch_2
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_BOTTOM_IN_PX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 65
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 66
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 69
    :sswitch_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_BOTTOM_IN_PX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 72
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 73
    sget v1, Lcom/android/camera/ui/PanoHintMessageContainer;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
