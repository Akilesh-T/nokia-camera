.class public Lcom/android/camera/ui/ModeSelectorItem;
.super Lcom/android/camera/ui/operation/ModeSelectorItemOperation;
.source "ModeSelectorItem.java"


# instance fields
.field private mIcon:Lcom/android/camera/ui/ModeIconView;

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
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mVisibleWidth:I

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeSelectorItem;->setWillNotDraw(Z)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeSelectorItem;->setClickable(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectorItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090115

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mMinVisibleWidth:I

    .line 60
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, "transX":F
    iget v1, p0, Lcom/android/camera/ui/ModeSelectorItem;->mVisibleWidth:I

    iget v2, p0, Lcom/android/camera/ui/ModeSelectorItem;->mMinVisibleWidth:I

    iget-object v3, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    invoke-virtual {v3}, Lcom/android/camera/ui/ModeIconView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 192
    iget v1, p0, Lcom/android/camera/ui/ModeSelectorItem;->mMinVisibleWidth:I

    iget-object v2, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    invoke-virtual {v2}, Lcom/android/camera/ui/ModeIconView;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeSelectorItem;->mVisibleWidth:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 195
    neg-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 196
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->draw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 198
    return-void
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeIconView;->getHighlightColor()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    return-object v0
.end method

.method public getIconCenterLocationInWindow([I)V
    .locals 3
    .param p1, "loc"    # [I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeIconView;->getLocationInWindow([I)V

    .line 235
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lcom/android/camera/ui/ModeSelectorItem;->mMinVisibleWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 236
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lcom/android/camera/ui/ModeSelectorItem;->mMinVisibleWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 237
    return-void
.end method

.method public getIconDrawableClone()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeIconView;->getIconDrawableClone()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconDrawableSize()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeIconView;->getIconDrawableSize()I

    move-result v0

    return v0
.end method

.method public getMaxVisibleWidth()I
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeIconView;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ModeSelectorItem;->mMinVisibleWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getVisibleWidth()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mVisibleWidth:I

    return v0
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 64
    const v1, 0x7f0f01a1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeSelectorItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ModeIconView;

    iput-object v1, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    .line 65
    const v1, 0x7f0f01a0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeSelectorItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/ui/ModeSelectorItem;->mText:Landroid/widget/TextView;

    .line 67
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_ROBOTO_MEDIUM_FONT:Z

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 74
    .local v0, "typeface":Landroid/graphics/Typeface;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectorItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    return-void

    .line 71
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectorItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "Roboto-Medium.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .restart local v0    # "typeface":Landroid/graphics/Typeface;
    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 120
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->onLayout(ZIIII)V

    .line 121
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mWidth:I

    .line 122
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mVisibleWidth:I

    if-lez v0, :cond_0

    .line 124
    iget v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mWidth:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeSelectorItem;->setVisibleWidth(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public onSwipeModeChanged(Z)V
    .locals 2
    .param p1, "swipeIn"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 111
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ModeSelectorItem;->setBackgroundColor(I)V

    .line 80
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .param p1, "highlightColor"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeIconView;->setHighlightColor(I)V

    .line 208
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectorItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    .local v0, "drawableIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ModeIconView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mIcon:Lcom/android/camera/ui/ModeIconView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeIconView;->setSelected(Z)V

    .line 85
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public setTextAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectorItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 253
    return-void
.end method

.method public setVisibleWidth(I)V
    .locals 2
    .param p1, "newWidth"    # I

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectorItem;->getMaxVisibleWidth()I

    move-result v0

    .line 158
    .local v0, "fullyShownIconWidth":I
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 160
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 162
    iget v1, p0, Lcom/android/camera/ui/ModeSelectorItem;->mVisibleWidth:I

    if-eq v1, p1, :cond_0

    .line 163
    iput p1, p0, Lcom/android/camera/ui/ModeSelectorItem;->mVisibleWidth:I

    .line 164
    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectorItem;->mListener:Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectorItem;->mListener:Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;->onVisibleWidthChanged(I)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectorItem;->invalidate()V

    .line 169
    return-void
.end method
