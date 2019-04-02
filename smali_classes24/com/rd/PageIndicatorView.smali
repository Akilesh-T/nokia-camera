.class public Lcom/rd/PageIndicatorView;
.super Landroid/view/View;
.source "PageIndicatorView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/rd/IndicatorManager$Listener;
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# instance fields
.field private isInteractionEnabled:Z

.field private manager:Lcom/rd/IndicatorManager;

.field private setObserver:Landroid/database/DataSetObserver;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p2}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0, p2}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    invoke-direct {p0, p2}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/rd/PageIndicatorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/rd/PageIndicatorView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateState()V

    return-void
.end method

.method private adjustPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 788
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v3}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    .line 789
    .local v1, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    .line 790
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .line 792
    .local v2, "lastPosition":I
    if-gez p1, :cond_1

    .line 793
    const/4 p1, 0x0

    .line 799
    :cond_0
    :goto_0
    return p1

    .line 795
    :cond_1
    if-le p1, v2, :cond_0

    .line 796
    move p1, v2

    goto :goto_0
.end method

.method private findViewPager(Landroid/view/ViewGroup;I)Landroid/support/v4/view/ViewPager;
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 775
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 783
    :goto_0
    return-object v0

    .line 779
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 780
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1

    .line 781
    check-cast v0, Landroid/support/v4/view/ViewPager;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 783
    goto :goto_0
.end method

.method private findViewPager(Landroid/view/ViewParent;)V
    .locals 4
    .param p1, "viewParent"    # Landroid/view/ViewParent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 755
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 757
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 759
    .local v0, "isValidParent":Z
    :goto_0
    if-nez v0, :cond_1

    .line 771
    :goto_1
    return-void

    .line 757
    .end local v0    # "isValidParent":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 763
    .restart local v0    # "isValidParent":Z
    :cond_1
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v3}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->getViewPagerId()I

    move-result v2

    .local v2, "viewPagerId":I
    move-object v3, p1

    .line 764
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v2}, Lcom/rd/PageIndicatorView;->findViewPager(Landroid/view/ViewGroup;I)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    .line 766
    .local v1, "viewPager":Landroid/support/v4/view/ViewPager;
    if-eqz v1, :cond_2

    .line 767
    invoke-virtual {p0, v1}, Lcom/rd/PageIndicatorView;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_1

    .line 769
    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/rd/PageIndicatorView;->findViewPager(Landroid/view/ViewParent;)V

    goto :goto_1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->setupId()V

    .line 618
    invoke-direct {p0, p1}, Lcom/rd/PageIndicatorView;->initIndicatorManager(Landroid/util/AttributeSet;)V

    .line 619
    return-void
.end method

.method private initIndicatorManager(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 628
    new-instance v1, Lcom/rd/IndicatorManager;

    invoke-direct {v1, p0}, Lcom/rd/IndicatorManager;-><init>(Lcom/rd/IndicatorManager$Listener;)V

    iput-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    .line 629
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/rd/draw/DrawManager;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 631
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 632
    .local v0, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setPaddingLeft(I)V

    .line 633
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setPaddingTop(I)V

    .line 634
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setPaddingRight(I)V

    .line 635
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setPaddingBottom(I)V

    .line 636
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/rd/PageIndicatorView;->isInteractionEnabled:Z

    .line 637
    return-void
.end method

.method private isRtl()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 736
    sget-object v2, Lcom/rd/PageIndicatorView$2;->$SwitchMap$com$rd$draw$data$RtlMode:[I

    iget-object v3, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v3}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->getRtlMode()Lcom/rd/draw/data/RtlMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rd/draw/data/RtlMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 747
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 741
    goto :goto_0

    .line 744
    :pswitch_2
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isViewMeasured()Z
    .locals 1

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPageScroll(IF)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 720
    iget-object v7, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v7}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    .line 721
    .local v2, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v0

    .line 722
    .local v0, "animationType":Lcom/rd/animation/type/AnimationType;
    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v3

    .line 723
    .local v3, "interactiveAnimation":Z
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isViewMeasured()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    sget-object v7, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    if-eq v0, v7, :cond_0

    const/4 v1, 0x1

    .line 725
    .local v1, "canSelectIndicator":Z
    :goto_0
    if-nez v1, :cond_1

    .line 733
    :goto_1
    return-void

    .line 723
    .end local v1    # "canSelectIndicator":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 729
    .restart local v1    # "canSelectIndicator":Z
    :cond_1
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v7

    invoke-static {v2, p1, p2, v7}, Lcom/rd/utils/CoordinatesUtils;->getProgress(Lcom/rd/draw/data/Indicator;IFZ)Landroid/util/Pair;

    move-result-object v4

    .line 730
    .local v4, "progressPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 731
    .local v5, "selectingPosition":I
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 732
    .local v6, "selectingProgress":F
    invoke-virtual {p0, v5, v6}, Lcom/rd/PageIndicatorView;->setProgress(IF)V

    goto :goto_1
