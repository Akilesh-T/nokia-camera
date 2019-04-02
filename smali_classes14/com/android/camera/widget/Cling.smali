.class public Lcom/android/camera/widget/Cling;
.super Landroid/widget/TextView;
.source "Cling.java"


# instance fields
.field private mDelayDrawingUntilNextLayout:Z

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mLocation:[I

.field private mReferenceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->mReferenceView:Landroid/view/View;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->mLocation:[I

    .line 35
    new-instance v0, Lcom/android/camera/widget/Cling$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/Cling$1;-><init>(Lcom/android/camera/widget/Cling;)V

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/Cling;->mDelayDrawingUntilNextLayout:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->mReferenceView:Landroid/view/View;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->mLocation:[I

    .line 35
    new-instance v0, Lcom/android/camera/widget/Cling$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/Cling$1;-><init>(Lcom/android/camera/widget/Cling;)V

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/Cling;->mDelayDrawingUntilNextLayout:Z

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/widget/Cling;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/Cling;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/widget/Cling;->mDelayDrawingUntilNextLayout:Z

    return p1
.end method


# virtual methods
.method public adjustPosition()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 80
    iget-object v6, p0, Lcom/android/camera/widget/Cling;->mReferenceView:Landroid/view/View;

    if-nez v6, :cond_0

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v6, p0, Lcom/android/camera/widget/Cling;->mReferenceView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/camera/widget/Cling;->mLocation:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 84
    iget-object v6, p0, Lcom/android/camera/widget/Cling;->mLocation:[I

    aget v6, v6, v8

    iget-object v7, p0, Lcom/android/camera/widget/Cling;->mReferenceView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 85
    .local v3, "refCenterX":I
    iget-object v6, p0, Lcom/android/camera/widget/Cling;->mLocation:[I

    aget v4, v6, v9

    .line 87
    .local v4, "refTopY":I
    invoke-virtual {p0}, Lcom/android/camera/widget/Cling;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v2, v3, v6

    .line 88
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/android/camera/widget/Cling;->getHeight()I

    move-result v6

    sub-int v5, v4, v6

    .line 90
    .local v5, "top":I
    iget-object v6, p0, Lcom/android/camera/widget/Cling;->mLocation:[I

    invoke-virtual {p0, v6}, Lcom/android/camera/widget/Cling;->getLocationInWindow([I)V

    .line 91
    iget-object v6, p0, Lcom/android/camera/widget/Cling;->mLocation:[I

    aget v6, v6, v8

    invoke-virtual {p0}, Lcom/android/camera/widget/Cling;->getTranslationX()F

    move-result v7

    float-to-int v7, v7

    sub-int v0, v6, v7

    .line 92
    .local v0, "currentLeft":I
    iget-object v6, p0, Lcom/android/camera/widget/Cling;->mLocation:[I

    aget v6, v6, v9

    invoke-virtual {p0}, Lcom/android/camera/widget/Cling;->getTranslationY()F

    move-result v7

    float-to-int v7, v7

    sub-int v1, v6, v7

    .line 94
    .local v1, "currentTop":I
    sub-int v6, v2, v0

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lcom/android/camera/widget/Cling;->setTranslationX(F)V

    .line 95
    sub-int v6, v5, v1

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lcom/android/camera/widget/Cling;->setTranslationY(F)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/camera/widget/Cling;->mDelayDrawingUntilNextLayout:Z

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setReferenceView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    if-nez p1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/camera/widget/Cling;->mReferenceView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/camera/widget/Cling;->mReferenceView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/Cling;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->mReferenceView:Landroid/view/View;

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iput-object p1, p0, Lcom/android/camera/widget/Cling;->mReferenceView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/android/camera/widget/Cling;->mReferenceView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/Cling;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/widget/Cling;->mReferenceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/Cling;->mDelayDrawingUntilNextLayout:Z

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/widget/Cling;->adjustPosition()V

    goto :goto_0
.end method
