.class public Lcom/rd/draw/controller/AttributeController;
.super Ljava/lang/Object;
.source "AttributeController.java"


# instance fields
.field private indicator:Lcom/rd/draw/data/Indicator;


# direct methods
.method public constructor <init>(Lcom/rd/draw/data/Indicator;)V
    .locals 0
    .param p1, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    .line 23
    return-void
.end method

.method private getAnimationType(I)Lcom/rd/animation/type/AnimationType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 157
    sget-object v0, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    :goto_0
    return-object v0

    .line 136
    :pswitch_0
    sget-object v0, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    goto :goto_0

    .line 138
    :pswitch_1
    sget-object v0, Lcom/rd/animation/type/AnimationType;->COLOR:Lcom/rd/animation/type/AnimationType;

    goto :goto_0

    .line 140
    :pswitch_2
    sget-object v0, Lcom/rd/animation/type/AnimationType;->SCALE:Lcom/rd/animation/type/AnimationType;

    goto :goto_0

    .line 142
    :pswitch_3
    sget-object v0, Lcom/rd/animation/type/AnimationType;->WORM:Lcom/rd/animation/type/AnimationType;

    goto :goto_0

    .line 144
    :pswitch_4
    sget-object v0, Lcom/rd/animation/type/AnimationType;->SLIDE:Lcom/rd/animation/type/AnimationType;

    goto :goto_0

    .line 146
    :pswitch_5
    sget-object v0, Lcom/rd/animation/type/AnimationType;->FILL:Lcom/rd/animation/type/AnimationType;

    goto :goto_0

    .line 148
    :pswitch_6
    sget-object v0, Lcom/rd/animation/type/AnimationType;->THIN_WORM:Lcom/rd/animation/type/AnimationType;

    goto :goto_0

    .line 150
    :pswitch_7
    sget-object v0, Lcom/rd/animation/type/AnimationType;->DROP:Lcom/rd/animation/type/AnimationType;

    goto :goto_0

    .line 152
    :pswitch_8
    sget-object v0, Lcom/rd/animation/type/AnimationType;->SWAP:Lcom/rd/animation/type/AnimationType;

    goto :goto_0

    .line 154
    :pswitch_9
    sget-object v0, Lcom/rd/animation/type/AnimationType;->SCALE_DOWN:Lcom/rd/animation/type/AnimationType;

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getRtlMode(I)Lcom/rd/draw/data/RtlMode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_0

    .line 170
    sget-object v0, Lcom/rd/draw/data/RtlMode;->Auto:Lcom/rd/draw/data/RtlMode;

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    sget-object v0, Lcom/rd/draw/data/RtlMode;->On:Lcom/rd/draw/data/RtlMode;

    goto :goto_0

    .line 165
    :pswitch_1
    sget-object v0, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    goto :goto_0

    .line 167
    :pswitch_2
    sget-object v0, Lcom/rd/draw/data/RtlMode;->Auto:Lcom/rd/draw/data/RtlMode;

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initAnimationAttribute(Landroid/content/res/TypedArray;)V
    .locals 10
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_interactiveAnimation:I

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 72
    .local v3, "interactiveAnimation":Z
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_animationDuration:I

    const/16 v7, 0x15e

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 73
    .local v1, "animationDuration":I
    if-gez v1, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 77
    :cond_0
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_animationType:I

    sget-object v7, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    invoke-virtual {v7}, Lcom/rd/animation/type/AnimationType;->ordinal()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 78
    .local v0, "animIndex":I
    invoke-direct {p0, v0}, Lcom/rd/draw/controller/AttributeController;->getAnimationType(I)Lcom/rd/animation/type/AnimationType;

    move-result-object v2

    .line 80
    .local v2, "animationType":Lcom/rd/animation/type/AnimationType;
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_rtl_mode:I

    sget-object v7, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    invoke-virtual {v7}, Lcom/rd/draw/data/RtlMode;->ordinal()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 81
    .local v4, "rtlIndex":I
    invoke-direct {p0, v4}, Lcom/rd/draw/controller/AttributeController;->getRtlMode(I)Lcom/rd/draw/data/RtlMode;

    move-result-object v5

    .line 83
    .local v5, "rtlMode":Lcom/rd/draw/data/RtlMode;
    iget-object v6, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Lcom/rd/draw/data/Indicator;->setAnimationDuration(J)V

    .line 84
    iget-object v6, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6, v3}, Lcom/rd/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 85
    iget-object v6, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6, v2}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    .line 86
    iget-object v6, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6, v5}, Lcom/rd/draw/data/Indicator;->setRtlMode(Lcom/rd/draw/data/RtlMode;)V

    .line 87
    return-void
.end method

.method private initColorAttribute(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    sget v2, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_unselectedColor:I

    const-string v3, "#33ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 64
    .local v1, "unselectedColor":I
    sget v2, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_selectedColor:I

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 66
    .local v0, "selectedColor":I
    iget-object v2, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2, v1}, Lcom/rd/draw/data/Indicator;->setUnselectedColor(I)V

    .line 67
    iget-object v2, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2, v0}, Lcom/rd/draw/data/Indicator;->setSelectedColor(I)V

    .line 68
    return-void
.end method

