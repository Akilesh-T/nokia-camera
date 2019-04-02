.class public Lcom/android/camera/ui/ProgressOverlay;
.super Landroid/view/View;
.source "ProgressOverlay.java"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private final mProgressRenderer:Lcom/android/camera/ui/ProgressRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/android/camera/ui/ProgressRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/ui/ProgressRenderer;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/ui/ProgressOverlay;->mProgressRenderer:Lcom/android/camera/ui/ProgressRenderer;

    .line 42
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/ProgressOverlay;->mProgressRenderer:Lcom/android/camera/ui/ProgressRenderer;

    iget v1, p0, Lcom/android/camera/ui/ProgressOverlay;->mCenterX:I

    iget v2, p0, Lcom/android/camera/ui/ProgressOverlay;->mCenterY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/ui/ProgressRenderer;->onDraw(Landroid/graphics/Canvas;II)V

    .line 70
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
    .line 46
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ProgressOverlay;->mCenterX:I

    .line 49
    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ProgressOverlay;->mCenterY:I

    .line 51
    :cond_0
    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "area"    # Landroid/graphics/RectF;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/ui/ProgressOverlay;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 61
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 62
    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ProgressOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/ProgressOverlay;->mProgressRenderer:Lcom/android/camera/ui/ProgressRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ProgressRenderer;->setProgress(I)V

    .line 77
    return-void
.end method
