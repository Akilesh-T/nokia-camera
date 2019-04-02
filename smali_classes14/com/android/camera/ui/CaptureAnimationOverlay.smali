.class public Lcom/android/camera/ui/CaptureAnimationOverlay;
.super Landroid/view/View;
.source "CaptureAnimationOverlay.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# static fields
.field private static final FLASH_COLOR:I = -0x1000000

.field private static final FLASH_DECREASE_DURATION_MS:J = 0x1eL

.field private static final FLASH_FULL_DURATION_MS:J = 0x0L

.field private static final FLASH_MAX_ALPHA:F = 0.85f

.field private static final FRONT_CAMERA_FLASH_COLOR:I = -0x1

.field private static final LONG_FLASH_DECREASE_DURATION_MS:J = 0x23L

.field private static final LONG_FLASH_FULL_DURATION_MS:J = 0x3e8L

.field public static final LONG_FLASH_MAX_ALPHA:F = 1.0f

.field public static final PERSIST_CAMERA_FFCOLOR:Ljava/lang/String; = "persist.camera.ffcolor"

.field public static final PERSIST_CAMERA_FFCOLOR_LEVEL2:Ljava/lang/String; = "persist.camera.ffcolor.lev2"

.field public static final PERSIST_CAMERA_FFCOLOR_LEVEL3:Ljava/lang/String; = "persist.camera.ffcolor.lev3"

.field public static final PERSIST_CAMERA_FFCOLOR_THRESHOLD:Ljava/lang/String; = "persist.camera.ffcolor.th"

.field public static final PERSIST_CAMERA_FFCOLOR_THRESHOLD2:Ljava/lang/String; = "persist.camera.ffcolor.th2"

.field public static final PERSIST_FRONTFLASH_AFTER_MS:Ljava/lang/String; = "persist.camera.frontflash.after"

.field public static final PERSIST_FRONTFLASH_BEFORE_MS:Ljava/lang/String; = "persist.camera.frontflash.before"

.field private static final SHORT_FLASH_DECREASE_DURATION_MS:J = 0x64L

.field private static final SHORT_FLASH_FULL_DURATION_MS:J = 0x22L

.field private static final SHORT_FLASH_MAX_ALPHA:F = 0.75f

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mFlashAnimInterpolator:Landroid/view/animation/Interpolator;

.field private final mFlashAnimListener:Landroid/animation/Animator$AnimatorListener;

.field private final mFlashAnimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mFlashAnimation:Landroid/animation/AnimatorSet;

.field private mFrontFlashAnimation:Landroid/animation/AnimatorSet;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPreviewArea:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CaptureAnimOverlay"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/CaptureAnimationOverlay;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPreviewArea:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    new-instance v0, Lcom/android/camera/ui/CaptureAnimationOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CaptureAnimationOverlay$1;-><init>(Lcom/android/camera/ui/CaptureAnimationOverlay;)V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 91
    new-instance v0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CaptureAnimationOverlay$2;-><init>(Lcom/android/camera/ui/CaptureAnimationOverlay;)V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CaptureAnimationOverlay;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CaptureAnimationOverlay;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CaptureAnimationOverlay;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CaptureAnimationOverlay;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/CaptureAnimationOverlay;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CaptureAnimationOverlay;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/CaptureAnimationOverlay;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CaptureAnimationOverlay;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/CaptureAnimationOverlay;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CaptureAnimationOverlay;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private getFFColor(I)I
    .locals 7
    .param p1, "currentCCT"    # I

    .prologue
    .line 290
    const/4 v1, -0x1

    .line 292
    .local v1, "ffColor":I
    :try_start_0
    const-string v4, "persist.camera.ffcolor.th"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 293
    .local v2, "ffThreshold":I
    const-string v4, "persist.camera.ffcolor.th2"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 294
    .local v3, "ffThreshold2":I
    if-lt p1, v2, :cond_0

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 296
    :cond_0
    const-string v4, "persist.camera.ffcolor"

    const-string v5, "FFFFFF"

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 306
    .end local v2    # "ffThreshold":I
    .end local v3    # "ffThreshold2":I
    :goto_0
    sget-object v4, Lcom/android/camera/ui/CaptureAnimationOverlay;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ffColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentCCT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    return v1

    .line 297
    .restart local v2    # "ffThreshold":I
    .restart local v3    # "ffThreshold2":I
    :cond_1
    if-eqz v3, :cond_2

    if-ge p1, v3, :cond_2

    .line 298
    :try_start_1
    const-string v4, "persist.camera.ffcolor.lev3"

    const-string v5, "FFFFFF"

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 300
    :cond_2
    const-string v4, "persist.camera.ffcolor.lev2"

    const-string v5, "FFFFFF"

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 303
    .end local v2    # "ffThreshold":I
    .end local v3    # "ffThreshold2":I
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPreviewArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPreviewArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 280
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 270
    return-void
