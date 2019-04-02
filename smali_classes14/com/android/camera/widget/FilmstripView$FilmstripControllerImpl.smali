.class Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripControllerImpl"
.end annotation


# instance fields
.field private mCanStopScroll:Z

.field private mFlingAnimator:Landroid/animation/AnimatorSet;

.field private final mScaleAnimator:Landroid/animation/ValueAnimator;

.field private final mScaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mScrollGesture:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

.field private final mScrollListener:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;

.field private mZoomAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/camera/widget/FilmstripView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView;)V
    .locals 5

    .prologue
    .line 1989
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1934
    new-instance v1, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;-><init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    iput-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScrollListener:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;

    .line 1977
    new-instance v1, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$2;-><init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    iput-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1990
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 1991
    .local v0, "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v1, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {p1}, Lcom/android/camera/widget/FilmstripView;->access$600(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    .line 1992
    invoke-static {p1}, Lcom/android/camera/widget/FilmstripView;->access$600(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScrollListener:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;Landroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScrollGesture:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    .line 1994
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mCanStopScroll:Z

    .line 1996
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 1997
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1998
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1999
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;-><init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Lcom/android/camera/widget/FilmstripView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2033
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->cancelFlingAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->cancelLoadingZoomedImage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 1925
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->setSurroundingViewsVisible(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScale()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 1925
    iput-boolean p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mCanStopScroll:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->loadZoomedImage()V

    return-void
.end method

.method static synthetic access$4602(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1925
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 1925
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mFlingAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Lcom/android/camera/widget/FilmstripView$ViewItem;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;
    .param p1, "x1"    # Lcom/android/camera/widget/FilmstripView$ViewItem;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 1925
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->zoomAt(Lcom/android/camera/widget/FilmstripView$ViewItem;FF)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Z)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 1925
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->getCurrentDataMaxScale(Z)F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->cancelZoomAnimation()V

    return-void
.end method

.method private cancelFlingAnimation()V
    .locals 1

    .prologue
    .line 2377
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isFlingAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2378
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mFlingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2380
    :cond_0
    return-void
.end method

.method private cancelLoadingZoomedImage()V
    .locals 1

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$4200(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/ui/ZoomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView;->cancelPartialDecodingTask()V

    .line 2459
    return-void
.end method

.method private cancelZoomAnimation()V
    .locals 1

    .prologue
    .line 2383
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isZoomAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2384
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2386
    :cond_0
    return-void
.end method

.method private estimateMaxX(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "leftPos"    # I
    .param p3, "viewWidth"    # I

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    .line 2081
    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$3700(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    .line 2082
    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$3600(Lcom/android/camera/widget/FilmstripView;)I

    move-result v1

    add-int/2addr v1, p3

    mul-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 2080
    return v0
.end method

.method private estimateMinX(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "leftPos"    # I
    .param p3, "viewWidth"    # I

    .prologue
    .line 2076
    add-int/lit8 v0, p1, 0x64

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$3600(Lcom/android/camera/widget/FilmstripView;)I

    move-result v1

    add-int/2addr v1, p3

    mul-int/2addr v0, v1

    sub-int v0, p2, v0

    return v0
.end method

.method private getCurrentDataMaxScale(Z)F
    .locals 6
    .param p1, "allowOverScale"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2413
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v0, v4, v5

    .line 2414
    .local v0, "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v0, :cond_1

    .line 2433
    :cond_0
    :goto_0
    return v3

    .line 2417
    :cond_1
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$3700(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 2418
    .local v1, "imageData":Lcom/android/camera/data/FilmstripItem;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemAttributes;->canZoomInPlace()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2421
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 2422
    .local v2, "imageWidth":F
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_2

    .line 2423
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_3

    .line 2424
    :cond_2
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    int-to-float v2, v4

    .line 2426
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v3, v2, v4

    .line 2427
    .local v3, "scale":F
    if-eqz p1, :cond_0

    .line 2431
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$4800(Lcom/android/camera/widget/FilmstripView;)F

    move-result v4

    mul-float/2addr v3, v4

    goto :goto_0
.end method

.method private getCurrentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 2400
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 2401
    .local v0, "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v0, :cond_0

    .line 2402
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2404
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$3700(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private goToItem(I)Z
    .locals 5
    .param p1, "itemIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2328
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v3

    aget-object v0, v3, p1

    .line 2329
    .local v0, "nextItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v0, :cond_0

    .line 2335
    :goto_0
    return v1

    .line 2332
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScrolling(Z)Z

    .line 2333
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v3

    const/16 v4, 0x320

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->scrollToPosition(IIZ)V

    move v1, v2

    .line 2335
    goto :goto_0
.end method

.method private loadZoomedImage()V
    .locals 7

    .prologue
    .line 2437
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->inZoomView()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2455
    :cond_0
    :goto_0
    return-void

    .line 2440
    :cond_1
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v0, v5, v6

    .line 2441
    .local v0, "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v0, :cond_0

    .line 2444
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$3700(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 2445
    .local v1, "imageData":Lcom/android/camera/data/FilmstripItem;
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemAttributes;->canZoomInPlace()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2448
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->getCurrentUri()Landroid/net/Uri;

    move-result-object v3

    .line 2449
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getViewRect()Landroid/graphics/RectF;

    move-result-object v4

    .line 2450
    .local v4, "viewRect":Landroid/graphics/RectF;
    if-eqz v3, :cond_0

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v3, v5, :cond_0

    .line 2453
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v2

    .line 2454
    .local v2, "orientation":I
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$4200(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/ui/ZoomView;

    move-result-object v5

    invoke-virtual {v5, v3, v2, v4}, Lcom/android/camera/ui/ZoomView;->loadBitmap(Landroid/net/Uri;ILandroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private scaleTo(FI)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x2

    .line 2339
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 2346
    :goto_0
    return-void

    .line 2342
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScale()V

    .line 2343
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScaleAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2344
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2345
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private setSurroundingViewsVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 2392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 2393
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2394
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v1

    aget-object v2, v1, v0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 2392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2394
    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 2397
    :cond_2
    return-void
.end method

.method private stopScale()V
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2306
    return-void
.end method

.method private zoomAt(Lcom/android/camera/widget/FilmstripView$ViewItem;FF)V
    .locals 8
    .param p1, "current"    # Lcom/android/camera/widget/FilmstripView$ViewItem;
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    const/4 v4, 0x0

    .line 2088
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 2092
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->getCurrentDataMaxScale(Z)F

    move-result v6

    .line 2093
    .local v6, "maxScale":F
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v6

    sub-float v1, v6, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    move v2, v6

    .line 2096
    .local v2, "endScale":F
    :goto_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    .line 2097
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v3

    aput v3, v1, v4

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2098
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2099
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;-><init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;FLcom/android/camera/widget/FilmstripView$ViewItem;FF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2149
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$5;-><init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Lcom/android/camera/widget/FilmstripView$ViewItem;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2159
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2160
    return-void

    .line 2093
    .end local v2    # "endScale":F
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public fling(F)V
    .locals 12
    .param p1, "velocityX"    # F

    .prologue
    const/4 v2, 0x0

    .line 2178
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScrolling(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2202
    :cond_0
    :goto_0
    return-void

    .line 2181
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v9, v0, v1

    .line 2182
    .local v9, "item":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v9, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v0

    div-float v10, p1, v0

    .line 2187
    .local v10, "scaledVelocityX":F
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->inFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_2

    .line 2189
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->goToFilmstrip()V

    .line 2192
    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView;->getWidth()I

    move-result v11

    .line 2196
    .local v11, "w":I
    invoke-virtual {v9}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v0

    invoke-virtual {v9}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v1

    invoke-direct {p0, v0, v1, v11}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->estimateMinX(III)I

    move-result v5

    .line 2199
    .local v5, "minX":I
    invoke-virtual {v9}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v0

    invoke-virtual {v9}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v1

    invoke-direct {p0, v0, v1, v11}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->estimateMaxX(III)I

    move-result v6

    .line 2201
    .local v6, "maxX":I
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScrollGesture:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$2100(Lcom/android/camera/widget/FilmstripView;)I

    move-result v1

    neg-float v3, p1

    float-to-int v3, v3

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method flingInsideZoomView(FF)V
    .locals 14
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->inZoomView()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2290
    :cond_0
    :goto_0
    return-void

    .line 2209
    :cond_1
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v0, v8, v9

    .line 2210
    .local v0, "current":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v0, :cond_0

    .line 2214
    const/4 v4, 0x4

    .line 2230
    .local v4, "factor":I
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2232
    .local v7, "velocity":F
    const-wide v8, 0x3fa99999a0000000L    # 0.05000000074505806

    float-to-double v10, v7

    const-wide v12, 0x3fd5555560000000L    # 0.3333333432674408

    .line 2233
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v3, v8

    .line 2235
    .local v3, "duration":F
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationX()F

    move-result v8

    iget-object v9, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v9}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v9

    mul-float v5, v8, v9

    .line 2236
    .local v5, "translationX":F
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationY()F

    move-result v8

    iget-object v9, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v9}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v9

    mul-float v6, v8, v9

    .line 2238
    .local v6, "translationY":F
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v5, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x40800000    # 4.0f

    div-float v10, v3, v10

    mul-float/2addr v10, p1

    add-float/2addr v10, v5

    aput v10, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2240
    .local v1, "decelerationX":Landroid/animation/ValueAnimator;
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x40800000    # 4.0f

    div-float v10, v3, v10

    mul-float v10, v10, p2

    add-float/2addr v10, v6

    aput v10, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2243
    .local v2, "decelerationY":Landroid/animation/ValueAnimator;
    new-instance v8, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;

    invoke-direct {v8, p0, v1, v2, v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;-><init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Lcom/android/camera/widget/FilmstripView$ViewItem;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2254
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mFlingAnimator:Landroid/animation/AnimatorSet;

    .line 2255
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mFlingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2256
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mFlingAnimator:Landroid/animation/AnimatorSet;

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v3

    float-to-int v9, v9

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2257
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mFlingAnimator:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$7;

    invoke-direct {v9, p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$7;-><init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2263
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mFlingAnimator:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$8;

    invoke-direct {v9, p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$8;-><init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2289
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mFlingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public getCurrentAdapterIndex()I
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$1700(Lcom/android/camera/widget/FilmstripView;)I

    move-result v0

    return v0
.end method

.method public goToFilmstrip()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const v4, 0x3f333333    # 0.7f

    .line 2350
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v2

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 2364
    :cond_0
    :goto_0
    return-void

    .line 2353
    :cond_1
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 2356
    const/16 v2, 0x190

    invoke-direct {p0, v4, v2}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->scaleTo(FI)V

    .line 2358
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v2

    aget-object v0, v2, v3

    .line 2359
    .local v0, "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v1, v2, v3

    .line 2361
    .local v1, "nextItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 2362
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$2800(Lcom/android/camera/widget/FilmstripView;)V

    goto :goto_0
.end method

.method public goToFirstItem()V
    .locals 2

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 2470
    :goto_0
    return-void

    .line 2466
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$4900(Lcom/android/camera/widget/FilmstripView;)V

    .line 2469
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$1300(Lcom/android/camera/widget/FilmstripView;)V

    goto :goto_0
.end method

.method public goToFullScreen()V
    .locals 2

    .prologue
    .line 2368
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->inFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2373
    :goto_0
    return-void

    .line 2372
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x190

    invoke-direct {p0, v0, v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->scaleTo(FI)V

    goto :goto_0
.end method

.method public goToNextItem()Z
    .locals 1

    .prologue
    .line 2319
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->goToItem(I)Z

    move-result v0

    return v0
.end method

.method public goToPreviousItem()Z
    .locals 1

    .prologue
    .line 2324
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->goToItem(I)Z

    move-result v0

    return v0
.end method

.method public inFilmstrip()Z
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$3300(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v0

    return v0
.end method

.method public inFullScreen()Z
    .locals 1

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$3400(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v0

    return v0
.end method

.method public inZoomView()Z
    .locals 1

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$5000(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v0

    return v0
.end method

.method public isFlingAnimationRunning()Z
    .locals 1

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mFlingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mFlingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScaling()Z
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScrollGesture:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible(Lcom/android/camera/data/FilmstripItem;)Z
    .locals 6
    .param p1, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    const/4 v1, 0x0

    .line 2486
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 2487
    .local v0, "viewItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 2488
    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->access$5100(Lcom/android/camera/widget/FilmstripView$ViewItem;)Lcom/android/camera/data/FilmstripItem;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2489
    const/4 v1, 0x1

    .line 2492
    .end local v0    # "viewItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_0
    return v1

    .line 2486
    .restart local v0    # "viewItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isZoomAnimationRunning()Z
    .locals 1

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scroll(F)V
    .locals 3
    .param p1, "deltaX"    # F

    .prologue
    .line 2164
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScrolling(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2174
    :goto_0
    return-void

    .line 2167
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$2100(Lcom/android/camera/widget/FilmstripView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/camera/widget/FilmstripView;->access$2102(Lcom/android/camera/widget/FilmstripView;I)I

    .line 2169
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$2200(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v0

    .line 2170
    .local v0, "stopScroll":Z
    if-eqz v0, :cond_1

    .line 2171
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScrolling(Z)Z

    .line 2173
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripView;->invalidate()V

    goto :goto_0
.end method

.method public scrollToPosition(IIZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "duration"    # I
    .param p3, "interruptible"    # Z

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 2315
    :goto_0
    return-void

    .line 2313
    :cond_0
    iput-boolean p3, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mCanStopScroll:Z

    .line 2314
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScrollGesture:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$2100(Lcom/android/camera/widget/FilmstripView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$2100(Lcom/android/camera/widget/FilmstripView;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->startScroll(III)V

    goto :goto_0
.end method

.method public setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/widget/FilmstripView;->access$3200(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V

    .line 2048
    return-void
.end method

.method public setImageGap(I)V
    .locals 1
    .param p1, "imageGap"    # I

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/widget/FilmstripView;->access$3100(Lcom/android/camera/widget/FilmstripView;I)V

    .line 2038
    return-void
.end method

.method public setListener(Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/widget/FilmstripView;->access$3500(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;)V

    .line 2063
    return-void
.end method

.method public stopScrolling(Z)Z
    .locals 2
    .param p1, "forced"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2294
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2301
    :goto_0
    return v0

    .line 2296
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mCanStopScroll:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 2297
    const/4 v0, 0x0

    goto :goto_0

    .line 2300
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->mScrollGesture:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->forceFinished(Z)V

    goto :goto_0
.end method
