.class Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;
.super Lcom/android/camera/widget/AnimationEffects;
.source "AdvancedModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AdvancedModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeepholeAnimationEffect"
.end annotation


# static fields
.field private static final PEEP_HOLE_ANIMATION_DURATION_MS:I = 0x1f4

.field private static final UNSET:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field private final mBackgroundDrawArea:Landroid/graphics/RectF;

.field private mBackgroundOverlay:Landroid/graphics/Bitmap;

.field private mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mMaskPaint:Landroid/graphics/Paint;

.field private mPeepHoleAnimator:Landroid/animation/ValueAnimator;

.field private mPeepHoleCenterX:I

.field private mPeepHoleCenterY:I

.field private mRadius:F

.field private mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/camera/ui/AdvancedModeListView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/AdvancedModeListView;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1168
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {p0}, Lcom/android/camera/widget/AnimationEffects;-><init>()V

    .line 1151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mMaskPaint:Landroid/graphics/Paint;

    .line 1152
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackgroundDrawArea:Landroid/graphics/RectF;

    .line 1154
    iput v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    .line 1155
    iput v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    .line 1156
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRadius:F

    .line 1163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    .line 1164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    .line 1169
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1170
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1172
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1173
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1175
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1176
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1178
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->setupAnimators()V

    .line 1179
    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;
    .param p1, "x1"    # F

    .prologue
    .line 1146
    iput p1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRadius:F

    return p1
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private setupAnimators()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1f4

    const v9, 0x7f0900c4

    const/4 v8, 0x2

    .line 1182
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1183
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1184
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1185
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$1;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$1;-><init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1192
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$2;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$2;-><init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1208
    new-array v5, v8, [I

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1209
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1210
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1211
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$3;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$3;-><init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1219
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$4;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$4;-><init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1235
    iget v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    iget-object v6, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v6}, Lcom/android/camera/ui/AdvancedModeListView;->access$900(Lcom/android/camera/ui/AdvancedModeListView;)I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1236
    .local v1, "horizontalDistanceToFarEdge":I
    iget v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    iget-object v6, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v6}, Lcom/android/camera/ui/AdvancedModeListView;->access$1000(Lcom/android/camera/ui/AdvancedModeListView;)I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1237
    .local v4, "verticalDistanceToFarEdge":I
    mul-int v5, v1, v1

    mul-int v6, v4, v4

    add-int/2addr v5, v6

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 1239
    .local v0, "endRadius":I
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-virtual {v5}, Lcom/android/camera/ui/AdvancedModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 1242
    .local v3, "startRadius":I
    new-array v5, v8, [F

    const/4 v6, 0x0

    int-to-float v7, v3

    aput v7, v5, v6

    const/4 v6, 0x1

    int-to-float v7, v0

    aput v7, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    .line 1243
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1244
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1245
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$5;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$5;-><init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1253
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$6;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$6;-><init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1268
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-virtual {v5}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1269
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1270
    .local v2, "size":I
    new-instance v5, Lcom/android/camera/ui/TouchCircleDrawable;

    iget-object v6, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-virtual {v6}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/camera/ui/TouchCircleDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    .line 1271
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {v5, v2, v2}, Lcom/android/camera/ui/TouchCircleDrawable;->setSize(II)V

    .line 1272
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    new-instance v6, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$7;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$7;-><init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/TouchCircleDrawable;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1278
    return-void

    .line 1182
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 1208
    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method public cancelAnimation()Z
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1428
    :cond_0
    const/4 v0, 0x0

    .line 1434
    :goto_0
    return v0

    .line 1430
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1431
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1432
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1434
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1331
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackgroundOverlay:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackgroundDrawArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1333
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1334
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackgroundOverlay:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1336
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TouchCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1340
    :cond_0
    return-void
.end method

.method public drawForeground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1296
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1297
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1299
    :cond_0
    return-void
.end method

.method public endAnimation()V
    .locals 0

    .prologue
    .line 1423
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1288
    const/4 v0, 0x1

    return v0
.end method

.method public setAnimationStartingPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1302
    iput p1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    .line 1303
    iput p2, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    .line 1304
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .param p2, "drawArea"    # Landroid/graphics/RectF;

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    .line 1319
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackgroundDrawArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1320
    return-void
.end method

.method public setBackgroundOverlay(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "overlay"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackgroundOverlay:Landroid/graphics/Bitmap;

    .line 1327
    return-void
.end method

.method public setModeSpecificColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    const v1, 0xffffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1308
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/AdvancedModeListView;->access$902(Lcom/android/camera/ui/AdvancedModeListView;I)I

    .line 1283
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v0, p2}, Lcom/android/camera/ui/AdvancedModeListView;->access$1002(Lcom/android/camera/ui/AdvancedModeListView;I)I

    .line 1284
    return-void
.end method

.method public shouldDrawSuper()Z
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mBackgroundOverlay:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/16 v3, 0xff

    const/4 v2, -0x1

    .line 1399
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    :goto_0
    return-void

    .line 1402
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    if-ne v1, v2, :cond_2

    .line 1403
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/AdvancedModeListView;->access$900(Lcom/android/camera/ui/AdvancedModeListView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterX:I

    .line 1404
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/AdvancedModeListView;->access$1000(Lcom/android/camera/ui/AdvancedModeListView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleCenterY:I

    .line 1407
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1408
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1413
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1414
    .local v0, "s":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mPeepHoleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mRevealAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1415
    if-eqz p1, :cond_3

    .line 1416
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1418
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public startFadeoutAnimation(Landroid/animation/Animator$AnimatorListener;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;III)V
    .locals 5
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p2, "selectedItem"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "modeId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1352
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1353
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1355
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    .line 1356
    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getIconDrawableClone()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1357
    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getIconDrawableSize()I

    move-result v3

    .line 1355
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/TouchCircleDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 1358
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TouchCircleDrawable;->setCenter(Landroid/graphics/Point;)V

    .line 1359
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getHighlightColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TouchCircleDrawable;->setColor(I)V

    .line 1360
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    new-instance v2, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$8;

    invoke-direct {v2, p0, p2, p5}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$8;-><init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TouchCircleDrawable;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1379
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1380
    .local v0, "s":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mFadeOutAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1381
    if-eqz p1, :cond_0

    .line 1382
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1384
    :cond_0
    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$9;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$9;-><init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1393
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->mCircleDrawable:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {v1, v4, v4}, Lcom/android/camera/ui/TouchCircleDrawable;->animate(II)V

    .line 1394
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1395
    return-void
.end method
