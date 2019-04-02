.class public Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;
.super Landroid/view/ViewGroup;
.source "WatermarkPagerRotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout$OnPageSeletectedListener;
    }
.end annotation


# static fields
.field private static MARGIN_HORIZONTAL_IN_DP:I

.field private static MARGIN_MANUAL_CONTROL_BAR_MARGIN_IN_DP:I

.field private static MARGIN_SQUARE_IN_DP:I

.field private static MARGIN_VERTICAL_IN_DP:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mCameraActivity:Lcom/android/camera/CameraActivity;

.field private mCloseImageView:Landroid/widget/ImageView;

.field private mCloseLayout:Landroid/widget/LinearLayout;

.field private mControlBottomMargin:I

.field private mControlEndMargin:I

.field private mControlStartMargin:I

.field private mControlTopMargin:I

.field private mCurrentIndex:I

.field private mExtraControlTopMargin:I

.field private mIsReverse:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNotchEnable:Z

.field private mOrientation:I

.field private mPageChangedListener:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout$OnPageSeletectedListener;

.field private mPreviewArea:Landroid/graphics/RectF;

.field private mPreviousButton:Landroid/widget/ImageButton;

.field private mWatermarkControlRoot:Landroid/widget/RelativeLayout;

.field private mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

.field private mWatermarkPagerIndicator:Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;

.field private mWatermarkPagerRoot:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Watermark.PagerRotateLayout"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mExtraControlTopMargin:I

    .line 54
    iput-boolean v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNotchEnable:Z

    .line 168
    iput-boolean v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mIsReverse:Z

    .line 63
    sget-object v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "WatermarkPagerRotateLayout initial"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setBackgroundResource(I)V

    move-object v1, p1

    .line 65
    check-cast v1, Lcom/android/camera/CameraActivity;

    iput-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCameraActivity:Lcom/android/camera/CameraActivity;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sput v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_HORIZONTAL_IN_DP:I

    .line 68
    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_VERTICAL_IN_DP:I

    .line 69
    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_MANUAL_CONTROL_BAR_MARGIN_IN_DP:I

    .line 71
    const v1, 0x7f090252

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_SQUARE_IN_DP:I

    .line 73
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->updateTopMargin()V

    .line 74
    return-void
.end method

