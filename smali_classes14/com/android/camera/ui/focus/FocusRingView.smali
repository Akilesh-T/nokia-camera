.class public Lcom/android/camera/ui/focus/FocusRingView;
.super Landroid/view/View;
.source "FocusRingView.java"

# interfaces
.implements Lcom/android/camera/ui/motion/Invalidator;
.implements Lcom/android/camera/ui/focus/FocusRing;
.implements Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;


# static fields
.field private static final FADE_IN_DURATION_MILLIS:F = 500.0f

.field private static final FADE_OUT_DURATION_MILLIS:F = 250.0f

.field private static final INVALID:I = -0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private currentFocusAnimation:Lcom/android/camera/ui/focus/FocusRingRenderer;

.field private isFirstDraw:Z

.field private final mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

.field private mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

.field private final mDefaultRadiusPx:F

.field private mDownX:F

.field private mDownY:F

.field private mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

.field private mLastMoveX:F

.field private mLastMoveY:F

.field private mLastRadiusPx:F

.field private mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

.field private mOrientation:I

.field private mPrepareTouchExposure:Z

.field private mPreviewSize:Landroid/graphics/RectF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRatioScale:Lcom/android/camera/ui/motion/LinearScale;

.field private mSlop:I

.field private mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

.field private mTouchExposureOffsetRatio:F

.field private mTouchExposureStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FocusRingView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .line 62
    iput-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    .line 64
    iput v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mOrientation:I

    .line 421
    iput-boolean v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    .line 422
    iput-boolean v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureStarted:Z

    .line 424
    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownX:F

    .line 425
    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownY:F

    .line 426
    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveX:F

    .line 427
    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveY:F

    .line 428
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mSlop:I

    .line 429
    iput v5, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/ui/focus/FocusRingView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 74
    .local v8, "res":Landroid/content/res/Resources;
    const v0, 0x7f0901d4

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDefaultRadiusPx:F

    .line 75
    iget v7, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDefaultRadiusPx:F

    .line 76
    .local v7, "focusCircleMinSize":F
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDefaultRadiusPx:F

    .line 78
    .local v6, "focusCircleMaxSize":F
    new-instance v0, Lcom/android/camera/ui/motion/LinearScale;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v1, v7, v6}, Lcom/android/camera/ui/motion/LinearScale;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mRatioScale:Lcom/android/camera/ui/motion/LinearScale;

    .line 79
    new-instance v0, Lcom/android/camera/ui/motion/DynamicAnimator;

    new-instance v1, Lcom/android/camera/ui/motion/AnimationClock$SystemTimeClock;

    invoke-direct {v1}, Lcom/android/camera/ui/motion/AnimationClock$SystemTimeClock;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/motion/DynamicAnimator;-><init>(Lcom/android/camera/ui/motion/Invalidator;Lcom/android/camera/ui/motion/AnimationClock;)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    .line 81
    new-instance v0, Lcom/android/camera/ui/focus/AutoFocusRing;

    iget-object v3, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    const/high16 v4, 0x43fa0000    # 500.0f

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/focus/AutoFocusRing;-><init>(Landroid/content/Context;Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;Lcom/android/camera/ui/motion/Invalidator;FF)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    .line 84
    new-instance v0, Lcom/android/camera/ui/focus/ManualFocusRing;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/android/camera/ui/focus/ManualFocusRing;-><init>(Landroid/content/Context;Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;Lcom/android/camera/ui/motion/Invalidator;F)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    iget-object v0, v0, Lcom/android/camera/ui/motion/DynamicAnimator;->animations:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    iget-object v0, v0, Lcom/android/camera/ui/motion/DynamicAnimator;->animations:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->isFirstDraw:Z

    .line 91
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDefaultRadiusPx:F

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastRadiusPx:F

    .line 92
    return-void
.end method

