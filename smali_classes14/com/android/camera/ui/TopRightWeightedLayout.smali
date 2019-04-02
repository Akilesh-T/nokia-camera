.class public Lcom/android/camera/ui/TopRightWeightedLayout;
.super Landroid/widget/LinearLayout;
.source "TopRightWeightedLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private checkOrientation(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/TopRightWeightedLayout;->getOrientation()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 58
    .local v0, "isHorizontal":Z
    :goto_0
    if-ne v2, p1, :cond_2

    move v1, v2

    .line 59
    .local v1, "isPortrait":Z
    :goto_1
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 62
    invoke-direct {p0, v3}, Lcom/android/camera/ui/TopRightWeightedLayout;->fixGravityAndPadding(I)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/TopRightWeightedLayout;->setOrientation(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/camera/ui/TopRightWeightedLayout;->reverseChildren()V

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/ui/TopRightWeightedLayout;->requestLayout()V

    .line 74
    :cond_0
    :goto_2
    return-void

    .end local v0    # "isHorizontal":Z
    .end local v1    # "isPortrait":Z
    :cond_1
    move v0, v3

    .line 57
    goto :goto_0

    .restart local v0    # "isHorizontal":Z
    :cond_2
    move v1, v3

    .line 58
    goto :goto_1

    .line 66
    .restart local v1    # "isPortrait":Z
    :cond_3
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, v2}, Lcom/android/camera/ui/TopRightWeightedLayout;->fixGravityAndPadding(I)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/TopRightWeightedLayout;->setOrientation(I)V

    .line 71
    invoke-direct {p0}, Lcom/android/camera/ui/TopRightWeightedLayout;->reverseChildren()V

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/ui/TopRightWeightedLayout;->requestLayout()V

    goto :goto_2
.end method

.method private fixGravityAndPadding(I)V
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/4 v10, 0x1

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/TopRightWeightedLayout;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_6

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TopRightWeightedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 103
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 106
    .local v0, "gravity":I
    if-ne p1, v10, :cond_3

    .line 107
    and-int/lit8 v8, v0, 0x3

    if-eqz v8, :cond_0

    .line 108
    and-int/lit8 v0, v0, -0x4

    .line 109
    or-int/lit8 v0, v0, 0x50

    .line 118
    :cond_0
    :goto_1
    if-ne p1, v10, :cond_4

    .line 119
    and-int/lit8 v8, v0, 0x5

    if-eqz v8, :cond_1

    .line 120
    and-int/lit8 v0, v0, -0x6

    .line 121
    or-int/lit8 v0, v0, 0x30

    .line 131
    :cond_1
    :goto_2
    and-int/lit8 v8, v0, 0x11

    const/16 v9, 0x11

    if-eq v8, v9, :cond_2

    .line 132
    if-ne p1, v10, :cond_5

    .line 133
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_2

    .line 134
    and-int/lit8 v0, v0, -0x11

    .line 135
    or-int/lit8 v0, v0, 0x1

    .line 145
    :cond_2
    :goto_3
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 148
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 149
    .local v4, "paddingLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 150
    .local v6, "paddingTop":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 151
    .local v5, "paddingRight":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 152
    .local v3, "paddingBottom":I
    invoke-virtual {v7, v3, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingRight":I
    .end local v6    # "paddingTop":I
    :cond_3
    and-int/lit8 v8, v0, 0x50

    if-eqz v8, :cond_0

    .line 113
    and-int/lit8 v0, v0, -0x51

    .line 114
    or-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 124
    :cond_4
    and-int/lit8 v8, v0, 0x30

    if-eqz v8, :cond_1

    .line 125
    and-int/lit8 v0, v0, -0x31

    .line 126
    or-int/lit8 v0, v0, 0x5

    goto :goto_2

    .line 138
    :cond_5
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_2

    .line 139
    and-int/lit8 v0, v0, -0x2

    .line 140
    or-int/lit8 v0, v0, 0x10

    goto :goto_3

    .line 154
    .end local v0    # "gravity":I
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "v":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private reverseChildren()V
    .locals 5

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/camera/ui/TopRightWeightedLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TopRightWeightedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 86
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/TopRightWeightedLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_1

    .line 88
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 49
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/TopRightWeightedLayout;->checkOrientation(I)V

    .line 50
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/camera/ui/TopRightWeightedLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 43
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/android/camera/ui/TopRightWeightedLayout;->checkOrientation(I)V

    .line 44
    return-void
.end method
