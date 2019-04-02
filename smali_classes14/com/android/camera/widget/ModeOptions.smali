.class public Lcom/android/camera/widget/ModeOptions;
.super Landroid/widget/FrameLayout;
.source "ModeOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ModeOptions$Listener;
    }
.end annotation


# static fields
.field public static final BAR_INVALID:I = -0x1

.field public static final BAR_PANO:I = 0x1

.field public static final BAR_STANDARD:I = 0x0

.field private static final HIDE_ALPHA_ANIMATION_TIME:I = 0xc8

.field public static final PADDING_ANIMATION_TIME:I = 0x15e

.field private static final RADIUS_ANIMATION_TIME:I = 0xfa

.field private static final SHOW_ALPHA_ANIMATION_TIME:I = 0x15e


# instance fields
.field private mActiveBar:Landroid/view/ViewGroup;

.field private mAnimateFrom:Landroid/graphics/RectF;

.field private mBackgroundColor:I

.field private mDrawCircle:Z

.field private mFill:Z

.field private mHiddenAnimator:Landroid/animation/AnimatorSet;

.field private mIsHiddenOrHiding:Z

.field private mIsPortrait:Z

.field private mListener:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/widget/ModeOptions$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainBar:Landroid/view/ViewGroup;

.field private mModeOptionsButtons:Landroid/widget/LinearLayout;

.field private mRadius:F

.field private mViewToShowHide:Landroid/view/View;

