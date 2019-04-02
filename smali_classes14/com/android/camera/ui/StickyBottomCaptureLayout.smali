.class public Lcom/android/camera/ui/StickyBottomCaptureLayout;
.super Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;
.source "StickyBottomCaptureLayout.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mBottomBar:Landroid/view/View;

.field private mModeOptionsListener:Lcom/android/camera/widget/ModeOptions$Listener;

.field private mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

.field private mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StickyBotCapLayout"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;-><init>(Lcom/android/camera/ui/StickyBottomCaptureLayout;)V

    iput-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mModeOptionsListener:Lcom/android/camera/widget/ModeOptions$Listener;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/StickyBottomCaptureLayout;)Lcom/android/camera/CaptureLayoutHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/StickyBottomCaptureLayout;)Lcom/android/camera/widget/ModeOptionsOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/StickyBottomCaptureLayout;Landroid/graphics/RectF;ZF)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/StickyBottomCaptureLayout;
    .param p1, "x1"    # Landroid/graphics/RectF;
    .param p2, "x2"    # Z
    .param p3, "x3"    # F

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->getRoundedThumbnailPosition(Landroid/graphics/RectF;ZF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/StickyBottomCaptureLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/StickyBottomCaptureLayout;
    .param p1, "x1"    # F

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->animateCaptureIndicatorToY(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/StickyBottomCaptureLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/StickyBottomCaptureLayout;
    .param p1, "x1"    # F

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->animateCaptureIndicatorToX(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/StickyBottomCaptureLayout;)Lcom/android/camera/CaptureLayoutHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/StickyBottomCaptureLayout;)Lcom/android/camera/widget/RoundedThumbnailView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    return-object v0
.end method

.method private animateCaptureIndicatorToX(F)V
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/motion/InterpolatorHelper;->getLinearOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 180
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    iget-object v1, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v1}, Lcom/android/camera/widget/RoundedThumbnailView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    .line 181
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 183
    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/camera/ui/StickyBottomCaptureLayout$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/StickyBottomCaptureLayout$2;-><init>(Lcom/android/camera/ui/StickyBottomCaptureLayout;)V

    .line 184
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 191
    return-void
.end method

.method private animateCaptureIndicatorToY(F)V
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/motion/InterpolatorHelper;->getLinearOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 196
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    iget-object v1, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v1}, Lcom/android/camera/widget/RoundedThumbnailView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    .line 197
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 198
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 199
    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/camera/ui/StickyBottomCaptureLayout$3;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/StickyBottomCaptureLayout$3;-><init>(Lcom/android/camera/ui/StickyBottomCaptureLayout;)V

    .line 200
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 207
    return-void
.end method

.method private getRoundedThumbnailPosition(Landroid/graphics/RectF;ZF)Landroid/graphics/PointF;
    .locals 13
    .param p1, "uncoveredPreviewRect"    # Landroid/graphics/RectF;
    .param p2, "isModeOptionsHidden"    # Z
    .param p3, "modeOptionsToggleWidth"    # F

    .prologue
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0900d4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 134
    .local v7, "threeDotsButtonDiameter":F
    invoke-virtual {p0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090201

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 135
    .local v8, "threeDotsButtonPadding":F
    invoke-virtual {p0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0900cc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 137
    .local v1, "modeOptionsHeight":F
    iget-object v11, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v11}, Lcom/android/camera/widget/RoundedThumbnailView;->getMeasuredWidth()I

    move-result v11

    int-to-float v6, v11

    .line 138
    .local v6, "roundedThumbnailViewSize":F
    iget-object v11, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v11}, Lcom/android/camera/widget/RoundedThumbnailView;->getThumbnailFinalDiameter()F

    move-result v4

    .line 139
    .local v4, "roundedThumbnailFinalSize":F
    iget-object v11, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v11}, Lcom/android/camera/widget/RoundedThumbnailView;->getThumbnailPadding()F

    move-result v5

    .line 143
    .local v5, "roundedThumbnailViewPadding":F
    sub-float v11, v6, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float v3, v11, v12

    .line 145
    .local v3, "radiusDiffBetweenViewAndThumbnail":F
    add-float v11, v5, v4

    add-float v0, v11, v3

    .line 148
    .local v0, "distanceFromModeOptions":F
    invoke-virtual {p0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v2, v11, Landroid/content/res/Configuration;->orientation:I

    .line 150
    .local v2, "orientation":I
    const/4 v9, 0x0

    .line 151
    .local v9, "x":F
    const/4 v10, 0x0

    .line 152
    .local v10, "y":F
    const/4 v11, 0x1

    if-ne v2, v11, :cond_0

    .line 154
    iget v11, p1, Landroid/graphics/RectF;->right:F

    sub-float v9, v11, v0

    .line 156
    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    .line 157
    if-eqz p2, :cond_2

    .line 158
    add-float v11, v8, v7

    sub-float/2addr v10, v11

    .line 162
    :goto_0
    sub-float/2addr v10, v0

    .line 164
    :cond_0
    const/4 v11, 0x2

    if-ne v2, v11, :cond_1

    .line 165
    if-eqz p2, :cond_3

    .line 166
    iget v11, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v8

    sub-float v9, v11, p3

    .line 170
    :goto_1
    sub-float/2addr v9, v0

    .line 171
    iget v11, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v5

    sub-float v10, v11, v3

    .line 174
    :cond_1
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v11

    .line 160
    :cond_2
    sub-float/2addr v10, v1

    goto :goto_0

    .line 168
    :cond_3
    iget v11, p1, Landroid/graphics/RectF;->right:F

    sub-float v9, v11, v1

    goto :goto_1
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 86
    const v0, 0x7f0f01ea

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/RoundedThumbnailView;

    iput-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    .line 87
    const v0, 0x7f0f019f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/ModeOptionsOverlay;

    iput-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mModeOptionsListener:Lcom/android/camera/widget/ModeOptions$Listener;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptionsOverlay;->setModeOptionsListener(Lcom/android/camera/widget/ModeOptions$Listener;)V

    .line 89
    const v0, 0x7f0f020e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mBottomBar:Landroid/view/View;

    .line 90
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 94
    iget-object v3, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    if-nez v3, :cond_0

    .line 95
    sget-object v3, Lcom/android/camera/ui/StickyBottomCaptureLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Capture layout helper needs to be set first."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v3}, Lcom/android/camera/CaptureLayoutHelper;->getUncoveredPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 100
    .local v2, "uncoveredPreviewRect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/widget/ModeOptionsOverlay;->layout(IIII)V

    .line 104
    iget-object v3, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    .line 106
    invoke-virtual {v3}, Lcom/android/camera/widget/ModeOptionsOverlay;->isModeOptionsHidden()Z

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    .line 107
    invoke-virtual {v4}, Lcom/android/camera/widget/ModeOptionsOverlay;->getModeOptionsToggleWidth()F

    move-result v4

    .line 104
    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->getRoundedThumbnailPosition(Landroid/graphics/RectF;ZF)Landroid/graphics/PointF;

    move-result-object v1

    .line 108
    .local v1, "roundedThumbnailViewPosition":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    .line 111
    invoke-virtual {v7}, Lcom/android/camera/widget/RoundedThumbnailView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mRoundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    .line 112
    invoke-virtual {v8}, Lcom/android/camera/widget/RoundedThumbnailView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 108
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/widget/RoundedThumbnailView;->layout(IIII)V

    .line 115
    iget-object v3, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v3}, Lcom/android/camera/CaptureLayoutHelper;->getBottomBarRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 116
    .local v0, "bottomBarRect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->mBottomBar:Landroid/view/View;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method
