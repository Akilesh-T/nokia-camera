.class public Lcom/android/camera/ui/PreviewTransitionView;
.super Landroid/view/View;
.source "PreviewTransitionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PreviewTransitionView$TransitionType;
    }
.end annotation


# static fields
.field private static final FLIP_ANIM_DURATION_MS:I = 0x12c

.field private static final FLIP_WHEN_BLUR:Z = false

.field private static final IDLE:I = 0x0

.field private static final SHOW_STATIC_IMAGE:I = 0x1

.field private static final SHOW_SWITCH_ANIMATION:I = 0x2

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final BLUR_RADIUS:F

.field private mAnimationType:I

.field private mBackgroundColor:I

.field private final mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mRenderScript:Landroid/renderscript/RenderScript;

.field private mSwitchAnimator:Landroid/animation/AnimatorSet;

.field private mTransitionBitmap:Landroid/graphics/Bitmap;

.field protected mTransitionType:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PreviewTransitionView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/PreviewTransitionView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mAnimationType:I

    .line 87
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mBackgroundColor:I

    .line 93
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->BLUR_RADIUS:F

    .line 99
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 101
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mMatrix:Landroid/graphics/Matrix;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewTransitionView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/PreviewTransitionView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewTransitionView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/PreviewTransitionView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewTransitionView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PreviewTransitionView;->blur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/PreviewTransitionView;Landroid/graphics/Bitmap;Lcom/android/camera/ui/PreviewTransitionView$TransitionType;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewTransitionView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PreviewTransitionView;->flip(Landroid/graphics/Bitmap;Lcom/android/camera/ui/PreviewTransitionView$TransitionType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewTransitionView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewTransitionView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/PreviewTransitionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewTransitionView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private blur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 292
    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 299
    .end local p1    # "source":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 293
    .restart local p1    # "source":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/PreviewTransitionView;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v2, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 294
    .local v0, "input":Landroid/renderscript/Allocation;
    iget-object v2, p0, Lcom/android/camera/ui/PreviewTransitionView;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 295
    .local v1, "output":Landroid/renderscript/Allocation;
    iget-object v2, p0, Lcom/android/camera/ui/PreviewTransitionView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 296
    iget-object v2, p0, Lcom/android/camera/ui/PreviewTransitionView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 297
    iget-object v2, p0, Lcom/android/camera/ui/PreviewTransitionView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 298
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private flip(Landroid/graphics/Bitmap;Lcom/android/camera/ui/PreviewTransitionView$TransitionType;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "transitionType"    # Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 303
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0

    .line 304
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 305
    .local v5, "matrix":Landroid/graphics/Matrix;
    sget-object v0, Lcom/android/camera/ui/PreviewTransitionView$3;->$SwitchMap$com$android$camera$ui$PreviewTransitionView$TransitionType:[I

    invoke-virtual {p2}, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_0
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 312
    :pswitch_1
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setupAnimation(Lcom/android/camera/ui/PreviewTransitionView$TransitionType;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
    .locals 9
    .param p1, "transitionType"    # Lcom/android/camera/ui/PreviewTransitionView$TransitionType;
    .param p2, "animationFinishedListener"    # Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .prologue
    const/high16 v4, 0x40800000    # 4.0f

    .line 137
    new-instance v5, Landroid/graphics/Camera;

    invoke-direct {v5}, Landroid/graphics/Camera;-><init>()V

    .line 138
    .local v5, "camera":Landroid/graphics/Camera;
    invoke-virtual {v5}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v6

    .line 139
    .local v6, "DEFAULT_Z_POSITION":F
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 142
    .local v3, "isBlur":Ljava/util/concurrent/atomic/AtomicBoolean;
    sget-object v0, Lcom/android/camera/ui/PreviewTransitionView$3;->$SwitchMap$com$android$camera$ui$PreviewTransitionView$TransitionType:[I

    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v2, v0, v4

    .line 161
    .local v2, "MAX_DEPTH":F
    const/4 v7, 0x1

    .line 165
    .local v7, "DIRECTION_FACTOR":I
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 166
    .local v8, "flipAngleAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v0, 0x12c

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    new-instance v0, Lcom/android/camera/ui/PreviewTransitionView$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/PreviewTransitionView$1;-><init>(Lcom/android/camera/ui/PreviewTransitionView;FLjava/util/concurrent/atomic/AtomicBoolean;Lcom/android/camera/ui/PreviewTransitionView$TransitionType;Landroid/graphics/Camera;FI)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 211
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/ui/PreviewTransitionView$2;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ui/PreviewTransitionView$2;-><init>(Lcom/android/camera/ui/PreviewTransitionView;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 246
    return-void

    .line 144
    .end local v2    # "MAX_DEPTH":F
    .end local v7    # "DIRECTION_FACTOR":I
    .end local v8    # "flipAngleAnimator":Landroid/animation/ValueAnimator;
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v2, v0, v4

    .line 145
    .restart local v2    # "MAX_DEPTH":F
    const/4 v7, 0x1

    .line 146
    .restart local v7    # "DIRECTION_FACTOR":I
    goto :goto_0

    .line 148
    .end local v2    # "MAX_DEPTH":F
    .end local v7    # "DIRECTION_FACTOR":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v2, v0, v4

    .line 149
    .restart local v2    # "MAX_DEPTH":F
    const/4 v7, -0x1

    .line 150
    .restart local v7    # "DIRECTION_FACTOR":I
    goto :goto_0

    .line 152
    .end local v2    # "MAX_DEPTH":F
    .end local v7    # "DIRECTION_FACTOR":I
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v2, v0, v4

    .line 153
    .restart local v2    # "MAX_DEPTH":F
    const/4 v7, 0x1

    .line 154
    .restart local v7    # "DIRECTION_FACTOR":I
    goto :goto_0

    .line 156
    .end local v2    # "MAX_DEPTH":F
    .end local v7    # "DIRECTION_FACTOR":I
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v2, v0, v4

    .line 157
    .restart local v2    # "MAX_DEPTH":F
    const/4 v7, -0x1

    .line 158
    .restart local v7    # "DIRECTION_FACTOR":I
    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 165
    :array_0
    .array-data 4
        0x0
        0xb4
    .end array-data
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 109
    iput-object v1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    .line 110
    iput-object v1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionBitmap:Landroid/graphics/Bitmap;

    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 112
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 284
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewTransitionView;->setVisibility(I)V

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mAnimationType:I

    .line 286
    iput-object v1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionType:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    .line 287
    iput-object v1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionBitmap:Landroid/graphics/Bitmap;

    .line 288
    iput-object v1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    .line 289
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 121
    iget v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 123
    iget v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 132
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 133
    return-void

    .line 125
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mAnimationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mBackgroundColor:I

    .line 117
    return-void
.end method

.method public setupTransition(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Lcom/android/camera/ui/PreviewTransitionView$TransitionType;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
    .locals 4
    .param p1, "transitionBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "previewArea"    # Landroid/graphics/RectF;
    .param p3, "transitionType"    # Lcom/android/camera/ui/PreviewTransitionView$TransitionType;
    .param p4, "animationFinishedListener"    # Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    iput-object p3, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionType:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    .line 250
    iput-object p2, p0, Lcom/android/camera/ui/PreviewTransitionView;->mPreviewArea:Landroid/graphics/RectF;

    .line 252
    sget-object v0, Lcom/android/camera/ui/PreviewTransitionView$3;->$SwitchMap$com$android$camera$ui$PreviewTransitionView$TransitionType:[I

    invoke-virtual {p3}, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    iput-object p1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionBitmap:Landroid/graphics/Bitmap;

    .line 273
    iput v3, p0, Lcom/android/camera/ui/PreviewTransitionView;->mAnimationType:I

    .line 277
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/PreviewTransitionView;->setVisibility(I)V

    .line 278
    :cond_0
    :goto_1
    return-void

    .line 254
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PreviewTransitionView;->blur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionBitmap:Landroid/graphics/Bitmap;

    .line 255
    iput v3, p0, Lcom/android/camera/ui/PreviewTransitionView;->mAnimationType:I

    goto :goto_0

    .line 261
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    if-eqz p4, :cond_0

    .line 263
    invoke-interface {p4, v2}, Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;->onAnimationFinished(Z)V

    goto :goto_1

    .line 267
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/PreviewTransitionView;->mTransitionBitmap:Landroid/graphics/Bitmap;

    .line 268
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PreviewTransitionView;->mAnimationType:I

    .line 269
    invoke-direct {p0, p3, p4}, Lcom/android/camera/ui/PreviewTransitionView;->setupAnimation(Lcom/android/camera/ui/PreviewTransitionView$TransitionType;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