.end method

.method private onPageSelect(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 706
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v3}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    .line 707
    .local v2, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isViewMeasured()Z

    move-result v0

    .line 708
    .local v0, "canSelectIndicator":Z
    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v1

    .line 710
    .local v1, "count":I
    if-eqz v0, :cond_1

    .line 711
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 712
    add-int/lit8 v3, v1, -0x1

    sub-int p1, v3, p1

    .line 715
    :cond_0
    invoke-virtual {p0, p1}, Lcom/rd/PageIndicatorView;->setSelection(I)V

    .line 717
    :cond_1
    return-void
.end method

.method private registerSetObserver()V
    .locals 3

    .prologue
    .line 640
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    new-instance v1, Lcom/rd/PageIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/rd/PageIndicatorView$1;-><init>(Lcom/rd/PageIndicatorView;)V

    iput-object v1, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    .line 652
    :try_start_0
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private setupId()V
    .locals 2

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 623
    invoke-static {}, Lcom/rd/utils/IdUtils;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rd/PageIndicatorView;->setId(I)V

    .line 625
    :cond_0
    return-void
.end method

.method private unRegisterSetObserver()V
    .locals 3

    .prologue
    .line 659
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 665
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 672
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 677
    .local v0, "count":I
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    sub-int v1, v2, v3

    .line 679
    .local v1, "selectedPos":I
    :goto_1
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 680
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 681
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 682
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rd/draw/data/Indicator;->setCount(I)V

    .line 683
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->animate()Lcom/rd/animation/AnimationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rd/animation/AnimationManager;->end()V

    .line 685
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateVisibility()V

    .line 686
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->requestLayout()V

    goto :goto_0

    .line 677
    .end local v1    # "selectedPos":I
    :cond_2
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    goto :goto_1
.end method

.method private updateVisibility()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 690
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->isAutoVisibility()Z

    move-result v2

    if-nez v2, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    .line 695
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getVisibility()I

    move-result v1

    .line 697
    .local v1, "visibility":I
    if-eqz v1, :cond_2

    if-le v0, v3, :cond_2

    .line 698
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/rd/PageIndicatorView;->setVisibility(I)V

    goto :goto_0

    .line 700
    :cond_2
    if-eq v1, v4, :cond_0

    if-gt v0, v3, :cond_0

    .line 701
    invoke-virtual {p0, v4}, Lcom/rd/PageIndicatorView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 568
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 569
    .local v0, "indicator":Lcom/rd/draw/data/Indicator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 570
    invoke-virtual {v0, v2}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 571
    invoke-virtual {v0, v2}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 572
    invoke-virtual {v0, v2}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 573
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->animate()Lcom/rd/animation/AnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rd/animation/AnimationManager;->basic()V

    .line 574
    return-void
.end method

.method public getAnimationDuration()J
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    return v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getPadding()I

    move-result v0

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    return v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v0

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v0

    return v0
.end method

.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 0
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldAdapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "newAdapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateState()V

    .line 145
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 67
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rd/PageIndicatorView;->findViewPager(Landroid/view/ViewParent;)V

    .line 68
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->unRegisterSetObserver()V

    .line 73
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 74
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/DrawManager;->draw(Landroid/graphics/Canvas;)V

    .line 111
    return-void
.end method

