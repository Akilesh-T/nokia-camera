.class public Lcom/android/camera/widget/FilmstripLayout;
.super Landroid/widget/FrameLayout;
.source "FilmstripLayout.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripContentPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;,
        Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_MS:J = 0xfaL

.field private static final FLING_VELOCITY_THRESHOLD:F = 4.0f


# instance fields
.field private mBackgroundDrawable:Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;

.field private final mFilmstripAnimator:Landroid/animation/ValueAnimator;

.field private mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mFilmstripAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mFilmstripContentLayout:Landroid/widget/FrameLayout;

.field private mFilmstripContentTranslationProgress:F

.field private mFilmstripGestureListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

.field private mFilmstripView:Lcom/android/camera/widget/FilmstripView;

.field private mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

.field private mSwipeTrend:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    .line 74
    new-instance v0, Lcom/android/camera/widget/FilmstripLayout$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/FilmstripLayout$1;-><init>(Lcom/android/camera/widget/FilmstripLayout;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 105
    new-instance v0, Lcom/android/camera/widget/FilmstripLayout$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/FilmstripLayout$2;-><init>(Lcom/android/camera/widget/FilmstripLayout;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripLayout;->init(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    .line 74
    new-instance v0, Lcom/android/camera/widget/FilmstripLayout$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/FilmstripLayout$1;-><init>(Lcom/android/camera/widget/FilmstripLayout;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 105
    new-instance v0, Lcom/android/camera/widget/FilmstripLayout$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/FilmstripLayout$2;-><init>(Lcom/android/camera/widget/FilmstripLayout;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripLayout;->init(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    .line 74
    new-instance v0, Lcom/android/camera/widget/FilmstripLayout$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/FilmstripLayout$1;-><init>(Lcom/android/camera/widget/FilmstripLayout;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 105
    new-instance v0, Lcom/android/camera/widget/FilmstripLayout$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/FilmstripLayout$2;-><init>(Lcom/android/camera/widget/FilmstripLayout;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripLayout;->init(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/FilmstripLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/widget/FilmstripView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripView:Lcom/android/camera/widget/FilmstripView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripGestureListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/widget/FilmstripLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mSwipeTrend:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/widget/FilmstripLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/camera/widget/FilmstripLayout;->mSwipeTrend:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/widget/FilmstripLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripLayout;->onSwipeOutBegin()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/widget/FilmstripLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;
    .param p1, "x1"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripLayout;->translateContentLayoutByPixel(F)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/widget/FilmstripLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/widget/FilmstripLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripLayout;->onSwipeOut()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/widget/FilmstripLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripLayout;->notifyShown()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/widget/FilmstripLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;
    .param p1, "x1"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripLayout;->translateContentLayout(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mBackgroundDrawable:Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/widget/FilmstripLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripContentLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/widget/FilmstripLayout;Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;
    .param p1, "x1"    # Lcom/android/camera/ui/FilmstripGestureRecognizer;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripLayout;->mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/widget/FilmstripLayout;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 133
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10c000d

    .line 134
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 139
    .local v0, "interpolator":Landroid/animation/TimeInterpolator;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/widget/FilmstripLayout;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v1, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;-><init>(Lcom/android/camera/widget/FilmstripLayout;)V

    iput-object v1, p0, Lcom/android/camera/widget/FilmstripLayout;->mBackgroundDrawable:Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;

    .line 144
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout;->mBackgroundDrawable:Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;

    new-instance v2, Lcom/android/camera/widget/FilmstripLayout$3;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/FilmstripLayout$3;-><init>(Lcom/android/camera/widget/FilmstripLayout;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 160
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout;->mBackgroundDrawable:Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/FilmstripLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void

    .line 137
    .end local v0    # "interpolator":Landroid/animation/TimeInterpolator;
    :cond_0
    sget-object v0, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    .restart local v0    # "interpolator":Landroid/animation/TimeInterpolator;
    goto :goto_0
.end method

.method private notifyHidden()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;->onFilmstripHidden()V

    goto :goto_0
.end method

.method private notifyShown()V
    .locals 3

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout;->mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    if-nez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout;->mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;->onFilmstripShown()V

    .line 208
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripView:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView;->zoomAtIndexChanged()V

    .line 209
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripView:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView;->getController()Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    .line 210
    .local v0, "controller":Lcom/android/camera/filmstrip/FilmstripController;
    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v1

    .line 211
    .local v1, "currentId":I
    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripController;->inFilmstrip()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout;->mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    invoke-interface {v2, v1}, Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;->onEnterFilmstrip(I)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripController;->inFullScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout;->mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    invoke-interface {v2, v1}, Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;->onEnterFullScreenUiShown(I)V

    goto :goto_0
.end method

.method private onSwipeOut()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;->onSwipeOut()V

    .line 323
    :cond_0
    return-void
.end method

.method private onSwipeOutBegin()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;->onSwipeOutBegin()V

    .line 329
    :cond_0
    return-void
.end method

.method private runAnimation(FF)V
    .locals 3
    .param p1, "begin"    # F
    .param p2, "end"    # F

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 300
    :cond_0
    cmpl-float v0, p1, p2

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 306
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private translateContentLayout(F)V
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    .line 310
    iput p1, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    .line 311
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 312
    return-void
.end method

.method private translateContentLayoutByPixel(F)V
    .locals 1
    .param p1, "pixel"    # F

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 316
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    iput v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    .line 317
    return-void
.end method


# virtual methods
.method public animateHide()Z
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->hideFilmstrip()V

    .line 279
    :cond_0
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 178
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/camera/widget/FilmstripLayout;->translateContentLayout(F)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 180
    return-void
.end method

.method public hideFilmstrip()V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripLayout;->onSwipeOutBegin()V

    .line 288
    iget v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/android/camera/widget/FilmstripLayout;->runAnimation(FF)V

    .line 289
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->animateHide()Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 248
    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FilmstripLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/FilmstripView;

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripView:Lcom/android/camera/widget/FilmstripView;

    .line 249
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripView:Lcom/android/camera/widget/FilmstripView;

    new-instance v1, Lcom/android/camera/widget/FilmstripLayout$4;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/FilmstripLayout$4;-><init>(Lcom/android/camera/widget/FilmstripLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/FilmstripView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripView:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView;->getGestureListener()Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripGestureListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    .line 265
    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FilmstripLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripContentLayout:Landroid/widget/FrameLayout;

    .line 266
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 243
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 220
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 221
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripView:Lcom/android/camera/widget/FilmstripView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->hide()V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    invoke-direct {p0, v0}, Lcom/android/camera/widget/FilmstripLayout;->translateContentLayout(F)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;-><init>(Lcom/android/camera/widget/FilmstripLayout;Lcom/android/camera/widget/FilmstripLayout$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/FilmstripGestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setFilmstripListener(Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripLayout;->mListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripLayout;->notifyShown()V

    .line 173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripView:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView;->getController()Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripController;->setListener(Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;)V

    .line 174
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripLayout;->notifyHidden()V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripLayout;->notifyHidden()V

    .line 194
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/FilmstripLayout;->translateContentLayout(F)V

    .line 185
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 186
    return-void
.end method

.method public showFilmstrip()V
    .locals 2

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FilmstripLayout;->setVisibility(I)V

    .line 293
    iget v0, p0, Lcom/android/camera/widget/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/widget/FilmstripLayout;->runAnimation(FF)V

    .line 294
    return-void
.end method