.field private mVisibleAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mAnimateFrom:Landroid/graphics/RectF;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ModeOptions;->mRadius:F

    .line 91
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mListener:Lcom/google/common/base/Optional;

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/widget/ModeOptions;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/ModeOptions;
    .param p1, "x1"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/android/camera/widget/ModeOptions;->mRadius:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/widget/ModeOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/ModeOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/camera/widget/ModeOptions;->mDrawCircle:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/widget/ModeOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/ModeOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/camera/widget/ModeOptions;->mFill:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/widget/ModeOptions;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ModeOptions;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mActiveBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/widget/ModeOptions;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/ModeOptions;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/widget/ModeOptions;->mActiveBar:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/widget/ModeOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ModeOptions;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/camera/widget/ModeOptions;->mIsPortrait:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/widget/ModeOptions;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ModeOptions;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mViewToShowHide:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/widget/ModeOptions;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ModeOptions;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mMainBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private setupAnimators()V
    .locals 14

    .prologue
    .line 169
    iget-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mVisibleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_0

    .line 170
    iget-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mVisibleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->end()V

    .line 172
    :cond_0
    iget-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mHiddenAnimator:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_1

    .line 173
    iget-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mHiddenAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->end()V

    .line 176
    :cond_1
    iget-boolean v10, p0, Lcom/android/camera/widget/ModeOptions;->mIsPortrait:Z

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModeOptions;->getWidth()I

    move-result v10

    int-to-float v4, v10

    .line 180
    .local v4, "fullSize":F
    :goto_0
    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/widget/ModeOptions;->mAnimateFrom:Landroid/graphics/RectF;

    .line 181
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    aput v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/camera/widget/ModeOptions;->mAnimateFrom:Landroid/graphics/RectF;

    .line 182
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float v12, v4, v12

    aput v12, v10, v11

    .line 181
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 183
    .local v9, "radiusAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v10, 0xfa

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 184
    new-instance v10, Lcom/android/camera/widget/ModeOptions$1;

    invoke-direct {v10, p0}, Lcom/android/camera/widget/ModeOptions$1;-><init>(Lcom/android/camera/widget/ModeOptions;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    new-instance v10, Lcom/android/camera/widget/ModeOptions$2;

    invoke-direct {v10, p0}, Lcom/android/camera/widget/ModeOptions$2;-><init>(Lcom/android/camera/widget/ModeOptions;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 201
    .local v0, "alphaAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v10, 0x15e

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 202
    new-instance v10, Lcom/android/camera/widget/ModeOptions$3;

    invoke-direct {v10, p0}, Lcom/android/camera/widget/ModeOptions$3;-><init>(Lcom/android/camera/widget/ModeOptions;)V

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 208
    new-instance v10, Lcom/android/camera/widget/ModeOptions$4;

    invoke-direct {v10, p0}, Lcom/android/camera/widget/ModeOptions$4;-><init>(Lcom/android/camera/widget/ModeOptions;)V

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/camera/widget/ModeOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090200

    .line 216
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 217
    .local v3, "deltaX":I
    iget-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mActiveBar:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 218
    .local v2, "childCount":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v8, "paddingAnimators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 221
    iget-boolean v10, p0, Lcom/android/camera/widget/ModeOptions;->mIsPortrait:Z

    if-eqz v10, :cond_3

    .line 222
    iget-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mActiveBar:Landroid/view/ViewGroup;

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, "button":Landroid/view/View;
    :goto_2
    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    sub-int v12, v2, v5

    mul-int/2addr v12, v3

    int-to-float v12, v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 228
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 229
    .local v6, "paddingAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v10, 0x15e

    invoke-virtual {v6, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 230
    new-instance v10, Lcom/android/camera/widget/ModeOptions$5;

    invoke-direct {v10, p0, v1}, Lcom/android/camera/widget/ModeOptions$5;-><init>(Lcom/android/camera/widget/ModeOptions;Landroid/view/View;)V

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 242
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "alphaAnimator":Landroid/animation/ValueAnimator;
    .end local v1    # "button":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "deltaX":I
    .end local v4    # "fullSize":F
    .end local v5    # "i":I
    .end local v6    # "paddingAnimator":Landroid/animation/ValueAnimator;
    .end local v8    # "paddingAnimators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v9    # "radiusAnimator":Landroid/animation/ValueAnimator;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/widget/ModeOptions;->getHeight()I

    move-result v10

    int-to-float v4, v10

    goto/16 :goto_0

    .line 224
    .restart local v0    # "alphaAnimator":Landroid/animation/ValueAnimator;
    .restart local v2    # "childCount":I
    .restart local v3    # "deltaX":I
    .restart local v4    # "fullSize":F
    .restart local v5    # "i":I
    .restart local v8    # "paddingAnimators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v9    # "radiusAnimator":Landroid/animation/ValueAnimator;
    :cond_3
    iget-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mActiveBar:Landroid/view/ViewGroup;

    add-int/lit8 v11, v2, -0x1

    sub-int/2addr v11, v5

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "button":Landroid/view/View;
    goto :goto_2

    .line 245
    .end local v1    # "button":Landroid/view/View;
    :cond_4
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 246
    .local v7, "paddingAnimatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 248
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mVisibleAnimator:Landroid/animation/AnimatorSet;

    .line 249
    iget-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mVisibleAnimator:Landroid/animation/AnimatorSet;

    sget-object v11, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    iget-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mVisibleAnimator:Landroid/animation/AnimatorSet;

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v0, v11, v12

    const/4 v12, 0x2

    aput-object v7, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 255
    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/widget/ModeOptions;->mAnimateFrom:Landroid/graphics/RectF;

    .line 256
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float v12, v4, v12

    aput v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/camera/widget/ModeOptions;->mAnimateFrom:Landroid/graphics/RectF;

    .line 257
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 256
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 258
    const-wide/16 v10, 0xfa

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 259
    new-instance v10, Lcom/android/camera/widget/ModeOptions$6;

    invoke-direct {v10, p0}, Lcom/android/camera/widget/ModeOptions$6;-><init>(Lcom/android/camera/widget/ModeOptions;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    new-instance v10, Lcom/android/camera/widget/ModeOptions$7;

    invoke-direct {v10, p0}, Lcom/android/camera/widget/ModeOptions$7;-><init>(Lcom/android/camera/widget/ModeOptions;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 280
    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 281
    const-wide/16 v10, 0xc8

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 282
    new-instance v10, Lcom/android/camera/widget/ModeOptions$8;

    invoke-direct {v10, p0}, Lcom/android/camera/widget/ModeOptions$8;-><init>(Lcom/android/camera/widget/ModeOptions;)V

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    new-instance v10, Lcom/android/camera/widget/ModeOptions$9;

    invoke-direct {v10, p0}, Lcom/android/camera/widget/ModeOptions$9;-><init>(Lcom/android/camera/widget/ModeOptions;)V

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mHiddenAnimator:Landroid/animation/AnimatorSet;

    .line 305
    iget-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mHiddenAnimator:Landroid/animation/AnimatorSet;

    sget-object v11, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    iget-object v10, p0, Lcom/android/camera/widget/ModeOptions;->mHiddenAnimator:Landroid/animation/AnimatorSet;

    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v0, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 308
    return-void

    .line 200
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 280
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setupToggleButtonParams()V
    .locals 5

    .prologue
    .line 156
    iget-boolean v4, p0, Lcom/android/camera/widget/ModeOptions;->mIsPortrait:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/widget/ModeOptions;->getHeight()I

    move-result v2

    .line 158
    .local v2, "size":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/camera/widget/ModeOptions;->mModeOptionsButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/android/camera/widget/ModeOptions;->mModeOptionsButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "button":Landroid/view/View;
    instance-of v4, v0, Lcom/android/camera/MultiToggleImageButton;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 161
    check-cast v3, Lcom/android/camera/MultiToggleImageButton;

    .line 162
    .local v3, "toggleButton":Lcom/android/camera/MultiToggleImageButton;
    invoke-virtual {v3, v2}, Lcom/android/camera/MultiToggleImageButton;->setParentSize(I)V

    .line 163
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/MultiToggleImageButton;->setAnimDirection(I)V

    .line 158
    .end local v3    # "toggleButton":Lcom/android/camera/MultiToggleImageButton;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    .end local v0    # "button":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ModeOptions;->getWidth()I

    move-result v2

    goto :goto_0

    .line 166
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_2
    return-void
.end method


# virtual methods
.method public animateHidden()V
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/camera/widget/ModeOptions;->mIsHiddenOrHiding:Z

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mVisibleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 329
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mHiddenAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 330
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mHiddenAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 331
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mListener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mListener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/ModeOptions$Listener;

    invoke-interface {v0}, Lcom/android/camera/widget/ModeOptions$Listener;->onBeginToHideModeOptions()V

    .line 335
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/ModeOptions;->mIsHiddenOrHiding:Z

    .line 336
    return-void
.end method

.method public animateVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-boolean v0, p0, Lcom/android/camera/widget/ModeOptions;->mIsHiddenOrHiding:Z

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mViewToShowHide:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mViewToShowHide:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mHiddenAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 316
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mVisibleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 317
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModeOptions;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mVisibleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 319
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mListener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mListener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/ModeOptions$Listener;

    invoke-interface {v0}, Lcom/android/camera/widget/ModeOptions$Listener;->onBeginToShowModeOptions()V

    .line 323
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/widget/ModeOptions;->mIsHiddenOrHiding:Z

    .line 324
    return-void
.end method

.method public getMainBar()I
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mMainBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/widget/ModeOptions;->mModeOptionsButtons:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isHiddenOrHiding()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/widget/ModeOptions;->mIsHiddenOrHiding:Z

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/ModeOptions;->mIsHiddenOrHiding:Z

    .line 118
    const v0, 0x7f0f0190

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ModeOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mModeOptionsButtons:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mModeOptionsButtons:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mActiveBar:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mMainBar:Landroid/view/ViewGroup;

    .line 120
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 152
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 153
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 148
    return-void
.end method

.method public setListener(Lcom/android/camera/widget/ModeOptions$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/widget/ModeOptions$Listener;

    .prologue
    .line 108
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mListener:Lcom/google/common/base/Optional;

    .line 109
    return-void
.end method

.method public setMainBar(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModeOptions;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ModeOptions;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 135
    :goto_1
    iget-object v1, p0, Lcom/android/camera/widget/ModeOptions;->mMainBar:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 136
    return-void

    .line 132
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/widget/ModeOptions;->mModeOptionsButtons:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/widget/ModeOptions;->mActiveBar:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/camera/widget/ModeOptions;->mMainBar:Landroid/view/ViewGroup;

    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setMainBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions;->mMainBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public setViewToShowHide(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/camera/widget/ModeOptions;->mViewToShowHide:Landroid/view/View;

    .line 113
    return-void
.end method