.method public onIndicatorUpdated()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 123
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 104
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/rd/draw/DrawManager;->measureViewSize(II)Landroid/util/Pair;

    move-result-object v0

    .line 105
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/rd/PageIndicatorView;->setMeasuredDimension(II)V

    .line 106
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/rd/PageIndicatorView;->isInteractionEnabled:Z

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 140
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/rd/PageIndicatorView;->onPageScroll(IF)V

    .line 128
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/rd/PageIndicatorView;->onPageSelect(I)V

    .line 133
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 89
    instance-of v2, p1, Lcom/rd/draw/data/PositionSavedState;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .local v0, "indicator":Lcom/rd/draw/data/Indicator;
    move-object v1, p1

    .line 91
    check-cast v1, Lcom/rd/draw/data/PositionSavedState;

    .line 92
    .local v1, "positionSavedState":Lcom/rd/draw/data/PositionSavedState;
    invoke-virtual {v1}, Lcom/rd/draw/data/PositionSavedState;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 93
    invoke-virtual {v1}, Lcom/rd/draw/data/PositionSavedState;->getSelectingPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 94
    invoke-virtual {v1}, Lcom/rd/draw/data/PositionSavedState;->getLastSelectedPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 95
    invoke-virtual {v1}, Lcom/rd/draw/data/PositionSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 100
    .end local v0    # "indicator":Lcom/rd/draw/data/Indicator;
    .end local v1    # "positionSavedState":Lcom/rd/draw/data/PositionSavedState;
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 78
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 79
    .local v0, "indicator":Lcom/rd/draw/data/Indicator;
    new-instance v1, Lcom/rd/draw/data/PositionSavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/rd/draw/data/PositionSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 80
    .local v1, "positionSavedState":Lcom/rd/draw/data/PositionSavedState;
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/PositionSavedState;->setSelectedPosition(I)V

    .line 81
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/PositionSavedState;->setSelectingPosition(I)V

    .line 82
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/PositionSavedState;->setLastSelectedPosition(I)V

    .line 84
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/DrawManager;->touch(Landroid/view/MotionEvent;)V

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public releaseViewPager()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 482
    :cond_0
    return-void
.end method

.method public setAnimationDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 413
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rd/draw/data/Indicator;->setAnimationDuration(J)V

    .line 414
    return-void
.end method

.method public setAnimationType(Lcom/rd/animation/type/AnimationType;)V
    .locals 2
    .param p1, "type"    # Lcom/rd/animation/type/AnimationType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 431
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rd/IndicatorManager;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    .line 433
    if-eqz p1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    .line 438
    :goto_0
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 439
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    sget-object v1, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    goto :goto_0
.end method

.method public setAutoVisibility(Z)V
    .locals 1
    .param p1, "autoVisibility"    # Z

    .prologue
    .line 384
    if-nez p1, :cond_0

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rd/PageIndicatorView;->setVisibility(I)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setAutoVisibility(Z)V

    .line 389
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateVisibility()V

    .line 390
    return-void
.end method

