.class public Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;
.super Lcom/android/camera/ui/RotateLayout;
.source "ProModeTutorialRotateLayout.java"


# static fields
.field private static final BUTTON_VIEW_MARGIN_BOTTOM_LANDSCAPE:F = 52.5f

.field private static final BUTTON_VIEW_MARGIN_LEFT_LANDSCAPE:F = 385.0f

.field private static final BUTTON_VIEW_MARGIN_RIGHT_LANDSCAPE:F = 60.0f

.field private static final INDICATOR_VIEW_MARGIN_TOP_LANDSCAPE:F = 222.0f

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final DENSITY_SCALE:F

.field private mButtonRoot:Landroid/view/View;

.field private mButtonViewMarginBottomLandscape:I

.field private mButtonViewMarginBottomPortrait:I

.field private mButtonViewMarginLeftLandscape:I

.field private mButtonViewMarginLeftPortrait:I

.field private mButtonViewMarginRightLandscape:I

.field private mButtonViewMarginRightPortrait:I

.field private mButtonViewMarginTopLandscape:I

.field private mButtonViewMarginTopPortrait:I

.field private mContext:Landroid/content/Context;

.field private mImageMarginLeft:I

.field private mImageMarginTop:I

.field private mIndicator:Landroid/view/View;

.field private mIndicatorMarginLeftLandscape:I

.field private mIndicatorMarginTopLandscape:I

.field private mIndicatorMarginTopPortrait:I

.field private mOrientation:I

.field private mTextViewMarginLeftLandScape:I

.field private mTextViewMarginLeftPortrait:I

.field private mTextViewMarginRightLandScape:I

.field private mTextViewMarginRightPortrait:I

.field private mTextViewMarginTopLandScape:I

.field private mTextViewMarginTopPortrait:I

.field private mTutorialImageRootView:Landroid/view/View;

.field private mTutorialPanel1View:Landroid/view/View;

.field private mTutorialPanel2View:Landroid/view/View;

.field private mTutorialTextView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ProModeTutorialRotateLayout"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->DENSITY_SCALE:F

    .line 60
    iput-object p1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private setButtonOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonRoot:Landroid/view/View;

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 225
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 239
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 228
    :sswitch_0
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginLeftPortrait:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 229
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginRightPortrait:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 230
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginTopPortrait:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 234
    :sswitch_1
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginLeftLandscape:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 235
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginRightLandscape:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 236
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginTopLandscape:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 225
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setImageOrientation(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/16 v4, 0xf

    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialImageRootView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialImageRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 140
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialImageRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 143
    :sswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 144
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mImageMarginTop:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 146
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 150
    :sswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 151
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mImageMarginLeft:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 153
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setIndicatorOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mIndicator:Landroid/view/View;

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 208
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 218
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 211
    :sswitch_0
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mIndicatorMarginTopPortrait:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 215
    :sswitch_1
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mIndicatorMarginTopLandscape:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setPanel1Orientation(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/16 v4, 0xe

    const/16 v3, 0xa

    const/16 v2, 0x9

    .line 118
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialPanel1View:Landroid/view/View;

    if-nez v1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialPanel1View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 120
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 134
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialPanel1View:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 123
    :sswitch_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 124
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 129
    :sswitch_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 131
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setPanel2Orientation(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialPanel2View:Landroid/view/View;

    if-nez v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialPanel2View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 162
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 182
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialPanel2View:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 165
    :sswitch_0
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 166
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 168
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    const v1, 0x7f0f01d8

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 174
    :sswitch_1
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 175
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 176
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 177
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 178
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    const v1, 0x7f0f01d8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setTextOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialTextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialTextView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 188
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 202
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialTextView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 191
    :sswitch_0
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTextViewMarginTopPortrait:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 192
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTextViewMarginLeftPortrait:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 193
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTextViewMarginRightPortrait:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 197
    :sswitch_1
    iget v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTextViewMarginTopLandScape:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 198
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 199
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 67
    const v0, 0x7f0f01d9

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialImageRootView:Landroid/view/View;

    .line 68
    const v0, 0x7f0f01db

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialTextView:Landroid/view/View;

    .line 69
    const v0, 0x7f0f01d8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialPanel1View:Landroid/view/View;

    .line 70
    const v0, 0x7f0f01da

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTutorialPanel2View:Landroid/view/View;

    .line 71
    const v0, 0x7f0f01dc

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mIndicator:Landroid/view/View;

    .line 72
    const v0, 0x7f0f01e1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonRoot:Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginTopPortrait:I

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginBottomPortrait:I

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginLeftPortrait:I

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginRightPortrait:I

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginTopLandscape:I

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginBottomLandscape:I

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginLeftLandscape:I

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mButtonViewMarginRightLandscape:I

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mImageMarginTop:I

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mImageMarginLeft:I

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTextViewMarginTopPortrait:I

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTextViewMarginLeftPortrait:I

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTextViewMarginRightPortrait:I

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTextViewMarginTopLandScape:I

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTextViewMarginRightLandScape:I

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mTextViewMarginLeftLandScape:I

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mIndicatorMarginTopPortrait:I

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mIndicatorMarginLeftLandscape:I

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mIndicatorMarginTopLandscape:I

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->setOrientation(IZ)V

    .line 98
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->onMeasure(II)V

    .line 103
    iget v0, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->setOrientation(IZ)V

    .line 104
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 108
    iput p1, p0, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->mOrientation:I

    .line 109
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->setImageOrientation(I)V

    .line 111
    invoke-direct {p0, p1}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->setPanel1Orientation(I)V

    .line 112
    invoke-direct {p0, p1}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->setPanel2Orientation(I)V

    .line 113
    invoke-direct {p0, p1}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->setTextOrientation(I)V

    .line 114
    invoke-direct {p0, p1}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->setIndicatorOrientation(I)V

    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/ui/promode/ProModeTutorialRotateLayout;->setButtonOrientation(I)V

    .line 116
    return-void
.end method
