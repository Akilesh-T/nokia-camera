.class public Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;
.super Landroid/widget/LinearLayout;
.source "WatermarkViewPagerIndicator.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mPageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Watermark.ViewPagerIndicator"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->mPageCount:I

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->setOrientation(I)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->setClickable(Z)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->setFocusable(Z)V

    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->initialView(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private initialView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 27
    sget-object v2, Lcom/android/camera/watermark/WatermarkViewData;->STYLE:[I

    array-length v2, v2

    iput v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->mPageCount:I

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->mPageCount:I

    if-ge v0, v2, :cond_0

    .line 30
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    .local v1, "imageview":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->addView(Landroid/view/View;)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "imageview":Landroid/widget/ImageView;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->setCurrentSeletedPage(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public setCurrentSeletedPage(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->getChildCount()I

    move-result v0

    .line 39
    .local v0, "child_count":I
    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->mPageCount:I

    if-eq v3, v0, :cond_1

    .line 40
    sget-object v3, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "setCurrentSeletedPage ignoe => (mPageCount != child_count)"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->mPageCount:I

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_2

    .line 44
    sget-object v3, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "setCurrentSeletedPage ignoe => (index > (mPageCount - 1))"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->mPageCount:I

    if-ge v1, v3, :cond_0

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewPagerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 50
    .local v2, "imageview":Landroid/widget/ImageView;
    if-ne v1, p1, :cond_3

    .line 51
    const v3, 0x7f0202a8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 48
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    :cond_3
    const v3, 0x7f0202a7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method