.method private updateButtonVisible(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 375
    if-nez p1, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 378
    :cond_2
    sget-object v0, Lcom/android/camera/watermark/WatermarkViewData;->STYLE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateControlRootMargin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 303
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkControlRoot:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkControlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 307
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 308
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 309
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 310
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 311
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 312
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkControlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 316
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 342
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkControlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 318
    :sswitch_0
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlTopMargin:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 319
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlBottomMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 320
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlStartMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 321
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlEndMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 324
    :sswitch_1
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlStartMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 325
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlEndMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 326
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlBottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 327
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlTopMargin:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 330
    :sswitch_2
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlBottomMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 331
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlTopMargin:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 332
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlEndMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 333
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlStartMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 336
    :sswitch_3
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlEndMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 337
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 338
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlTopMargin:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 339
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlBottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private updateTopMargin()V
    .locals 4

    .prologue
    const v1, 0x7f0900cb

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->hasNotchFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->settingNotchEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNotchEnable:Z

    .line 189
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mExtraControlTopMargin:I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNotchEnable:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mExtraControlTopMargin:I

    goto :goto_0
.end method

.method private updateWatermarkMargin()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v2, 0x0

    .line 197
    sget-object v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWatermarkMargin  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->updateControlRootMargin()V

    .line 199
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 245
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7

    .line 246
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    .line 247
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 248
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_SQUARE_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 249
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 250
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 251
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 252
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 202
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 204
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_VERTICAL_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 205
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 209
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_VERTICAL_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 210
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 215
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 217
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_HORIZONTAL_IN_DP:I

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mExtraControlTopMargin:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 219
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 223
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_HORIZONTAL_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 224
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 230
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    .line 231
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 232
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_HORIZONTAL_IN_DP:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 233
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_HORIZONTAL_IN_DP:I

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mExtraControlTopMargin:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 238
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 257
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_1

    .line 259
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 261
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_HORIZONTAL_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 262
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 263
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 264
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 265
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 269
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_4
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 271
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 272
    sget v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_HORIZONTAL_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 273
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 274
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 275
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 279
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 281
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_VERTICAL_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 282
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 283
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 284
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 285
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 289
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_6
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 292
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_VERTICAL_IN_DP:I

    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlEndMargin:I

    if-lez v1, :cond_8

    sget v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->MARGIN_MANUAL_CONTROL_BAR_MARGIN_IN_DP:I

    :goto_2
    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 293
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 294
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 295
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 296
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_8
    move v1, v2

    .line 292
    goto :goto_2

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_2
    .end sparse-switch

    .line 257
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public getCurreWatermarkFragment()Lcom/android/camera/ui/watermark/WatermarkFragment;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    invoke-virtual {v0}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->getCurreWatermarkFragment()Lcom/android/camera/ui/watermark/WatermarkFragment;

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 457
    .local v2, "viewId":I
    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    invoke-virtual {v4}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->getCurrentItem()I

    move-result v0

    .line 458
    .local v0, "currentId":I
    const v4, 0x7f0f022d

    if-ne v2, v4, :cond_1

    .line 459
    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lcom/android/camera/watermark/WatermarkViewData;->STYLE:[I

    array-length v6, v6

    rem-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setCurrentItem(I)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    const v4, 0x7f0f022c

    if-ne v2, v4, :cond_2

    .line 461
    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    add-int/lit8 v5, v0, -0x1

    sget-object v6, Lcom/android/camera/watermark/WatermarkViewData;->STYLE:[I

    array-length v6, v6

    rem-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 462
    :cond_2
    const v4, 0x7f0f022b

    if-ne v2, v4, :cond_0

    .line 463
    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getWatermarkManager()Lcom/android/camera/WatermarkManager;

    move-result-object v3

    .line 464
    .local v3, "watermarkManager":Lcom/android/camera/WatermarkManager;
    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 465
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v4, "default_scope"

    const-string v5, "pref_watermark_show_key"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 466
    invoke-virtual {v3}, Lcom/android/camera/WatermarkManager;->removeWatermark()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 79
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate-mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    const v0, 0x7f0f0226

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 83
    const v0, 0x7f0f022e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerIndicator:Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;

    .line 84
    const v0, 0x7f0f0227

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkViewPager;

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setCurrentItem(I)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 87
    const v0, 0x7f0f0228

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkControlRoot:Landroid/widget/RelativeLayout;

    .line 88
    const v0, 0x7f0f022c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f0f022d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v0, 0x7f0f0229

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseLayout:Landroid/widget/LinearLayout;

    .line 93
    const v0, 0x7f0f022b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseImageView:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCloseImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->updateButtonVisible(I)V

    .line 96
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->updateWatermarkMargin()V

    .line 97
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "change"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v6, 0x0

    .line 102
    sget-object v3, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLayout-mOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    sub-int v2, p4, p2

    .line 105
    .local v2, "width":I
    sub-int v1, p5, p3

    .line 106
    .local v1, "height":I
    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    sparse-switch v3, :sswitch_data_0

    .line 117
    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mIsReverse:Z

    if-eqz v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    const v4, 0x7f0f0230

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 123
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mIsReverse:Z

    .line 125
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void

    .line 109
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v6, v2, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0

    .line 113
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v6, v1, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0

    .line 106
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

    .line 129
    const/4 v1, 0x0

    .local v1, "w":I
    const/4 v0, 0x0

    .line 130
    .local v0, "h":I
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 144
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setMeasuredDimension(II)V

    .line 146
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 164
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 166
    return-void

    .line 133
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->measureChild(Landroid/view/View;II)V

    .line 134
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 135
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 136
    goto :goto_0

    .line 139
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->measureChild(Landroid/view/View;II)V

    .line 140
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 141
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 148
    :sswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 149
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_1

    .line 152
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 153
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_1

    .line 156
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 157
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_1

    .line 160
    :sswitch_5
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 161
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_1

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 146
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 360
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 364
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 368
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerIndicator:Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPagerIndicator:Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->setCurrentSeletedPage(I)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPageChangedListener:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout$OnPageSeletectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPageChangedListener:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout$OnPageSeletectedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout$OnPageSeletectedListener;->onChanged(I)V

    .line 371
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->updateButtonVisible(I)V

    .line 372
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->hasNotchFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNotchEnable:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/ProductModelUtil;->settingNotchEnable(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->settingNotchEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mNotchEnable:Z

    .line 489
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->invalidate()V

    .line 490
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->updateTopMargin()V

    .line 491
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->updateWatermarkMargin()V

    .line 494
    :cond_0
    return-void
.end method

.method public setBottomBarMargin(IIII)V
    .locals 1
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "startMargin"    # I
    .param p4, "endMargin"    # I

    .prologue
    .line 346
    iput p1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlTopMargin:I

    .line 347
    iput p2, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlBottomMargin:I

    .line 348
    iput p3, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlStartMargin:I

    .line 349
    iput p4, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mControlEndMargin:I

    .line 352
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->updateWatermarkMargin()V

    .line 354
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    invoke-virtual {v0}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->updateWatermarkPosition()V

    .line 356
    :cond_0
    return-void
.end method

.method public setCameraFacing(Z)V
    .locals 1
    .param p1, "isFrontFacing"    # Z

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setCameraFacing(Z)V

    .line 442
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mCurrentIndex:I

    .line 472
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setCurrentItem(I)V

    .line 474
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 405
    sget-object v1, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnabled => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    if-nez p1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->getCurreWatermarkFragment()Lcom/android/camera/ui/watermark/WatermarkFragment;

    move-result-object v0

    .line 408
    .local v0, "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->resetWatermarkViewRootMovingFlag()V

    .line 412
    .end local v0    # "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 413
    return-void
.end method

.method public setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V
    .locals 1
    .param p1, "freeTextInfoData"    # Lcom/android/camera/watermark/FreeTextInfoData;

    .prologue
    .line 431
    if-nez p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V

    goto :goto_0
.end method

.method public setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V
    .locals 1
    .param p1, "locationInfoData"    # Lcom/android/camera/watermark/LocationInfoData;

    .prologue
    .line 423
    if-nez p1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V

    goto :goto_0
.end method

.method public setOnEditActionListener(Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;

    .prologue
    .line 445
    if-nez p1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setOnEditActionListener(Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "mWatermarkPager.setOnTouchListener fail => (mWatermarkPager == null)"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 173
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 174
    rem-int/lit16 p1, p1, 0x168

    .line 175
    iget v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mIsReverse:Z

    .line 181
    :goto_1
    iput p1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mOrientation:I

    .line 182
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->updateWatermarkMargin()V

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->requestLayout()V

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mIsReverse:Z

    goto :goto_1
.end method

.method public setPageChangedListener(Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout$OnPageSeletectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout$OnPageSeletectedListener;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPageChangedListener:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout$OnPageSeletectedListener;

    .line 482
    return-void
.end method

.method public setPreviewArea(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "area"    # Landroid/graphics/RectF;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mPreviewArea:Landroid/graphics/RectF;

    .line 499
    return-void
.end method

.method public setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V
    .locals 1
    .param p1, "watermarkInfoData"    # Lcom/android/camera/watermark/WatermarkInfoData;

    .prologue
    .line 416
    if-nez p1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->mWatermarkPager:Lcom/android/camera/ui/watermark/WatermarkViewPager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewPager;->setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V

    goto :goto_0
.end method
