.class public Lcom/android/camera/ui/PreviewOverlay$WideModeControl;
.super Ljava/lang/Object;
.source "PreviewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PreviewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WideModeControl"
.end annotation


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e


# instance fields
.field private final WIDE_MODE_ICON_BOTTM_TO_BOTTM:I

.field private final WIDE_MODE_ICON_LEN:I

.field private final WIDE_MODE_ZOOM_TEXT_BOTTOM_TO_ICON_TOP:I

.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableUltraWideMode:Z

.field private mSquares:[Landroid/graphics/drawable/BitmapDrawable;

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mWideModeCenter:Landroid/graphics/Point;

.field private mWideModeCenterRect:Landroid/graphics/Rect;

.field private final mWideModeTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/camera/ui/PreviewOverlay;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PreviewOverlay;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 738
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-boolean v3, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mEnableUltraWideMode:Z

    .line 655
    iput v3, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mCurrentDegree:I

    .line 656
    iput v3, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mStartDegree:I

    .line 657
    iput v3, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mTargetDegree:I

    .line 658
    iput-boolean v3, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mClockwise:Z

    .line 660
    iput-wide v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mAnimationStartTime:J

    .line 661
    iput-wide v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mAnimationEndTime:J

    .line 740
    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->WIDE_MODE_ICON_BOTTM_TO_BOTTM:I

    .line 741
    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->WIDE_MODE_ICON_LEN:I

    .line 742
    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->WIDE_MODE_ZOOM_TEXT_BOTTOM_TO_ICON_TOP:I

    .line 745
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f02031c

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v3

    .line 746
    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f02030a

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v4

    iput-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mSquares:[Landroid/graphics/drawable/BitmapDrawable;

    .line 748
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeTextPaint:Landroid/graphics/Paint;

    .line 749
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 750
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 752
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 753
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 754
    return-void
.end method


# virtual methods
.method public ToggleWideMode()Z
    .locals 1

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mEnableUltraWideMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mEnableUltraWideMode:Z

    .line 783
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mEnableUltraWideMode:Z

    return v0

    .line 782
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "zoomValue"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 671
    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-nez v8, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-boolean v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mEnableUltraWideMode:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mSquares:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v9, 0x1

    aget-object v0, v8, v9

    .line 676
    .local v0, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    if-eqz v0, :cond_0

    .line 677
    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenterRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 679
    iget v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mCurrentDegree:I

    iget v9, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mTargetDegree:I

    if-eq v8, v9, :cond_2

    .line 680
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 681
    .local v4, "time":J
    iget-wide v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mAnimationEndTime:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_7

    .line 682
    iget-wide v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mAnimationStartTime:J

    sub-long v8, v4, v8

    long-to-int v2, v8

    .line 683
    .local v2, "deltaTime":I
    iget v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mStartDegree:I

    iget-boolean v9, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mClockwise:Z

    if-eqz v9, :cond_5

    .end local v2    # "deltaTime":I
    :goto_2
    mul-int/lit16 v9, v2, 0x10e

    div-int/lit16 v9, v9, 0x3e8

    add-int v1, v8, v9

    .line 685
    .local v1, "degree":I
    if-ltz v1, :cond_6

    rem-int/lit16 v1, v1, 0x168

    .line 686
    :goto_3
    iput v1, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mCurrentDegree:I

    .line 687
    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v8}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 692
    .end local v1    # "degree":I
    .end local v4    # "time":J
    :cond_2
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 694
    iget v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mCurrentDegree:I

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 695
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 696
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 698
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 699
    if-eqz p2, :cond_3

    iget-boolean v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mEnableUltraWideMode:Z

    if-nez v8, :cond_3

    .line 701
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 702
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, p2, v11, v9, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 704
    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v6, v8

    .line 705
    .local v6, "x":F
    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->WIDE_MODE_ICON_LEN:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->WIDE_MODE_ZOOM_TEXT_BOTTOM_TO_ICON_TOP:I

    int-to-float v9, v9

    sub-float v7, v8, v9

    .line 708
    .local v7, "y":F
    iget v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mCurrentDegree:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v9, v7, v9

    invoke-virtual {p1, v8, v6, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 709
    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 711
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 674
    .end local v0    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mSquares:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v8, v11

    goto/16 :goto_1

    .line 683
    .restart local v0    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "deltaTime":I
    .restart local v4    # "time":J
    :cond_5
    neg-int v2, v2

    goto :goto_2

    .line 685
    .end local v2    # "deltaTime":I
    .restart local v1    # "degree":I
    :cond_6
    rem-int/lit16 v8, v1, 0x168

    add-int/lit16 v1, v8, 0x168

    goto :goto_3

    .line 689
    .end local v1    # "degree":I
    :cond_7
    iget v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mTargetDegree:I

    iput v8, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mCurrentDegree:I

    goto :goto_4
.end method

.method public isInRect(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenterRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenterRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUltraWideModeEnabled()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mEnableUltraWideMode:Z

    return v0
.end method

.method public setCenterPoint(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 756
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v2}, Lcom/android/camera/ui/PreviewOverlay;->getWidth()I

    move-result v1

    .line 757
    .local v1, "parentWidth":I
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v2}, Lcom/android/camera/ui/PreviewOverlay;->getHeight()I

    move-result v0

    .line 758
    .local v0, "parentHeight":I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 759
    new-instance v2, Landroid/graphics/Point;

    add-int v3, p3, p1

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->WIDE_MODE_ICON_LEN:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v6}, Lcom/android/camera/ui/PreviewOverlay;->access$1800(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v6}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->WIDE_MODE_ICON_BOTTM_TO_BOTTM:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    .line 760
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->WIDE_MODE_ICON_LEN:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->WIDE_MODE_ICON_LEN:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->WIDE_MODE_ICON_LEN:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->WIDE_MODE_ICON_LEN:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenterRect:Landroid/graphics/Rect;

    .line 766
    :goto_0
    return-void

    .line 763
    :cond_0
    iput-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenter:Landroid/graphics/Point;

    .line 764
    iput-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mWideModeCenterRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 717
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 718
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 736
    :goto_1
    return-void

    .line 717
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 720
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mTargetDegree:I

    .line 721
    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mCurrentDegree:I

    iput v1, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mStartDegree:I

    .line 722
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mAnimationStartTime:J

    .line 724
    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mTargetDegree:I

    iget v2, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 725
    .local v0, "diff":I
    if-ltz v0, :cond_3

    .line 729
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 731
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mClockwise:Z

    .line 732
    iget-wide v2, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mAnimationStartTime:J

    .line 733
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0x10e

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mAnimationEndTime:J

    .line 735
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    goto :goto_1

    .line 725
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 731
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public setUltraWideModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 777
    iput-boolean p1, p0, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->mEnableUltraWideMode:Z

    .line 778
    return-void
.end method