.method public setClickListener(Lcom/rd/draw/controller/DrawController$ClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/rd/draw/controller/DrawController$ClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 613
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/DrawManager;->setClickListener(Lcom/rd/draw/controller/DrawController$ClickListener;)V

    .line 614
    return-void
.end method

.method public setCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 153
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setCount(I)V

    .line 155
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateVisibility()V

    .line 156
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->requestLayout()V

    .line 158
    :cond_0
    return-void
.end method

.method public setDynamicCount(Z)V
    .locals 1
    .param p1, "dynamicCount"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setDynamicCount(Z)V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->registerSetObserver()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->unRegisterSetObserver()V

    goto :goto_0
.end method

.method public setInteractiveAnimation(Z)V
    .locals 1
    .param p1, "isInteractive"    # Z

    .prologue
    .line 449
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 450
    iput-boolean p1, p0, Lcom/rd/PageIndicatorView;->isInteractionEnabled:Z

    .line 451
    return-void
.end method

.method public setOrientation(Lcom/rd/draw/data/Orientation;)V
    .locals 1
    .param p1, "orientation"    # Lcom/rd/draw/data/Orientation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 399
    if-eqz p1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setOrientation(Lcom/rd/draw/data/Orientation;)V

    .line 401
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->requestLayout()V

    .line 403
    :cond_0
    return-void
.end method

.method public setPadding(F)V
    .locals 2
    .param p1, "paddingPx"    # F

    .prologue
    .line 245
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 246
    const/4 p1, 0x0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setPadding(I)V

    .line 250
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 251
    return-void
.end method

.method public setPadding(I)V
    .locals 2
    .param p1, "paddingDp"    # I

    .prologue
    .line 230
    if-gez p1, :cond_0

    .line 231
    const/4 p1, 0x0

    .line 234
    :cond_0
    invoke-static {p1}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v0

    .line 235
    .local v0, "paddingPx":I
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/rd/draw/data/Indicator;->setPadding(I)V

    .line 236
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 237
    return-void
.end method

.method public setProgress(IF)V
    .locals 4
    .param p1, "selectingPosition"    # I
    .param p2, "progress"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 583
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    .line 584
    .local v1, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 610
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    .line 589
    .local v0, "count":I
    if-lez v0, :cond_1

    if-gez p1, :cond_5

    .line 590
    :cond_1
    const/4 p1, 0x0

    .line 596
    :cond_2
    :goto_1
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_6

    .line 597
    const/4 p2, 0x0

    .line 603
    :cond_3
    :goto_2
    cmpl-float v2, p2, v3

    if-nez v2, :cond_4

    .line 604
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 605
    invoke-virtual {v1, p1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 608
    :cond_4
    invoke-virtual {v1, p1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 609
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->animate()Lcom/rd/animation/AnimationManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/rd/animation/AnimationManager;->interactive(F)V

    goto :goto_0

    .line 592
    :cond_5
    add-int/lit8 v2, v0, -0x1

    if-le p1, v2, :cond_2

    .line 593
    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 599
    :cond_6
    cmpl-float v2, p2, v3

    if-lez v2, :cond_3

    .line 600
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radiusPx"    # F

    .prologue
    .line 208
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 209
    const/4 p1, 0x0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setRadius(I)V

    .line 213
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 214
    return-void
.end method

.method public setRadius(I)V
    .locals 2
    .param p1, "radiusDp"    # I

    .prologue
    .line 192
    if-gez p1, :cond_0

    .line 193
    const/4 p1, 0x0

    .line 196
    :cond_0
    invoke-static {p1}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v0

    .line 197
    .local v0, "radiusPx":I
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/rd/draw/data/Indicator;->setRadius(I)V

    .line 198
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 199
    return-void
.end method

.method public setRtlMode(Lcom/rd/draw/data/RtlMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/rd/draw/data/RtlMode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 493
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v3}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 494
    .local v0, "indicator":Lcom/rd/draw/data/Indicator;
    if-nez p1, :cond_0

    .line 495
    sget-object v3, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    invoke-virtual {v0, v3}, Lcom/rd/draw/data/Indicator;->setRtlMode(Lcom/rd/draw/data/RtlMode;)V

    .line 500
    :goto_0
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_1

    .line 518
    :goto_1
    return-void

    .line 497
    :cond_0
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setRtlMode(Lcom/rd/draw/data/RtlMode;)V

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v2

    .line 505
    .local v2, "selectedPosition":I
    move v1, v2

    .line 507
    .local v1, "position":I
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 508
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int v1, v3, v2

    .line 514
    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 515
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 516
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 517
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    goto :goto_1

    .line 510
    :cond_3
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_2

    .line 511
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    goto :goto_2
.end method

.method public setScaleFactor(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 270
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 271
    const/high16 p1, 0x3f800000    # 1.0f

    .line 277
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setScaleFactor(F)V

    .line 278
    return-void

    .line 273
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 274
    const p1, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public setSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 555
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    .line 556
    .local v1, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v0

    .line 557
    .local v0, "animationType":Lcom/rd/animation/type/AnimationType;
    sget-object v2, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    .line 559
    invoke-virtual {p0, p1}, Lcom/rd/PageIndicatorView;->setSelection(I)V

    .line 560
    invoke-virtual {v1, v0}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    .line 561
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectedColor(I)V

    .line 348
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 349
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 534
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 535
    .local v0, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-direct {p0, p1}, Lcom/rd/PageIndicatorView;->adjustPosition(I)I

    move-result p1

    .line 537
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 542
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 543
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 544
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 545
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->animate()Lcom/rd/animation/AnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rd/animation/AnimationManager;->basic()V

    goto :goto_0
.end method

.method public setStrokeWidth(F)V
    .locals 3
    .param p1, "strokePx"    # F

    .prologue
    .line 299
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v0

    .line 301
    .local v0, "radiusPx":I
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 302
    const/4 p1, 0x0

    .line 308
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    float-to-int v2, p1

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/Indicator;->setStroke(I)V

    .line 309
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 310
    return-void

    .line 304
    :cond_1
    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 305
    int-to-float p1, v0

    goto :goto_0
.end method

.method public setStrokeWidth(I)V
    .locals 3
    .param p1, "strokeDp"    # I

    .prologue
    .line 320
    invoke-static {p1}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v1

    .line 321
    .local v1, "strokePx":I
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v0

    .line 323
    .local v0, "radiusPx":I
    if-gez v1, :cond_1

    .line 324
    const/4 v1, 0x0

    .line 330
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rd/draw/data/Indicator;->setStroke(I)V

    .line 331
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 332
    return-void

    .line 326
    :cond_1
    if-le v1, v0, :cond_0

    .line 327
    move v1, v0

    goto :goto_0
.end method

.method public setUnselectedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setUnselectedColor(I)V

    .line 366
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 367
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->releaseViewPager()V

    .line 461
    if-nez p1, :cond_0

    .line 472
    :goto_0
    return-void

    .line 465
    :cond_0
    iput-object p1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 466
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 467
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 468
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setViewPagerId(I)V

    .line 470
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isDynamicCount()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rd/PageIndicatorView;->setDynamicCount(Z)V

    .line 471
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateState()V

    goto :goto_0
.end method
