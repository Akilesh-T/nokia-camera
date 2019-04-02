.class public Lcom/android/camera/ui/ManualModeHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ManualModeHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;
    }
.end annotation


# instance fields
.field mEdgeReachedListener:Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;

.field private mIsLeftReach:Z

.field private mIsRightReach:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mIsLeftReach:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mIsRightReach:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mIsLeftReach:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mIsRightReach:Z

    .line 33
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 40
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 41
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 66
    iget-object v3, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mEdgeReachedListener:Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;

    if-nez v3, :cond_0

    .line 81
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    move-object v3, v0

    .line 68
    check-cast v3, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "item":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v1, v3, v4

    .line 70
    .local v1, "diff":I
    if-nez v1, :cond_1

    .line 71
    iput-boolean v7, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mIsRightReach:Z

    .line 72
    iget-object v3, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mEdgeReachedListener:Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;

    invoke-interface {v3}, Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;->onRightReached()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->getScrollX()I

    move-result v3

    if-nez v3, :cond_2

    .line 74
    iput-boolean v7, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mIsLeftReach:Z

    .line 75
    iget-object v3, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mEdgeReachedListener:Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;

    invoke-interface {v3}, Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;->onLeftReached()V

    goto :goto_0

    .line 77
    :cond_2
    iput-boolean v6, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mIsRightReach:Z

    .line 78
    iput-boolean v6, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mIsLeftReach:Z

    .line 79
    iget-object v3, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mEdgeReachedListener:Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;

    invoke-interface {v3}, Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;->onScrollChange()V

    goto :goto_0
.end method

.method public setOnEdgeReachedListener(Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;)V
    .locals 0
    .param p1, "onEdgeReachedListener"    # Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mEdgeReachedListener:Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;

    .line 48
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 86
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mEdgeReachedListener:Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;

    if-eqz v0, :cond_1

    .line 87
    iget-boolean v0, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mIsLeftReach:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mEdgeReachedListener:Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;->onLeftReached()V

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mIsRightReach:Z

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->mEdgeReachedListener:Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;->onRightReached()V

    .line 94
    :cond_1
    return-void
.end method
