.class public Lcom/android/camera/ui/AdvancedModeItem;
.super Lcom/android/camera/ui/operation/ModeSelectorItemOperation;
.source "AdvancedModeItem.java"


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMinVisibleWidth:I

.field private mText:Landroid/widget/TextView;

.field private mVisibleWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v1, p0, Lcom/android/camera/ui/AdvancedModeItem;->mVisibleWidth:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AdvancedModeItem;->setWillNotDraw(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900c4

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mMinVisibleWidth:I

    .line 49
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "transX":F
    iget v1, p0, Lcom/android/camera/ui/AdvancedModeItem;->mVisibleWidth:I

    iget v2, p0, Lcom/android/camera/ui/AdvancedModeItem;->mMinVisibleWidth:I

    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 129
    iget v1, p0, Lcom/android/camera/ui/AdvancedModeItem;->mMinVisibleWidth:I

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/AdvancedModeItem;->mVisibleWidth:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    neg-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->draw(Landroid/graphics/Canvas;)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 61
    return-void
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIconCenterLocationInWindow([I)V
    .locals 3
    .param p1, "loc"    # [I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 153
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lcom/android/camera/ui/AdvancedModeItem;->mMinVisibleWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 154
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lcom/android/camera/ui/AdvancedModeItem;->mMinVisibleWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 155
    return-void
.end method

.method public getIconDrawableClone()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconDrawableSize()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mMinVisibleWidth:I

    return v0
.end method

.method public getMaxVisibleWidth()I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/AdvancedModeItem;->mMinVisibleWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getVisibleWidth()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mVisibleWidth:I

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f0f009f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedModeItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mIcon:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0f00a0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedModeItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mText:Landroid/widget/TextView;

    .line 55
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 85
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->onLayout(ZIIII)V

    .line 86
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mWidth:I

    .line 87
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mVisibleWidth:I

    if-lez v0, :cond_0

    .line 89
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mWidth:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedModeItem;->setVisibleWidth(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public onSwipeModeChanged(Z)V
    .locals 2
    .param p1, "swipeIn"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 76
    return-void
.end method

.method public setDefaultBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/AdvancedModeItem;->setBackgroundColor(I)V

    .line 66
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 0
    .param p1, "highlightColor"    # I

    .prologue
    .line 138
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    .local v0, "drawableIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 99
    :cond_0
    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 71
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public setTextAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 165
    return-void
.end method

.method public setVisibleWidth(I)V
    .locals 2
    .param p1, "newWidth"    # I

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeItem;->getMaxVisibleWidth()I

    move-result v0

    .line 106
    .local v0, "fullyShownIconWidth":I
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 108
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 110
    iget v1, p0, Lcom/android/camera/ui/AdvancedModeItem;->mVisibleWidth:I

    if-eq v1, p1, :cond_0

    .line 111
    iput p1, p0, Lcom/android/camera/ui/AdvancedModeItem;->mVisibleWidth:I

    .line 112
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeItem;->mListener:Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeItem;->mListener:Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;->onVisibleWidthChanged(I)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeItem;->invalidate()V

    .line 117
    return-void
.end method
