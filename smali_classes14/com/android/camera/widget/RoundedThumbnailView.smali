.class public Lcom/android/camera/widget/RoundedThumbnailView;
.super Landroid/view/View;
.source "RoundedThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;,
        Lcom/android/camera/widget/RoundedThumbnailView$Callback;
    }
.end annotation


# static fields
.field private static final HIT_STATE_CIRCLE_OPACITY_BEGIN:F = 0.7f

.field private static final HIT_STATE_CIRCLE_OPACITY_END:F = 0.0f

.field private static final HIT_STATE_CIRCLE_OPACITY_HIDDEN:F = -1.0f

.field private static final HIT_STATE_DURATION_MS:J = 0x96L

.field private static final RIPPLE_DURATION_MS:J = 0xc8L

.field private static final RIPPLE_OPACITY_BEGIN:F = 0.4f

.field private static final RIPPLE_OPACITY_END:F = 0.0f

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final THUMBNAIL_REVEAL_CIRCLE_OPACITY_BEGIN:F = 0.5f

.field private static final THUMBNAIL_REVEAL_CIRCLE_OPACITY_END:F = 0.0f

.field private static final THUMBNAIL_SHRINK_DURATION_MS:J = 0xc8L

.field private static final THUMBNAIL_STRETCH_DURATION_MS:J = 0xc8L


# instance fields
.field private mBackgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

.field private mCallback:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/widget/RoundedThumbnailView$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentHitStateCircleOpacity:F

.field private mCurrentRevealCircleOpacity:F

.field private mCurrentRippleRingDiameter:F

.field private mCurrentRippleRingOpacity:F

.field private mCurrentRippleRingThickness:F

.field private mCurrentThumbnailDiameter:F

.field private mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

.field private final mHitStateCirclePaint:Landroid/graphics/Paint;

.field private mIsThumbnailSet:Z

.field private mLockVisibility:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mPendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

.field private final mRevealCirclePaint:Landroid/graphics/Paint;

.field private mRippleAnimator:Landroid/animation/ValueAnimator;

.field private mRippleDurationMs:J

.field private final mRipplePaint:Landroid/graphics/Paint;

.field private mRippleRingDiameterBegin:F

.field private mRippleRingDiameterEnd:F

.field private mRippleRingThicknessBegin:F

.field private mRippleRingThicknessEnd:F

.field private mRippleStartDelayMs:J

.field private mThumbnailAnimatorSet:Landroid/animation/AnimatorSet;

.field private mThumbnailPadding:F

.field private mThumbnailShrinkDiameterBegin:F

.field private mThumbnailShrinkDiameterEnd:F

.field private mThumbnailShrinkDurationMs:J

.field private mThumbnailStretchDiameterBegin:F

.field private mThumbnailStretchDiameterEnd:F

.field private mThumbnailStretchDurationMs:J

.field private mViewRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "RoundedThumbnailView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0xc8

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 250
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 203
    iput-boolean v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mLockVisibility:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mIsThumbnailSet:Z

    .line 208
    new-instance v1, Lcom/android/camera/widget/RoundedThumbnailView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/RoundedThumbnailView$1;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 252
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCallback:Lcom/google/common/base/Optional;

    .line 255
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailPadding:F

    .line 260
    iput-wide v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailStretchDurationMs:J

    .line 261
    iput-wide v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailShrinkDurationMs:J

    .line 263
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailStretchDiameterBegin:F

    .line 265
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailStretchDiameterEnd:F

    .line 266
    iget v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailStretchDiameterEnd:F

    iput v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailShrinkDiameterBegin:F

    .line 268
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailShrinkDiameterEnd:F

    .line 270
    const/high16 v0, 0x3f000000    # 0.5f

    .line 271
    .local v0, "startDelayRatio":F
    iget-wide v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailStretchDurationMs:J

    long-to-float v1, v2

    mul-float/2addr v1, v0

    float-to-long v2, v1

    iput-wide v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleStartDelayMs:J

    .line 272
    iput-wide v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleDurationMs:J

    .line 274
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingDiameterEnd:F

    .line 276
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingDiameterEnd:F

    iget v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingDiameterEnd:F

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mViewRect:Landroid/graphics/RectF;

    .line 279
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingDiameterBegin:F

    .line 281
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingThicknessBegin:F

    .line 283
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingThicknessEnd:F

    .line 285
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentHitStateCircleOpacity:F

    .line 287
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mHitStateCirclePaint:Landroid/graphics/Paint;

    .line 288
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mHitStateCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 289
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mHitStateCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mHitStateCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRipplePaint:Landroid/graphics/Paint;

    .line 293
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 294
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRipplePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 297
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRevealCirclePaint:Landroid/graphics/Paint;

    .line 298
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRevealCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRevealCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRevealCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 303
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 304
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mOutlinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingThicknessEnd:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 307
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/RoundedThumbnailView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCallback:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/widget/RoundedThumbnailView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/RoundedThumbnailView;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingThicknessEnd:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/widget/RoundedThumbnailView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/RoundedThumbnailView;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentRippleRingOpacity:F

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/widget/RoundedThumbnailView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/RoundedThumbnailView;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentThumbnailDiameter:F

    return p1
