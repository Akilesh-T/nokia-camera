.class public Lcom/android/camera/ui/ModeIconView;
.super Landroid/view/View;
.source "ModeIconView.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mBackgroundDefaultColor:I

.field private mHighlightColor:I

.field private mIconBackgroundSize:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconDrawableSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeIconView;->mBackgroundDefaultColor:I

    .line 48
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeIconView;->mIconBackgroundSize:I

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02028e

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/camera/ui/ModeIconView;->mIconBackgroundSize:I

    iget v2, p0, Lcom/android/camera/ui/ModeIconView;->mIconBackgroundSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawableSize:I

    .line 55
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    :cond_0
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

    iput-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 60
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 61
    return-void
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/camera/ui/ModeIconView;->mHighlightColor:I

    return v0
.end method

.method public getIconDrawableClone()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconDrawableSize()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawableSize:I

    return v0
.end method

.method public setHighlightColor(I)V
    .locals 0
    .param p1, "highlightColor"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/camera/ui/ModeIconView;->mHighlightColor:I

    .line 128
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/camera/ui/ModeIconView;->mIconBackgroundSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawableSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeIconView;->mIconBackgroundSize:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawableSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/ModeIconView;->mIconBackgroundSize:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawableSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/ModeIconView;->mIconBackgroundSize:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/camera/ui/ModeIconView;->mIconDrawableSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeIconView;->invalidate()V

    .line 79
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/camera/ui/ModeIconView;->mHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeIconView;->invalidate()V

    .line 119
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeIconView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/camera/ui/ModeIconView;->mBackgroundDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0
.end method