.end method

.method public startFlashAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "shortFlash"    # Z
    .param p2, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 133
    :cond_0
    if-eqz p1, :cond_2

    .line 134
    const/high16 v2, 0x3f400000    # 0.75f

    .line 139
    .local v2, "maxAlpha":F
    :goto_0
    new-array v3, v6, [F

    aput v2, v3, v4

    aput v2, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 140
    .local v0, "flashAnim1":Landroid/animation/ValueAnimator;
    new-array v3, v6, [F

    aput v2, v3, v4

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 142
    .local v1, "flashAnim2":Landroid/animation/ValueAnimator;
    if-eqz p1, :cond_3

    .line 143
    const-wide/16 v4, 0x22

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 144
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 152
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    .line 156
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 157
    if-eqz p2, :cond_1

    .line 158
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 163
    return-void

    .line 136
    .end local v0    # "flashAnim1":Landroid/animation/ValueAnimator;
    .end local v1    # "flashAnim2":Landroid/animation/ValueAnimator;
    .end local v2    # "maxAlpha":F
    :cond_2
    const v2, 0x3f59999a    # 0.85f

    .restart local v2    # "maxAlpha":F
    goto :goto_0

    .line 146
    .restart local v0    # "flashAnim1":Landroid/animation/ValueAnimator;
    .restart local v1    # "flashAnim2":Landroid/animation/ValueAnimator;
    :cond_3
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 147
    const-wide/16 v4, 0x1e

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1
.end method

.method public startFlashAnimationBeforeTakePicture(Landroid/animation/Animator$AnimatorListener;)Z
    .locals 7
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v6, 0x1

    .line 167
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 168
    sget-object v3, Lcom/android/camera/ui/CaptureAnimationOverlay;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "startFlashAnimationBeforeTakePicture abort : (mFrontFlashAnimation != null)"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    :goto_0
    return v6

    .line 171
    :cond_0
    sget-object v3, Lcom/android/camera/ui/CaptureAnimationOverlay;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "startFlashAnimationBeforeTakePicture"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    const/4 v0, -0x1

    .line 173
    .local v0, "FF_COLOR":I
    invoke-static {}, Lcom/android/camera/util/MorphoUtil;->getCCT()I

    move-result v1

    .line 177
    .local v1, "cct_v":I
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->getFFColor(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 180
    :goto_1
    sget-object v3, Lcom/android/camera/ui/CaptureAnimationOverlay;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FF_COLOR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    .line 183
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 188
    .local v2, "startFlashAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 189
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 190
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 191
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 192
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/camera/ui/CaptureAnimationOverlay$3;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/CaptureAnimationOverlay$3;-><init>(Lcom/android/camera/ui/CaptureAnimationOverlay;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 178
    .end local v2    # "startFlashAnimator":Landroid/animation/ValueAnimator;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 186
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopFlashAnimationAfterTakePicture(Z)V
    .locals 5
    .param p1, "needAnim"    # Z

    .prologue
    const/4 v4, 0x0

    .line 224
    sget-object v1, Lcom/android/camera/ui/CaptureAnimationOverlay;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "stopFlashAnimationAfterTakePicture"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 227
    :cond_0
    if-eqz p1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 232
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    aput v2, v1, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 233
    .local v0, "stopFlashAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x23

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 234
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 235
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFlashAnimInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 237
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/camera/ui/CaptureAnimationOverlay$4;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/CaptureAnimationOverlay$4;-><init>(Lcom/android/camera/ui/CaptureAnimationOverlay;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 261
    .end local v0    # "stopFlashAnimator":Landroid/animation/ValueAnimator;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 262
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->setVisibility(I)V

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->mFrontFlashAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method
