.class Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilmstripScrollGesture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;

.field private final mScrollChecker:Ljava/lang/Runnable;

.field private final mScroller:Landroid/widget/Scroller;

.field private final mXScrollAnimator:Landroid/animation/ValueAnimator;

.field private final mXScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mXScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;Landroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 2564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2513
    new-instance v0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$1;-><init>(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mScrollChecker:Ljava/lang/Runnable;

    .line 2528
    new-instance v0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$2;-><init>(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2536
    new-instance v0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$3;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$3;-><init>(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 2565
    iput-object p2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mHandler:Landroid/os/Handler;

    .line 2566
    iput-object p3, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mListener:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;

    .line 2567
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mScroller:Landroid/widget/Scroller;

    .line 2568
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    .line 2569
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2570
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2571
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2572
    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mListener:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private runChecker()V
    .locals 2

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mListener:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;

    if-nez v0, :cond_1

    .line 2613
    :cond_0
    :goto_0
    return-void

    .line 2611
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mScrollChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2612
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mScrollChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public fling(IIIIIIII)V
    .locals 9
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mScroller:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2580
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->runChecker()V

    .line 2581
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2602
    if-eqz p1, :cond_0

    .line 2603
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2605
    :cond_0
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startScroll(III)V
    .locals 4
    .param p1, "startX"    # I
    .param p2, "dx"    # I
    .param p3, "duration"    # I

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2591
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2592
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int v3, p1, p2

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 2593
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2594
    return-void
.end method

.method public startScroll(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2585
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->runChecker()V

    .line 2586
    return-void
.end method
