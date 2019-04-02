.class public Lcom/android/camera/ui/BottomBar;
.super Lcom/android/camera/ui/operation/BottomBarOperation;
.source "BottomBar.java"


# static fields
.field private static final CIRCLE_ANIM_DURATION_MS:I = 0x12c

.field private static final DRAWABLE_MAX_LEVEL:I = 0x2710

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAnimatedCircleDrawable:Lcom/android/camera/ui/AnimatedCircleDrawable;

.field private mBackgroundAlpha:I

.field private final mBackgroundAlphaDefault:I

.field private final mBackgroundAlphaOverlay:I

.field private mBackgroundColor:I

.field private mBackgroundPressedColor:I

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mCancelLayout:Landroid/widget/FrameLayout;

.field private mCaptureLayout:Landroid/widget/FrameLayout;

.field private final mCircleRadius:F

.field private mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mDrawCircle:Z

.field private mIntentReviewLayout:Lcom/android/camera/ui/TopRightWeightedLayout;

.field private mOverLayBottomBar:Z

.field private mRect:Landroid/graphics/RectF;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private final mShutterButtonBackgroundConstantStates:[Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BottomBar"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/BottomBar;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/operation/BottomBarOperation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/16 v4, 0xff

    iput v4, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlpha:I

    .line 82
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/BottomBar;->mRect:Landroid/graphics/RectF;

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090266

    .line 87
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iput v4, p0, Lcom/android/camera/ui/BottomBar;->mCircleRadius:F

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0008

    .line 89
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlphaOverlay:I

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0007

    .line 91
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlphaDefault:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0d0000

    .line 95
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "ar":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 97
    .local v3, "len":I
    new-array v4, v3, [Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v4, p0, Lcom/android/camera/ui/BottomBar;->mShutterButtonBackgroundConstantStates:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 98
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 99
    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 100
    .local v1, "drawableId":I
    iget-object v4, p0, Lcom/android/camera/ui/BottomBar;->mShutterButtonBackgroundConstantStates:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    aput-object v5, v4, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "drawableId":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/BottomBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomBar;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/ui/BottomBar;->setCaptureButtonDown()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/BottomBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomBar;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/ui/BottomBar;->setCaptureButtonUp()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/BottomBar;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomBar;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/BottomBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomBar;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/ui/BottomBar;->setCancelButtonDown()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/BottomBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomBar;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/ui/BottomBar;->setCancelButtonUp()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/BottomBar;)Lcom/android/camera/ShutterButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomBar;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method private applyCircleDrawableToShutterBackground(Landroid/graphics/drawable/LayerDrawable;)Landroid/graphics/drawable/LayerDrawable;
    .locals 4
    .param p1, "shutterBackground"    # Landroid/graphics/drawable/LayerDrawable;

    .prologue
    const v3, 0x7f0f0244

    .line 372
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 373
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 374
    new-instance v0, Lcom/android/camera/ui/AnimatedCircleDrawable;

    iget v2, p0, Lcom/android/camera/ui/BottomBar;->mCircleRadius:F

    float-to-int v2, v2

    invoke-direct {v0, v2}, Lcom/android/camera/ui/AnimatedCircleDrawable;-><init>(I)V

    .line 377
    .local v0, "animatedCircleDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 378
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 381
    .end local v0    # "animatedCircleDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p1
.end method

.method private crossfadeDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 4
    .param p1, "from"    # Landroid/graphics/drawable/Drawable;
    .param p2, "to"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x1

    .line 468
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 469
    .local v0, "arrayDrawable":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 470
    aput-object p2, v0, v3

    .line 471
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 472
    .local v1, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 473
    return-object v1
.end method

.method private extendTouchAreaToMatchParent(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 219
    .local v1, "parent":Landroid/view/View;
    new-instance v2, Lcom/android/camera/ui/BottomBar$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/camera/ui/BottomBar$3;-><init>(Lcom/android/camera/ui/BottomBar;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method private newDrawableFromConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/drawable/LayerDrawable;
    .locals 1
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method private refreshPaintColor()V
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlpha:I

    iget v1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BottomBar;->setPaintColor(II)V

    .line 125
    return-void
.end method

.method private setBackgroundPressedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 360
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundPressedColor:I

    goto :goto_0
.end method

.method private setButtonImageLevels(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 289
    const v0, 0x7f0f00db

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageLevel(I)V

    .line 290
    const v0, 0x7f0f01e7

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageLevel(I)V

    .line 291
    const v0, 0x7f0f01e6

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageLevel(I)V

    .line 292
    return-void
.end method

.method private setCancelBackgroundColor(II)V
    .locals 5
    .param p1, "alpha"    # I
    .param p2, "color"    # I

    .prologue
    .line 128
    iget-object v4, p0, Lcom/android/camera/ui/BottomBar;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 129
    .local v3, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 130
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    instance-of v4, v2, Lcom/android/camera/ui/AnimatedCircleDrawable;

    if-eqz v4, :cond_1

    move-object v0, v2

    .line 131
    check-cast v0, Lcom/android/camera/ui/AnimatedCircleDrawable;

    .line 132
    .local v0, "animatedCircleDrawable":Lcom/android/camera/ui/AnimatedCircleDrawable;
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/AnimatedCircleDrawable;->setColor(I)V

    .line 133
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AnimatedCircleDrawable;->setAlpha(I)V

    .line 141
    .end local v0    # "animatedCircleDrawable":Lcom/android/camera/ui/AnimatedCircleDrawable;
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    instance-of v4, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 135
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 136
    .local v1, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v4

    if-nez v4, :cond_2

    .line 137
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 139
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private setCancelButtonDown()V
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlpha:I

    iget v1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundPressedColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BottomBar;->setCancelBackgroundColor(II)V

    .line 159
    return-void
.end method

.method private setCancelButtonUp()V
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlpha:I

    iget v1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BottomBar;->setCancelBackgroundColor(II)V

    .line 155
    return-void
.end method

.method private setCaptureButtonDown()V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlpha:I

    iget v1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundPressedColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BottomBar;->setPaintColor(II)V

    .line 151
    :cond_0
    return-void
.end method

.method private setCaptureButtonUp()V
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlpha:I

    iget v1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BottomBar;->setPaintColor(II)V

    .line 145
    return-void
.end method

.method private setOverlayBottomBar(Z)V
    .locals 1
    .param p1, "overlay"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/android/camera/ui/BottomBar;->mOverLayBottomBar:Z

    .line 307
    if-eqz p1, :cond_0

    .line 308
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlphaOverlay:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBar;->setBackgroundAlpha(I)V

    .line 309
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/BottomBar;->setButtonImageLevels(I)V

    .line 312
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :goto_0
    return-void

    .line 314
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlphaDefault:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBar;->setBackgroundAlpha(I)V

    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/BottomBar;->setButtonImageLevels(I)V

    .line 319
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundColor:I

    invoke-super {p0, v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setPaintColor(II)V
    .locals 2
    .param p1, "alpha"    # I
    .param p2, "color"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mAnimatedCircleDrawable:Lcom/android/camera/ui/AnimatedCircleDrawable;

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mAnimatedCircleDrawable:Lcom/android/camera/ui/AnimatedCircleDrawable;

    invoke-virtual {v1, p2}, Lcom/android/camera/ui/AnimatedCircleDrawable;->setColor(I)V

    .line 109
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mAnimatedCircleDrawable:Lcom/android/camera/ui/AnimatedCircleDrawable;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/AnimatedCircleDrawable;->setAlpha(I)V

    .line 115
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mIntentReviewLayout:Lcom/android/camera/ui/TopRightWeightedLayout;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mIntentReviewLayout:Lcom/android/camera/ui/TopRightWeightedLayout;

    .line 117
    invoke-virtual {v1}, Lcom/android/camera/ui/TopRightWeightedLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 118
    .local v0, "intentBackground":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 121
    .end local v0    # "intentBackground":Landroid/graphics/drawable/ColorDrawable;
    :cond_1
    return-void

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 112
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private setupShutterBackgroundForModeIndex(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 389
    iget-object v4, p0, Lcom/android/camera/ui/BottomBar;->mShutterButtonBackgroundConstantStates:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v4, v4, p1

    .line 390
    invoke-direct {p0, v4}, Lcom/android/camera/ui/BottomBar;->newDrawableFromConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v4

    .line 389
    invoke-direct {p0, v4}, Lcom/android/camera/ui/BottomBar;->applyCircleDrawableToShutterBackground(Landroid/graphics/drawable/LayerDrawable;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    .line 391
    .local v3, "shutterBackground":Landroid/graphics/drawable/LayerDrawable;
    iget-object v4, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4, v3}, Lcom/android/camera/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v4, p0, Lcom/android/camera/ui/BottomBar;->mCancelButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/camera/ui/BottomBar;->mShutterButtonBackgroundConstantStates:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v5, v5, p1

    .line 393
    invoke-direct {p0, v5}, Lcom/android/camera/ui/BottomBar;->newDrawableFromConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v5

    .line 392
    invoke-direct {p0, v5}, Lcom/android/camera/ui/BottomBar;->applyCircleDrawableToShutterBackground(Landroid/graphics/drawable/LayerDrawable;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 395
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 396
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iput-object v6, p0, Lcom/android/camera/ui/BottomBar;->mAnimatedCircleDrawable:Lcom/android/camera/ui/AnimatedCircleDrawable;

    .line 397
    iput-object v6, p0, Lcom/android/camera/ui/BottomBar;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 398
    instance-of v4, v1, Lcom/android/camera/ui/AnimatedCircleDrawable;

    if-eqz v4, :cond_1

    .line 399
    check-cast v1, Lcom/android/camera/ui/AnimatedCircleDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    iput-object v1, p0, Lcom/android/camera/ui/BottomBar;->mAnimatedCircleDrawable:Lcom/android/camera/ui/AnimatedCircleDrawable;

    .line 404
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/util/CameraUtil;->getCameraThemeColorId(ILandroid/content/Context;)I

    move-result v0

    .line 405
    .local v0, "colorId":I
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 406
    .local v2, "pressedColor":I
    invoke-direct {p0, v2}, Lcom/android/camera/ui/BottomBar;->setBackgroundPressedColor(I)V

    .line 407
    invoke-direct {p0}, Lcom/android/camera/ui/BottomBar;->refreshPaintColor()V

    .line 408
    return-void

    .line 400
    .end local v0    # "colorId":I
    .end local v2    # "pressedColor":I
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v4, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_0

    .line 401
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    iput-object v1, p0, Lcom/android/camera/ui/BottomBar;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_0
.end method


# virtual methods
.method public animateToFullSize(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 512
    iget-boolean v1, p0, Lcom/android/camera/ui/BottomBar;->mDrawCircle:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mAnimatedCircleDrawable:Lcom/android/camera/ui/AnimatedCircleDrawable;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mAnimatedCircleDrawable:Lcom/android/camera/ui/AnimatedCircleDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/AnimatedCircleDrawable;->animateToFullSize()V

    .line 514
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/BottomBar;->mDrawCircle:Z

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 518
    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 519
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 517
    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/BottomBar;->crossfadeDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    .line 520
    .local v0, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 522
    return-void
.end method

.method public animateToVideoStop(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 496
    iget-boolean v1, p0, Lcom/android/camera/ui/BottomBar;->mOverLayBottomBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mAnimatedCircleDrawable:Lcom/android/camera/ui/AnimatedCircleDrawable;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mAnimatedCircleDrawable:Lcom/android/camera/ui/AnimatedCircleDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/AnimatedCircleDrawable;->animateToSmallRadius()V

    .line 498
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/BottomBar;->mDrawCircle:Z

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 502
    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 503
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 501
    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/BottomBar;->crossfadeDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    .line 504
    .local v0, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 506
    return-void
.end method

.method public isShutterButtonEnabled()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isShutterButtonPressed()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 163
    const v0, 0x7f0f00b3

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCaptureLayout:Landroid/widget/FrameLayout;

    .line 165
    const v0, 0x7f0f00b9

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 169
    const v0, 0x7f0f01e5

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopRightWeightedLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomBar;->mIntentReviewLayout:Lcom/android/camera/ui/TopRightWeightedLayout;

    .line 172
    const v0, 0x7f0f00b4

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/ui/BottomBar$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/BottomBar$1;-><init>(Lcom/android/camera/ui/BottomBar;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    const v0, 0x7f0f00ba

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCancelButton:Landroid/widget/ImageButton;

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/camera/ui/BottomBar$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/BottomBar$2;-><init>(Lcom/android/camera/ui/BottomBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    const v0, 0x7f0f01e7

    invoke-direct {p0, v0}, Lcom/android/camera/ui/BottomBar;->extendTouchAreaToMatchParent(I)V

    .line 213
    return-void
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 325
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 326
    .local v2, "measureWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 327
    .local v1, "measureHeight":I
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/BottomBar;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    if-nez v4, :cond_2

    .line 332
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/operation/BottomBarOperation;->onMeasure(II)V

    .line 333
    sget-object v4, Lcom/android/camera/ui/BottomBar;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Capture layout helper needs to be set first."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/BottomBar;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v4}, Lcom/android/camera/CaptureLayoutHelper;->getBottomBarRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 337
    .local v0, "bottomBarRect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    .line 336
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 338
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 336
    invoke-super {p0, v4, v5}, Lcom/android/camera/ui/operation/BottomBarOperation;->onMeasure(II)V

    .line 340
    iget-object v4, p0, Lcom/android/camera/ui/BottomBar;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v4}, Lcom/android/camera/CaptureLayoutHelper;->shouldOverlayBottomBar()Z

    move-result v3

    .line 341
    .local v3, "shouldOverlayBottomBar":Z
    invoke-direct {p0, v3}, Lcom/android/camera/ui/BottomBar;->setOverlayBottomBar(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public setBackgroundAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 415
    iput p1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlpha:I

    .line 416
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlpha:I

    iget v1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BottomBar;->setPaintColor(II)V

    .line 417
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlpha:I

    iget v1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BottomBar;->setCancelBackgroundColor(II)V

    .line 418
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 354
    iput p1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundColor:I

    .line 355
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlpha:I

    iget v1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BottomBar;->setPaintColor(II)V

    .line 356
    iget v0, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundAlpha:I

    iget v1, p0, Lcom/android/camera/ui/BottomBar;->mBackgroundColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BottomBar;->setCancelBackgroundColor(II)V

    .line 357
    return-void
.end method

.method public setColorsForModeIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/android/camera/ui/BottomBar;->setupShutterBackgroundForModeIndex(I)V

    .line 412
    return-void
.end method

.method public setShutterButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/ui/BottomBar$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/BottomBar$4;-><init>(Lcom/android/camera/ui/BottomBar;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method

.method public setShutterButtonEnabledImmediately(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BottomBar;->setShutterButtonImportantToA11y(Z)V

    .line 439
    return-void
.end method

.method public setShutterButtonIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 486
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 490
    return-void
.end method

.method public setShutterButtonImportantToA11y(Z)V
    .locals 2
    .param p1, "important"    # Z

    .prologue
    .line 453
    if-eqz p1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImportantForAccessibility(I)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method public transitionToCancel()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 257
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCaptureLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mIntentReviewLayout:Lcom/android/camera/ui/TopRightWeightedLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TopRightWeightedLayout;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 261
    invoke-super {p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToCancel()V

    .line 262
    return-void
.end method

.method public transitionToCapture()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCaptureLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mIntentReviewLayout:Lcom/android/camera/ui/TopRightWeightedLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopRightWeightedLayout;->setVisibility(I)V

    .line 249
    invoke-super {p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToCapture()V

    .line 250
    return-void
.end method

.method public transitionToIntentCaptureLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 269
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mIntentReviewLayout:Lcom/android/camera/ui/TopRightWeightedLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopRightWeightedLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCaptureLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 273
    invoke-super {p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToIntentCaptureLayout()V

    .line 274
    return-void
.end method

.method public transitionToIntentReviewLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 281
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCaptureLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mIntentReviewLayout:Lcom/android/camera/ui/TopRightWeightedLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TopRightWeightedLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 285
    invoke-super {p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToIntentReviewLayout()V

    .line 286
    return-void
.end method
