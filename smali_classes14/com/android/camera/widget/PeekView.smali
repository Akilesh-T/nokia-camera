.class public Lcom/android/camera/widget/PeekView;
.super Landroid/widget/ImageView;
.source "PeekView.java"


# static fields
.field private static final FILMSTRIP_SCALE:F = 0.7f

.field private static final PEEK_IN_DURATION_MS:J = 0xc8L

.field private static final PEEK_OUT_DURATION_MS:J = 0xc8L

.field private static final PEEK_STAY_DURATION_MS:J = 0x64L

.field private static final ROTATE_ANGLE:F = -7.0f


# instance fields
.field private mAnimationCanceled:Z

.field private mDrawableBound:Landroid/graphics/Rect;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mPeekAnimator:Landroid/animation/AnimatorSet;

.field private mPeekRotateAngle:F

.field private mRotateScale:F

.field private mRotationPivot:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0}, Lcom/android/camera/widget/PeekView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0}, Lcom/android/camera/widget/PeekView;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-direct {p0}, Lcom/android/camera/widget/PeekView;->init()V

    .line 69
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/widget/PeekView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/PeekView;
    .param p1, "x1"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/android/camera/widget/PeekView;->mPeekRotateAngle:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/PeekView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/PeekView;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/camera/widget/PeekView;->mRotateScale:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/PeekView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/PeekView;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/widget/PeekView;->mAnimationCanceled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/widget/PeekView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/PeekView;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/camera/widget/PeekView;->mAnimationCanceled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/widget/PeekView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/PeekView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/widget/PeekView;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/PeekView;->setVisibility(I)V

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/PeekView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/PeekView;->mRotationPivot:Landroid/graphics/Point;

    .line 73
    return-void
.end method


# virtual methods
.method public cancelPeekAnimation()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/camera/widget/PeekView;->isPeekAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/widget/PeekView;->mPeekAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/widget/PeekView;->clear()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/PeekView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    return-void
.end method

.method public isPeekAnimationRunning()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/widget/PeekView;->mPeekAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/widget/PeekView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 88
    iget v0, p0, Lcom/android/camera/widget/PeekView;->mPeekRotateAngle:F

    iget-object v1, p0, Lcom/android/camera/widget/PeekView;->mRotationPivot:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/widget/PeekView;->mRotationPivot:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/widget/PeekView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/widget/PeekView;->mDrawableBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/widget/PeekView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public startPeekAnimation(Landroid/graphics/Bitmap;ZLjava/lang/String;)V
    .locals 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "strong"    # Z
    .param p3, "accessibilityString"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v6, Lcom/android/camera/widget/PeekView$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/widget/PeekView$1;-><init>(Lcom/android/camera/widget/PeekView;)V

    .line 113
    .local v6, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 114
    .local v3, "peekAnimateIn":Landroid/animation/ValueAnimator;
    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 115
    .local v5, "peekAnimateStay":Landroid/animation/ValueAnimator;
    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 116
    .local v4, "peekAnimateOut":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 117
    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    const-wide/16 v10, 0xc8

    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    const-wide/16 v10, 0x64

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 120
    const-wide/16 v10, 0xc8

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 121
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/camera/widget/PeekView;->mPeekAnimator:Landroid/animation/AnimatorSet;

    .line 124
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/widget/PeekView;->mPeekAnimator:Landroid/animation/AnimatorSet;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/widget/PeekView;->mPeekAnimator:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/camera/widget/PeekView$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/camera/widget/PeekView$2;-><init>(Lcom/android/camera/widget/PeekView;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    if-eqz p2, :cond_0

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_0
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/camera/widget/PeekView;->mRotateScale:F

    .line 152
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PeekView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-direct {v9, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/camera/widget/PeekView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/widget/PeekView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/widget/PeekView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PeekView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f333333    # 0.7f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PeekView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3f333333    # 0.7f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    .line 153
    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/camera/util/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object v2

    .line 156
    .local v2, "drawDim":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PeekView;->getMeasuredWidth()I

    move-result v7

    .line 157
    .local v7, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PeekView;->getMeasuredHeight()I

    move-result v9

    iget v10, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    div-int/lit8 v8, v9, 0x2

    .line 158
    .local v8, "y":I
    new-instance v9, Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v7

    iget v11, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v11, v8

    invoke-direct {v9, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/camera/widget/PeekView;->mDrawableBound:Landroid/graphics/Rect;

    .line 159
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/widget/PeekView;->mRotationPivot:Landroid/graphics/Point;

    int-to-double v10, v8

    iget v12, v2, Landroid/graphics/Point;->y:I

    int-to-double v12, v12

    const-wide v14, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v10, v10

    invoke-virtual {v9, v7, v10}, Landroid/graphics/Point;->set(II)V

    .line 160
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/widget/PeekView;->mPeekAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PeekView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 163
    return-void

    .line 151
    .end local v2    # "drawDim":Landroid/graphics/Point;
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_0
    const/high16 v9, 0x3f000000    # 0.5f

    goto :goto_0

    .line 113
    nop

    :array_0
    .array-data 4
        0x0
        -0x3f200000    # -7.0f
    .end array-data

    .line 114
    :array_1
    .array-data 4
        -0x3f200000    # -7.0f
        -0x3f200000    # -7.0f
    .end array-data

    .line 115
    :array_2
    .array-data 4
        -0x3f200000    # -7.0f
        0x0
    .end array-data
.end method

.method public stopPeekAnimation()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/camera/widget/PeekView;->isPeekAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/camera/widget/PeekView;->mPeekAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/widget/PeekView;->clear()V

    goto :goto_0
.end method
