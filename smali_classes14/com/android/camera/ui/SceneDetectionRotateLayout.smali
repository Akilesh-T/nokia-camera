.class public Lcom/android/camera/ui/SceneDetectionRotateLayout;
.super Landroid/widget/FrameLayout;
.source "SceneDetectionRotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static BARCODE_MARGIN_VERTICAL_IN_DP:I

.field private static MARGIN_HORIZONTAL_IN_DP:I

.field private static MARGIN_VERTICAL_IN_DP:I

.field private static MARGIN_WATERMARK_IN_DP:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOrientation:I

.field private mSceneDetectionLayout:Landroid/view/View;

.field private mSceneDetectionRoot:Landroid/view/View;

.field private mWatermarkShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SceneDetectionRotateLayout"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-object p1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mContext:Landroid/content/Context;

    .line 66
    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->setBackgroundResource(I)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/SceneDetectionRotateLayout;->MARGIN_HORIZONTAL_IN_DP:I

    .line 69
    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/SceneDetectionRotateLayout;->MARGIN_VERTICAL_IN_DP:I

    .line 70
    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/SceneDetectionRotateLayout;->BARCODE_MARGIN_VERTICAL_IN_DP:I

    .line 71
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Lcom/android/camera/ui/SceneDetectionRotateLayout;->MARGIN_WATERMARK_IN_DP:I

    .line 72
    return-void
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 77
    const v0, 0x7f0f01fb

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 80
    const v0, 0x7f0f01fc

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    .line 81
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "change"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 96
    sub-int v1, p4, p2

    .line 97
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 98
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 101
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 105
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 113
    const/4 v1, 0x0

    .local v1, "w":I
    const/4 v0, 0x0

    .line 114
    .local v0, "h":I
    iget v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 128
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->setMeasuredDimension(II)V

    .line 130
    iget v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 148
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 150
    return-void

    .line 117
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->measureChild(Landroid/view/View;II)V

    .line 118
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 120
    goto :goto_0

    .line 123
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->measureChild(Landroid/view/View;II)V

    .line 124
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 132
    :sswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 133
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 136
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 137
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 140
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 141
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 144
    :sswitch_5
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 145
    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 130
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 155
    sget-object v0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation-mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    rem-int/lit16 p1, p1, 0x168

    .line 157
    iget v0, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mOrientation:I

    .line 159
    iget-boolean v0, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mWatermarkShow:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->updateSceneMargin(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->requestLayout()V

    goto :goto_0
.end method

.method public updateSceneMargin(Z)V
    .locals 6
    .param p1, "watermarkShow"    # Z

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xa

    const/4 v2, 0x0

    .line 164
    iput-boolean p1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mWatermarkShow:Z

    .line 165
    iget v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 167
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mWatermarkShow:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/camera/ui/SceneDetectionRotateLayout;->MARGIN_WATERMARK_IN_DP:I

    :goto_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 170
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 172
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 173
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 169
    goto :goto_1

    .line 180
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 182
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 183
    iget-boolean v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mWatermarkShow:Z

    if-eqz v1, :cond_2

    sget v2, Lcom/android/camera/ui/SceneDetectionRotateLayout;->MARGIN_WATERMARK_IN_DP:I

    :cond_2
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 184
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 185
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 191
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/android/camera/ui/SceneDetectionRotateLayout;->MARGIN_VERTICAL_IN_DP:I

    iget-boolean v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mWatermarkShow:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/android/camera/ui/SceneDetectionRotateLayout;->MARGIN_WATERMARK_IN_DP:I

    :goto_2
    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 194
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 195
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 196
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 193
    goto :goto_2

    .line 202
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 205
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/android/camera/ui/SceneDetectionRotateLayout;->MARGIN_VERTICAL_IN_DP:I

    iget-boolean v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mWatermarkShow:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/android/camera/ui/SceneDetectionRotateLayout;->MARGIN_WATERMARK_IN_DP:I

    :goto_3
    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 206
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 207
    sget v1, Lcom/android/camera/ui/SceneDetectionRotateLayout;->MARGIN_VERTICAL_IN_DP:I

    iget-object v2, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 208
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 209
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 210
    iget-object v1, p0, Lcom/android/camera/ui/SceneDetectionRotateLayout;->mSceneDetectionLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 205
    goto :goto_3

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