.method private centerAutofocusRing()V
    .locals 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    if-eqz v1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusRingView;->computeCenter()Landroid/graphics/Point;

    move-result-object v0

    .line 239
    .local v0, "center":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterX(I)V

    .line 240
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterY(I)V

    .line 242
    .end local v0    # "center":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method private computeCenter()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 246
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Computing center via preview size."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 250
    :goto_0
    return-object v0

    .line 249
    :cond_0
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Computing center via view bounds."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/camera/ui/focus/FocusRingView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/focus/FocusRingView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method private makePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "color"    # I

    .prologue
    .line 254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 255
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 256
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 259
    const v1, 0x7f0901d7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    return-object v0
.end method

.method private setRadius(F)V
    .locals 3
    .param p1, "radiusPx"    # F

    .prologue
    .line 228
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v2}, Lcom/android/camera/ui/motion/DynamicAnimator;->getTimeMillis()J

    move-result-wide v0

    .line 230
    .local v0, "tMs":J
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->currentFocusAnimation:Lcom/android/camera/ui/focus/FocusRingRenderer;

    if-eqz v2, :cond_0

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->currentFocusAnimation:Lcom/android/camera/ui/focus/FocusRingRenderer;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/camera/ui/focus/FocusRingRenderer;->setRadius(JF)V

    .line 232
    iput p1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastRadiusPx:F

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method public centerFocusLocation()V
    .locals 3

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusRingView;->computeCenter()Landroid/graphics/Point;

    move-result-object v0

    .line 187
    .local v0, "center":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterX(I)V

    .line 188
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterY(I)V

    .line 189
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->setCenterX(I)V

    .line 190
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->setCenterY(I)V

    .line 191
    return-void
.end method