.method private initCountAttribute(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 35
    sget v5, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_viewPager:I

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 36
    .local v4, "viewPagerId":I
    sget v5, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_autoVisibility:I

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 37
    .local v0, "autoVisibility":Z
    sget v5, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_dynamicCount:I

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 38
    .local v2, "dynamicCount":Z
    sget v5, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_count:I

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 40
    .local v1, "count":I
    if-ne v1, v7, :cond_0

    .line 41
    const/4 v1, 0x3

    .line 44
    :cond_0
    sget v5, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_select:I

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 45
    .local v3, "position":I
    if-gez v3, :cond_2

    .line 46
    const/4 v3, 0x0

    .line 51
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5, v4}, Lcom/rd/draw/data/Indicator;->setViewPagerId(I)V

    .line 52
    iget-object v5, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5, v0}, Lcom/rd/draw/data/Indicator;->setAutoVisibility(Z)V

    .line 53
    iget-object v5, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5, v2}, Lcom/rd/draw/data/Indicator;->setDynamicCount(Z)V

    .line 54
    iget-object v5, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5, v1}, Lcom/rd/draw/data/Indicator;->setCount(I)V

    .line 56
    iget-object v5, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5, v3}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 57
    iget-object v5, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5, v3}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 58
    iget-object v5, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5, v3}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 59
    return-void

    .line 47
    :cond_2
    if-lez v1, :cond_1

    add-int/lit8 v5, v1, -0x1

    if-le v3, v5, :cond_1

    .line 48
    add-int/lit8 v3, v1, -0x1

    goto :goto_0
.end method

.method private initSizeAttribute(Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_orientation:I

    sget-object v7, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    invoke-virtual {v7}, Lcom/rd/draw/data/Orientation;->ordinal()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 93
    .local v1, "orientationIndex":I
    if-nez v1, :cond_5

    .line 94
    sget-object v0, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    .line 99
    .local v0, "orientation":Lcom/rd/draw/data/Orientation;
    :goto_0
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_radius:I

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v3, v6

    .line 100
    .local v3, "radius":I
    if-gez v3, :cond_0

    .line 101
    const/4 v3, 0x0

    .line 104
    :cond_0
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_padding:I

    const/16 v7, 0x8

    invoke-static {v7}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v2, v6

    .line 105
    .local v2, "padding":I
    if-gez v2, :cond_1

    .line 106
    const/4 v2, 0x0

    .line 109
    :cond_1
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_scaleFactor:I

    const v7, 0x3f333333    # 0.7f

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 110
    .local v4, "scaleFactor":F
    const v6, 0x3e99999a    # 0.3f

    cmpg-float v6, v4, v6

    if-gez v6, :cond_6

    .line 111
    const v4, 0x3e99999a    # 0.3f

    .line 117
    :cond_2
    :goto_1
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_strokeWidth:I

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v5, v6

    .line 118
    .local v5, "stroke":I
    if-le v5, v3, :cond_3

    .line 119
    move v5, v3

    .line 122
    :cond_3
    iget-object v6, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v6

    sget-object v7, Lcom/rd/animation/type/AnimationType;->FILL:Lcom/rd/animation/type/AnimationType;

    if-eq v6, v7, :cond_4

    .line 123
    const/4 v5, 0x0

    .line 126
    :cond_4
    iget-object v6, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6, v3}, Lcom/rd/draw/data/Indicator;->setRadius(I)V

    .line 127
    iget-object v6, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6, v0}, Lcom/rd/draw/data/Indicator;->setOrientation(Lcom/rd/draw/data/Orientation;)V

    .line 128
    iget-object v6, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6, v2}, Lcom/rd/draw/data/Indicator;->setPadding(I)V

    .line 129
    iget-object v6, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6, v4}, Lcom/rd/draw/data/Indicator;->setScaleFactor(F)V

    .line 130
    iget-object v6, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6, v5}, Lcom/rd/draw/data/Indicator;->setStroke(I)V

    .line 131
    return-void

    .line 96
    .end local v0    # "orientation":Lcom/rd/draw/data/Orientation;
    .end local v2    # "padding":I
    .end local v3    # "radius":I
    .end local v4    # "scaleFactor":F
    .end local v5    # "stroke":I
    :cond_5
    sget-object v0, Lcom/rd/draw/data/Orientation;->VERTICAL:Lcom/rd/draw/data/Orientation;

    .restart local v0    # "orientation":Lcom/rd/draw/data/Orientation;
    goto :goto_0

    .line 113
    .restart local v2    # "padding":I
    .restart local v3    # "radius":I
    .restart local v4    # "scaleFactor":F
    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    .line 114
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 26
    sget-object v1, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/rd/draw/controller/AttributeController;->initCountAttribute(Landroid/content/res/TypedArray;)V

    .line 28
    invoke-direct {p0, v0}, Lcom/rd/draw/controller/AttributeController;->initColorAttribute(Landroid/content/res/TypedArray;)V

    .line 29
    invoke-direct {p0, v0}, Lcom/rd/draw/controller/AttributeController;->initAnimationAttribute(Landroid/content/res/TypedArray;)V

    .line 30
    invoke-direct {p0, v0}, Lcom/rd/draw/controller/AttributeController;->initSizeAttribute(Landroid/content/res/TypedArray;)V

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void
.end method
