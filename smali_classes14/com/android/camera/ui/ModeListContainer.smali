.class public Lcom/android/camera/ui/ModeListContainer;
.super Lcom/android/camera/ui/RotateLayout;
.source "ModeListContainer.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mBackImage:Landroid/widget/ImageView;

.field private final mBackLandscapeStartPadding:I

.field private final mBackPortraitTopPadding:I

.field private mBottomBarOverlay:Z

.field private final mBottomBarPadding:I

.field protected mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

.field private final mChildMarginTop:I

.field private mDisplay:Landroid/view/Display;

.field private final mLandscapeTopPadding:I

.field private mModeList:Landroid/view/View;

.field private mNavigationBarH:I

.field private mOrientation:I

.field private final mPortraitTopPadding:I

.field private mPreviewArea:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "ModeListContainer"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/ModeListContainer;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListContainer;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeListContainer;->mPortraitTopPadding:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeListContainer;->mLandscapeTopPadding:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090034

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeListContainer;->mBottomBarPadding:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ModeListContainer;->mBackPortraitTopPadding:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeListContainer;->mBackLandscapeStartPadding:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeListContainer;->mChildMarginTop:I

    move-object v0, p1

    .line 47
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListContainer;->mDisplay:Landroid/view/Display;

    .line 48
    invoke-static {p1}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeListContainer;->mNavigationBarH:I

    .line 49
    return-void

    .line 42
    :cond_0
    const v0, 0x7f090033

    goto :goto_0
.end method

.method private setBackOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const v3, 0x7f020279

    const/4 v2, 0x0

    .line 115
    iget-object v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackImage:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 120
    :sswitch_0
    const v1, 0x800033

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    iget v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackPortraitTopPadding:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 122
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 123
    iget v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackLandscapeStartPadding:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 124
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 125
    iget-object v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 128
    :sswitch_1
    const v1, 0x800035

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    iget v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackLandscapeStartPadding:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 130
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 131
    iget v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackPortraitTopPadding:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 133
    iget-object v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 136
    :sswitch_2
    const v1, 0x800055

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 138
    iget v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackPortraitTopPadding:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 139
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 140
    iget v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackLandscapeStartPadding:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 141
    iget-object v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackImage:Landroid/widget/ImageView;

    const v2, 0x7f020278

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 144
    :sswitch_3
    const v1, 0x800053

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 146
    iget v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackLandscapeStartPadding:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 147
    iget v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackPortraitTopPadding:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 149
    iget-object v1, p0, Lcom/android/camera/ui/ModeListContainer;->mBackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private setChildOrientation(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v6, p0, Lcom/android/camera/ui/ModeListContainer;->mModeList:Landroid/view/View;

    if-nez v6, :cond_0

    .line 112
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ui/ModeListContainer;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/ui/ModeListContainer;->mPreviewArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v2, v6

    .line 76
    .local v2, "marginSide":I
    :goto_1
    iget-object v6, p0, Lcom/android/camera/ui/ModeListContainer;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/ui/ModeListContainer;->mPreviewArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v6

    .line 77
    .local v1, "marginBottom":I
    :goto_2
    iget-object v6, p0, Lcom/android/camera/ui/ModeListContainer;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/ui/ModeListContainer;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v6}, Lcom/android/camera/CaptureLayoutHelper;->shouldOverlayBottomBar()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 78
    iget v6, p0, Lcom/android/camera/ui/ModeListContainer;->mBottomBarPadding:I

    sub-int/2addr v1, v6

    .line 81
    :cond_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 82
    .local v4, "size":Landroid/graphics/Point;
    iget-object v6, p0, Lcom/android/camera/ui/ModeListContainer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 83
    iget v0, v4, Landroid/graphics/Point;->y:I

    .line 84
    .local v0, "height":I
    iget-object v6, p0, Lcom/android/camera/ui/ModeListContainer;->mModeList:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 111
    :goto_3
    iget-object v5, p0, Lcom/android/camera/ui/ModeListContainer;->mModeList:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v0    # "height":I
    .end local v1    # "marginBottom":I
    .end local v2    # "marginSide":I
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "size":Landroid/graphics/Point;
    :cond_2
    move v2, v5

    .line 75
    goto :goto_1

    .restart local v2    # "marginSide":I
    :cond_3
    move v1, v5

    .line 76
    goto :goto_2

    .line 87
    .restart local v0    # "height":I
    .restart local v1    # "marginBottom":I
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "size":Landroid/graphics/Point;
    :sswitch_0
    iget v6, p0, Lcom/android/camera/ui/ModeListContainer;->mPortraitTopPadding:I

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 88
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 89
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 90
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    .line 93
    :sswitch_1
    sub-int v6, v0, v1

    iget v7, p0, Lcom/android/camera/ui/ModeListContainer;->mChildMarginTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/ModeListContainer;->mNavigationBarH:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 94
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 95
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 96
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    .line 99
    :sswitch_2
    iget v6, p0, Lcom/android/camera/ui/ModeListContainer;->mLandscapeTopPadding:I

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 100
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 101
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 102
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    .line 105
    :sswitch_3
    iget v6, p0, Lcom/android/camera/ui/ModeListContainer;->mChildMarginTop:I

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 106
    iget v6, p0, Lcom/android/camera/ui/ModeListContainer;->mLandscapeTopPadding:I

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 107
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 108
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    .line 85
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
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 54
    const v0, 0x7f0f018c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListContainer;->mModeList:Landroid/view/View;

    .line 55
    const v0, 0x7f0f018d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/ModeListContainer;->mBackImage:Landroid/widget/ImageView;

    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ModeListContainer;->setOrientation(IZ)V

    .line 57
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->onMeasure(II)V

    .line 62
    iget v0, p0, Lcom/android/camera/ui/ModeListContainer;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ModeListContainer;->setOrientation(IZ)V

    .line 63
    return-void
.end method

.method public setCaptureLayoutHelper(Lcom/android/camera/CaptureLayoutHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/android/camera/CaptureLayoutHelper;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/camera/ui/ModeListContainer;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 160
    invoke-virtual {p1}, Lcom/android/camera/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListContainer;->mPreviewArea:Landroid/graphics/RectF;

    .line 161
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 67
    iput p1, p0, Lcom/android/camera/ui/ModeListContainer;->mOrientation:I

    .line 68
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeListContainer;->setChildOrientation(I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeListContainer;->setBackOrientation(I)V

    .line 71
    return-void
.end method