.method public configurePreviewDimensions(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    .line 201
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDefaultRadiusPx:F

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastRadiusPx:F

    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/focus/ManualFocusRing;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->isFirstDraw:Z

    if-nez v0, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusRingView;->centerAutofocusRing()V

    .line 210
    :cond_1
    return-void
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;->getFocusState()I

    move-result v0

    goto :goto_0
.end method

.method public isActiveFocusRunning()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/ManualFocusRing;->isActive()Z

    move-result v0

    return v0
.end method

.method public isPassiveFocusRunning()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/AutoFocusRing;->isActive()Z

    move-result v0

    goto :goto_0
.end method

.method public isTouchExposureInProgress()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureStarted:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/AutoFocusRing;->recycle()V

    .line 98
    iput-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/ManualFocusRing;->recycle()V

    .line 102
    iput-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    .line 104
    :cond_1
    iput-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .line 105
    iput-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    .line 106
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 107
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->isFirstDraw:Z

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->isFirstDraw:Z

    .line 216
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusRingView;->centerAutofocusRing()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/motion/DynamicAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 225
    return-void
.end method

.method public onExternalTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    .line 306
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    if-nez v6, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v8

    .line 307
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    if-eqz v6, :cond_0

    .line 308
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    if-eqz v6, :cond_0

    .line 309
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v6}, Lcom/android/camera/ui/focus/ManualFocusRing;->isHolding()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 310
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    if-eqz v6, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "handle":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 398
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    if-eqz v6, :cond_2

    .line 399
    iput-boolean v8, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    .line 400
    iput v10, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownX:F

    .line 401
    iput v10, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownY:F

    .line 402
    iput v10, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveX:F

    .line 403
    iput v10, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveY:F

    .line 405
    :cond_2
    iget-boolean v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureStarted:Z

    if-eqz v6, :cond_3

    .line 406
    iput-boolean v8, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureStarted:Z

    .line 407
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    invoke-interface {v6}, Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;->onTouchExposureEnd()V

    .line 408
    const/4 v0, 0x1

    .line 413
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    iget-boolean v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureStarted:Z

    if-eqz v6, :cond_0

    :cond_4
    move v8, v7

    goto :goto_0

    .line 315
    :pswitch_1
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    if-eqz v6, :cond_5

    .line 316
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    invoke-interface {v6}, Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;->getFocusState()I

    move-result v6

    const/4 v9, 0x3

    if-ne v6, v9, :cond_6

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    .line 319
    :cond_5
    iget-boolean v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    if-eqz v6, :cond_3

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownX:F

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownY:F

    .line 322
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownX:F

    iput v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveX:F

    .line 323
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownY:F

    iput v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveY:F

    .line 324
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mSlop:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    .line 325
    invoke-virtual {p0}, Lcom/android/camera/ui/focus/FocusRingView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mSlop:I

    goto :goto_1

    :cond_6
    move v6, v8

    .line 316
    goto :goto_2

    .line 331
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureStarted:Z

    if-eqz v6, :cond_9

    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, "offsetRatio":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 334
    .local v1, "max_offset_range":F
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mOrientation:I

    sparse-switch v6, :sswitch_data_0

    .line 354
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveX:F

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveY:F

    .line 357
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    add-float/2addr v6, v2

    iput v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    .line 359
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    cmpl-float v6, v6, v11

    if-lez v6, :cond_8

    .line 360
    iput v11, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    .line 365
    :cond_7
    :goto_4
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    iget v9, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    invoke-virtual {v6, v9}, Lcom/android/camera/ui/focus/ManualFocusRing;->setTouchExposureOffsetRatio(F)V

    .line 366
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    iget v9, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    invoke-interface {v6, v9}, Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;->onTouchExposureChange(F)V

    goto :goto_1

    .line 336
    :sswitch_0
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v9

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 337
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    sub-float/2addr v6, v9

    div-float v2, v6, v1

    .line 338
    goto :goto_3

    .line 340
    :sswitch_1
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v9

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 341
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sub-float/2addr v6, v9

    div-float v2, v6, v1

    .line 342
    goto :goto_3

    .line 344
    :sswitch_2
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v9

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v9, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveY:F

    sub-float/2addr v6, v9

    div-float v2, v6, v1

    .line 346
    goto :goto_3

    .line 348
    :sswitch_3
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPreviewSize:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v9

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v9, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveX:F

    sub-float/2addr v6, v9

    div-float v2, v6, v1

    .line 350
    goto :goto_3

    .line 361
    :cond_8
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_7

    .line 362
    iput v10, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    goto :goto_4

    .line 367
    .end local v1    # "max_offset_range":F
    .end local v2    # "offsetRatio":F
    :cond_9
    iget-boolean v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    if-eqz v6, :cond_3

    .line 368
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sub-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 369
    .local v4, "x_diff":F
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    sub-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 371
    .local v5, "y_diff":F
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mSlop:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mSlop:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-ltz v6, :cond_3

    .line 373
    iget v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mOrientation:I

    sparse-switch v6, :sswitch_data_1

    .line 384
    :goto_5
    cmpg-float v6, v4, v5

    if-gez v6, :cond_a

    .line 385
    iput-boolean v7, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureStarted:Z

    .line 386
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    invoke-interface {v6}, Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;->onTouchExposureStart()V

    .line 387
    iget-object v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    iget v9, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    invoke-virtual {v6, v9}, Lcom/android/camera/ui/focus/ManualFocusRing;->setTouchExposureOffsetRatio(F)V

    goto/16 :goto_1

    .line 376
    :sswitch_4
    move v3, v4

    .line 377
    .local v3, "tmp":F
    move v4, v5

    .line 378
    move v5, v3

    .line 379
    goto :goto_5

    .line 389
    .end local v3    # "tmp":F
    :cond_a
    iput-boolean v8, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    .line 390
    iput v10, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownX:F

    .line 391
    iput v10, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownY:F

    .line 392
    iput v10, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveX:F

    .line 393
    iput v10, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveY:F

    goto/16 :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 334
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 373
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_4
        0x10e -> :sswitch_4
    .end sparse-switch
.end method

.method public setFocusLocation(FF)V
    .locals 2
    .param p1, "viewX"    # F
    .param p2, "viewY"    # F

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterX(I)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterY(I)V

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/ManualFocusRing;->setCenterX(I)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/ManualFocusRing;->setCenterY(I)V

    .line 182
    return-void
