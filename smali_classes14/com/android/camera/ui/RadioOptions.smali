.class public Lcom/android/camera/ui/RadioOptions;
.super Lcom/android/camera/ui/TopRightWeightedLayout;
.source "RadioOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RadioOptions$OnOptionClickListener;
    }
.end annotation


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mOnOptionClickListener:Lcom/android/camera/ui/RadioOptions$OnOptionClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TopRightWeightedLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Lcom/android/camera/ui/RadioOptions$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/ui/RadioOptions$1;-><init>(Lcom/android/camera/ui/RadioOptions;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RadioOptions;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/RadioOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/RadioOptions;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/ui/RadioOptions;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/RadioOptions;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/RadioOptions;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RadioOptions;->setSelectedOptionByView(Landroid/view/View;)V

    return-void
.end method

.method private setSelectedOptionByView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    if-eqz p1, :cond_2

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/RadioOptions;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RadioOptions;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/RadioOptions;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/camera/ui/RadioOptions;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/RadioOptions;->mOnOptionClickListener:Lcom/android/camera/ui/RadioOptions$OnOptionClickListener;

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/camera/ui/RadioOptions;->mOnOptionClickListener:Lcom/android/camera/ui/RadioOptions$OnOptionClickListener;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/RadioOptions$OnOptionClickListener;->onOptionClicked(Landroid/view/View;)V

    .line 146
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/RadioOptions;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 92
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/camera/ui/TopRightWeightedLayout;->onFinishInflate()V

    .line 80
    new-instance v0, Lcom/android/camera/ui/RadioOptions$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/RadioOptions$2;-><init>(Lcom/android/camera/ui/RadioOptions;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RadioOptions;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method public setOnOptionClickListener(Lcom/android/camera/ui/RadioOptions$OnOptionClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/RadioOptions$OnOptionClickListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/ui/RadioOptions;->mOnOptionClickListener:Lcom/android/camera/ui/RadioOptions$OnOptionClickListener;

    .line 52
    return-void
.end method

.method public setSelectedOptionByTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RadioOptions;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "button":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/camera/ui/RadioOptions;->setSelectedOptionByView(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method public setSeletedOptionById(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RadioOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "button":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/camera/ui/RadioOptions;->setSelectedOptionByView(Landroid/view/View;)V

    .line 129
    return-void
.end method

.method public updateListeners()V
    .locals 4

    .prologue
    .line 100
    new-instance v2, Lcom/android/camera/ui/RadioOptions$3;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/RadioOptions$3;-><init>(Lcom/android/camera/ui/RadioOptions;)V

    .line 107
    .local v2, "onClickListener":Landroid/view/View$OnClickListener;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/RadioOptions;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/RadioOptions;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "button":Landroid/view/View;
    :cond_0
    return-void
.end method