.end method

.method static synthetic access$402(Lcom/android/camera/widget/RoundedThumbnailView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/RoundedThumbnailView;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentRevealCircleOpacity:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/RoundedThumbnailView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/widget/RoundedThumbnailView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/RoundedThumbnailView;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->processRevealRequests()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/widget/RoundedThumbnailView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/RoundedThumbnailView;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentRippleRingDiameter:F

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/widget/RoundedThumbnailView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/RoundedThumbnailView;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentRippleRingThickness:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/widget/RoundedThumbnailView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/RoundedThumbnailView;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingThicknessBegin:F

    return v0
.end method

.method private clearAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 503
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 505
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 508
    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 513
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 516
    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    .line 518
    :cond_1
    return-void
.end method

.method private processRevealRequests()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mBackgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 657
    :cond_0
    return-void
.end method

.method private runPendingRequestAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 526
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v5, :cond_0

    .line 527
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    iput-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mBackgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 528
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mBackgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v5}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishRippleAnimation()V

    .line 529
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mBackgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v5}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishThumbnailAnimation()V

    .line 532
    :cond_0
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mPendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    iput-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 533
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mPendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 538
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-static {v5}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->access$200(Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 539
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentRevealCircleOpacity:F

    .line 540
    iget v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailShrinkDiameterEnd:F

    iput v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentThumbnailDiameter:F

    .line 541
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->invalidate()V

    .line 542
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v5, :cond_1

    .line 544
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v5}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishThumbnailAnimation()V

    .line 545
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v5}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishRippleAnimation()V

    .line 547
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v5}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->getAccessibilityString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/camera/widget/RoundedThumbnailView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 548
    invoke-direct {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->processRevealRequests()V

    .line 650
    :cond_1
    :goto_0
    return-void

    .line 552
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->clearAnimations()V

    .line 555
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 558
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10c000d

    .line 557
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 564
    .local v4, "stretchInterpolator":Landroid/view/animation/Interpolator;
    :goto_1
    new-array v5, v10, [F

    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailStretchDiameterBegin:F

    aput v6, v5, v8

    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailStretchDiameterEnd:F

    aput v6, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 566
    .local v3, "stretchAnimator":Landroid/animation/ValueAnimator;
    iget-wide v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailStretchDurationMs:J

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 567
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 568
    new-instance v5, Lcom/android/camera/widget/RoundedThumbnailView$2;

    invoke-direct {v5, p0}, Lcom/android/camera/widget/RoundedThumbnailView$2;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 582
    move-object v2, v4

    .line 583
    .local v2, "shrinkInterpolator":Landroid/view/animation/Interpolator;
    new-array v5, v10, [F

    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailShrinkDiameterBegin:F

    aput v6, v5, v8

    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailShrinkDiameterEnd:F

    aput v6, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 585
    .local v1, "shrinkAnimator":Landroid/animation/ValueAnimator;
    iget-wide v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailShrinkDurationMs:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 586
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 587
    new-instance v5, Lcom/android/camera/widget/RoundedThumbnailView$3;

    invoke-direct {v5, p0}, Lcom/android/camera/widget/RoundedThumbnailView$3;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 596
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    .line 597
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v6, v10, [Landroid/animation/Animator;

    aput-object v3, v6, v8

    aput-object v1, v6, v9

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 598
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/camera/widget/RoundedThumbnailView$4;

    invoke-direct {v6, p0}, Lcom/android/camera/widget/RoundedThumbnailView$4;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 610
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 615
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/ui/motion/InterpolatorHelper;->getLinearOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 617
    .local v0, "rippleInterpolator":Landroid/view/animation/Interpolator;
    new-array v5, v10, [F

    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingDiameterBegin:F

    aput v6, v5, v8

    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingDiameterEnd:F

    aput v6, v5, v9

    .line 618
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    .line 619
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    iget-wide v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleDurationMs:J

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 620
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 621
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/widget/RoundedThumbnailView$5;

    invoke-direct {v6, p0}, Lcom/android/camera/widget/RoundedThumbnailView$5;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 630
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/widget/RoundedThumbnailView$6;

    invoke-direct {v6, p0}, Lcom/android/camera/widget/RoundedThumbnailView$6;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 644
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    iget-wide v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleStartDelayMs:J

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 645
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 648
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v5}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->getAccessibilityString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/camera/widget/RoundedThumbnailView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 560
    .end local v0    # "rippleInterpolator":Landroid/view/animation/Interpolator;
    .end local v1    # "shrinkAnimator":Landroid/animation/ValueAnimator;
    .end local v2    # "shrinkInterpolator":Landroid/view/animation/Interpolator;
    .end local v3    # "stretchAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "stretchInterpolator":Landroid/view/animation/Interpolator;
    :cond_3
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .restart local v4    # "stretchInterpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_1
.end method


# virtual methods
.method public getThumbnailFinalDiameter()F
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailShrinkDiameterEnd:F

    return v0
.end method

.method public getThumbnailPadding()F
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailPadding:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public hideThumbnail()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 460
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 462
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 464
    invoke-direct {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->clearAnimations()V

    .line 467
    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mPendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 468
    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 469
    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mBackgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mIsThumbnailSet:Z

    .line 473
    return-void
.end method

.method public isThumbnailSet()Z
    .locals 3

    .prologue
    .line 478
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isThumbnailSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mIsThumbnailSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 479
    iget-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mIsThumbnailSet:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v8, 0x40000000    # 2.0f

    .line 318
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    .line 321
    .local v0, "centerX":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v1, v6

    .line 323
    .local v1, "centerY":F
    iget v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingDiameterEnd:F

    .line 324
    .local v5, "viewDiameter":F
    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mThumbnailShrinkDiameterEnd:F

    .line 326
    .local v2, "finalDiameter":F
    iget-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 329
    iget-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mBackgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v6, :cond_0

    .line 330
    iget-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mBackgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v6}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->getThumbnailPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 331
    .local v4, "thumbnailPaint":Landroid/graphics/Paint;
    if-eqz v4, :cond_0

    .line 333
    div-float v3, v2, v5

    .line 335
    .local v3, "scaleRatio":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 336
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 337
    iget-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v6, v0, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 342
    div-float v6, v5, v8

    iget-object v7, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 343
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 348
    .end local v3    # "scaleRatio":F
    .end local v4    # "thumbnailPaint":Landroid/graphics/Paint;
    :cond_0
    iget-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v6, :cond_3

    .line 350
    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentRippleRingThickness:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 352
    iget-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRipplePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentRippleRingOpacity:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 353
    iget-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRipplePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentRippleRingThickness:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 355
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 356
    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentRippleRingDiameter:F

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 357
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 361
    :cond_1
    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentThumbnailDiameter:F

    iget v7, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingDiameterEnd:F

    div-float v3, v6, v7

    .line 363
    .restart local v3    # "scaleRatio":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 364
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 367
    iget-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mForegroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v6}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->getThumbnailPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 368
    .restart local v4    # "thumbnailPaint":Landroid/graphics/Paint;
    if-eqz v4, :cond_2

    .line 369
    iget-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v6, v0, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 377
    :cond_2
    iget-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRevealCirclePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentRevealCircleOpacity:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 378
    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingDiameterEnd:F

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRevealCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 385
    .end local v3    # "scaleRatio":F
    .end local v4    # "thumbnailPaint":Landroid/graphics/Paint;
    :cond_3
    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentHitStateCircleOpacity:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 387
    div-float v3, v2, v5

    .line 388
    .restart local v3    # "scaleRatio":F
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 391
    iget-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mHitStateCirclePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCurrentHitStateCircleOpacity:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 392
    iget v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingDiameterEnd:F

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mHitStateCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 396
    .end local v3    # "scaleRatio":F
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 312
    iget v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mRippleRingDiameterEnd:F

    float-to-int v0, v1

    .line 313
    .local v0, "desiredSize":I
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->setMeasuredDimension(II)V

    .line 314
    return-void
.end method

.method public setAndLockThumbnailVisibilityWithoutClear(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    const/4 v0, 0x0

    .line 490
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 492
    iput-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mLockVisibility:Z

    .line 493
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 495
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mLockVisibility:Z

    .line 496
    return-void
.end method

.method public setCallback(Lcom/android/camera/widget/RoundedThumbnailView$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/camera/widget/RoundedThumbnailView$Callback;

    .prologue
    .line 404
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mCallback:Lcom/google/common/base/Optional;

    .line 405
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "thumbnailBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 444
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 446
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mPendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mIsThumbnailSet:Z

    .line 448
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mPendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->setThumbnailBitmap(Landroid/graphics/Bitmap;I)V

    .line 450
    invoke-direct {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->runPendingRequestAnimation()V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Pending thumb was null!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mLockVisibility:Z

    if-nez v0, :cond_0

    .line 485
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    :cond_0
    return-void
.end method

.method public startRevealThumbnailAnimation(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "accessibilityString"    # Ljava/lang/String;
    .param p2, "needAnim"    # Z

    .prologue
    .line 432
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 434
    new-instance v0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;-><init>(FLjava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->mPendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 435
    return-void
.end method