.end method

.method public setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .line 266
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 285
    iput p1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mOrientation:I

    .line 287
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v0, p1, v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->setOrientation(IZ)V

    .line 291
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    if-eqz v0, :cond_1

    .line 292
    iput-boolean v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    .line 293
    iput v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownX:F

    .line 294
    iput v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownY:F

    .line 295
    iput v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveX:F

    .line 296
    iput v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveY:F

    .line 298
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureStarted:Z

    if-eqz v0, :cond_2

    .line 299
    iput-boolean v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureStarted:Z

    .line 300
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;->onTouchExposureEnd()V

    .line 302
    :cond_2
    return-void
.end method

.method public setRadiusRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mRatioScale:Lcom/android/camera/ui/motion/LinearScale;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mRatioScale:Lcom/android/camera/ui/motion/LinearScale;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/motion/LinearScale;->clamp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/motion/LinearScale;->scale(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/focus/FocusRingView;->setRadius(F)V

    .line 196
    return-void
.end method

.method public setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    .line 272
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/focus/ManualFocusRing;->setTouchExposureSupport(Z)V

    .line 275
    :cond_0
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActiveFocus()V
    .locals 5

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v2}, Lcom/android/camera/ui/motion/DynamicAnimator;->invalidate()V

    .line 152
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v2}, Lcom/android/camera/ui/motion/DynamicAnimator;->getTimeMillis()J

    move-result-wide v0

    .line 154
    .local v0, "tMs":J
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->isExiting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/focus/AutoFocusRing;->stop(J)V

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    iget v3, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastRadiusPx:F

    iget v4, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastRadiusPx:F

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/camera/ui/focus/ManualFocusRing;->start(JFF)V

    .line 159
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    iput-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->currentFocusAnimation:Lcom/android/camera/ui/focus/FocusRingRenderer;

    .line 160
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    .line 161
    return-void
.end method

.method public startPassiveFocus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    .line 122
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v2}, Lcom/android/camera/ui/motion/DynamicAnimator;->invalidate()V

    .line 123
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v2}, Lcom/android/camera/ui/motion/DynamicAnimator;->getTimeMillis()J

    move-result-wide v0

    .line 125
    .local v0, "tMs":J
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->isExiting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/focus/ManualFocusRing;->stop(J)V

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iget v3, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastRadiusPx:F

    iget v4, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastRadiusPx:F

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/camera/ui/focus/AutoFocusRing;->start(JFF)V

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iput-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->currentFocusAnimation:Lcom/android/camera/ui/focus/FocusRingRenderer;

    .line 135
    iget-boolean v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    if-eqz v2, :cond_2

    .line 136
    iput-boolean v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mPrepareTouchExposure:Z

    .line 137
    iput v5, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownX:F

    .line 138
    iput v5, p0, Lcom/android/camera/ui/focus/FocusRingView;->mDownY:F

    .line 139
    iput v5, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveX:F

    .line 140
    iput v5, p0, Lcom/android/camera/ui/focus/FocusRingView;->mLastMoveY:F

    .line 142
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureStarted:Z

    if-eqz v2, :cond_3

    .line 143
    iput-boolean v6, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureStarted:Z

    .line 144
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureListener:Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    invoke-interface {v2}, Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;->onTouchExposureEnd()V

    .line 146
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mTouchExposureOffsetRatio:F

    .line 147
    return-void
.end method

.method public stopFocusAnimations()V
    .locals 3

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAnimator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v2}, Lcom/android/camera/ui/motion/DynamicAnimator;->getTimeMillis()J

    move-result-wide v0

    .line 166
    .local v0, "tMs":J
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->isExiting()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    .line 167
    invoke-virtual {v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->isEntering()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mManualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/focus/ManualFocusRing;->exit(J)V

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->isExiting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->mAutoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/focus/AutoFocusRing;->exit(J)V

    .line 174
    :cond_1
    return-void
.end method
