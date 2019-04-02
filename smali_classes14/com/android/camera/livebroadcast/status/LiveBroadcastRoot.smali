.class public Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;
.super Lcom/android/camera/ui/RotateLayout;
.source "LiveBroadcastRoot.java"


# instance fields
.field private mCommentBackground:Landroid/widget/FrameLayout;

.field private mCommentExtraBottomMargin:I

.field private mCommentHight:I

.field private mCommentLandscapeWidth:I

.field private mCommentPortraitBottomMargin:I

.field private mCommentView:Landroid/support/v7/widget/RecyclerView;

.field private mOrientation:I

.field private mPreviewTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mOrientation:I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentHight:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentLandscapeWidth:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentPortraitBottomMargin:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentExtraBottomMargin:I

    .line 32
    return-void
.end method

.method private setCommentBackgroundOrientation(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x14

    const/16 v4, 0xc

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 97
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentBackground:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 138
    :goto_1
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 102
    :sswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 104
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 106
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 107
    iget v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentHight:I

    iget v2, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentPortraitBottomMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 108
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 111
    :sswitch_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 113
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 114
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 115
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 116
    iget v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentHight:I

    iget v2, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentExtraBottomMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 117
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 120
    :sswitch_2
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 122
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 123
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 124
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 125
    iget v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentHight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 126
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 129
    :sswitch_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 132
    iget v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mPreviewTopMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 133
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 134
    iget v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentHight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 135
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private setCommentOrientation(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x15

    const/16 v4, 0x14

    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 56
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 61
    :sswitch_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 63
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 65
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 66
    iget v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentPortraitBottomMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 69
    :sswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 71
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 73
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 74
    iget v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentExtraBottomMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 77
    :sswitch_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 79
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    iget v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentPortraitBottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 81
    iget v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentLandscapeWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 82
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 85
    :sswitch_3
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 88
    iget v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mPreviewTopMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 89
    iget v1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentLandscapeWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 90
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 37
    const v0, 0x7f0f012e

    invoke-virtual {p0, v0}, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentBackground:Landroid/widget/FrameLayout;

    .line 38
    const v0, 0x7f0f012f

    invoke-virtual {p0, v0}, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mCommentView:Landroid/support/v7/widget/RecyclerView;

    .line 39
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->onMeasure(II)V

    .line 44
    iget v0, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->setOrientation(IZ)V

    .line 45
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 49
    iput p1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mOrientation:I

    .line 50
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->setCommentOrientation(I)V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->setCommentBackgroundOrientation(I)V

    .line 53
    return-void
.end method

.method public setPreviewTopMargin(I)V
    .locals 0
    .param p1, "previewTopMargin"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/android/camera/livebroadcast/status/LiveBroadcastRoot;->mPreviewTopMargin:I

    .line 143
    return-void
.end method
