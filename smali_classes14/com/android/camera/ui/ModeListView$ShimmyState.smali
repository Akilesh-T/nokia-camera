.class Lcom/android/camera/ui/ModeListView$ShimmyState;
.super Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
.source "ModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShimmyState"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private final mHideShimmy:Ljava/lang/Runnable;

.field private mStartHidingShimmyWhenWindowGainsFocus:Z

.field final synthetic this$0:Lcom/android/camera/ui/ModeListView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModeListView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 381
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;-><init>(Lcom/android/camera/ui/operation/ModeListViewOperation;)V

    .line 372
    iput-boolean v4, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mStartHidingShimmyWhenWindowGainsFocus:Z

    .line 373
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mAnimator:Landroid/animation/Animator;

    .line 374
    new-instance v2, Lcom/android/camera/ui/ModeListView$ShimmyState$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/ModeListView$ShimmyState$1;-><init>(Lcom/android/camera/ui/ModeListView$ShimmyState;)V

    iput-object v2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mHideShimmy:Ljava/lang/Runnable;

    .line 382
    invoke-virtual {p1, v4}, Lcom/android/camera/ui/ModeListView;->setVisibility(I)V

    .line 383
    invoke-static {p1}, Lcom/android/camera/ui/ModeListView;->access$1500(Lcom/android/camera/ui/ModeListView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    invoke-static {p1, v5}, Lcom/android/camera/ui/ModeListView;->access$1602(Lcom/android/camera/ui/ModeListView;F)F

    .line 385
    invoke-static {p1, v5}, Lcom/android/camera/ui/ModeListView;->access$1700(Lcom/android/camera/ui/ModeListView;F)V

    .line 386
    invoke-static {p1}, Lcom/android/camera/ui/ModeListView;->access$1100(Lcom/android/camera/ui/ModeListView;)[Lcom/android/camera/ui/ModeSelectorItem;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/camera/ui/ModeSelectorItem;->getMaxVisibleWidth()I

    move-result v1

    .line 387
    .local v1, "maxVisibleWidth":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lcom/android/camera/ui/ModeListView;->access$1100(Lcom/android/camera/ui/ModeListView;)[Lcom/android/camera/ui/ModeSelectorItem;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 388
    invoke-static {p1}, Lcom/android/camera/ui/ModeListView;->access$1100(Lcom/android/camera/ui/ModeListView;)[Lcom/android/camera/ui/ModeSelectorItem;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ModeSelectorItem;->setVisibleWidth(I)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ui/ModeListView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$ShimmyState;->hideShimmyWithDelay()V

    .line 395
    :goto_1
    return-void

    .line 393
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mStartHidingShimmyWhenWindowGainsFocus:Z

    goto :goto_1
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/ModeListView$ShimmyState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$ShimmyState;

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$ShimmyState;->startHidingShimmy()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/camera/ui/ModeListView$ShimmyState;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$ShimmyState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/ModeListView$ShimmyState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$ShimmyState;
    .param p1, "x1"    # Z

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeListView$ShimmyState;->onAnimationEnd(Z)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mHideShimmy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 499
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 505
    :goto_0
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mAnimator:Landroid/animation/Animator;

    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ModeListView$ShimmyState;->onAnimationEnd(Z)V

    goto :goto_0
.end method

.method private hideShimmyWithDelay()V
    .locals 4

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mHideShimmy:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/ModeListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 448
    return-void
.end method

.method private onAnimationEnd(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 518
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$1500(Lcom/android/camera/ui/ModeListView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayerType()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 519
    invoke-static {}, Lcom/android/camera/ui/ModeListView;->access$2300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Disabling hardware layer for the Settings Button. (onAnimationEnd)"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$1500(Lcom/android/camera/ui/ModeListView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$1500(Lcom/android/camera/ui/ModeListView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    if-eqz p1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$2400(Lcom/android/camera/ui/ModeListView;)V

    .line 528
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1, v4}, Lcom/android/camera/ui/ModeListView;->access$1602(Lcom/android/camera/ui/ModeListView;F)F

    .line 529
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v1, v1, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v2, Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    iget-object v3, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v2, v3}, Lcom/android/camera/ui/ModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 565
    :goto_0
    return-void

    .line 535
    :cond_1
    new-array v1, v5, [F

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v2}, Lcom/android/camera/ui/ModeListView;->access$1600(Lcom/android/camera/ui/ModeListView;)F

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 536
    .local v0, "openFactorAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/camera/ui/ModeListView$ShimmyState$3;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/ModeListView$ShimmyState$3;-><init>(Lcom/android/camera/ui/ModeListView$ShimmyState;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 543
    new-instance v1, Lcom/android/camera/ui/ModeListView$ShimmyState$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ModeListView$ShimmyState$4;-><init>(Lcom/android/camera/ui/ModeListView$ShimmyState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 564
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private startHidingShimmy()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 463
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$1100(Lcom/android/camera/ui/ModeListView;)[Lcom/android/camera/ui/ModeSelectorItem;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/android/camera/ui/ModeSelectorItem;->getMaxVisibleWidth()I

    move-result v0

    .line 467
    .local v0, "maxVisibleWidth":I
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    const/16 v2, -0x64

    const/16 v3, 0x352

    sget-object v4, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v0, v5, v7

    const/4 v6, 0x1

    aput v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/camera/ui/ModeListView;->access$1900(Lcom/android/camera/ui/ModeListView;IILandroid/animation/TimeInterpolator;[I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mAnimator:Landroid/animation/Animator;

    .line 469
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/camera/ui/ModeListView$ShimmyState$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/ModeListView$ShimmyState$2;-><init>(Lcom/android/camera/ui/ModeListView$ShimmyState;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$ShimmyState;->cancelAnimation()V

    .line 570
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 571
    return-void
.end method

.method public hideAnimated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 575
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$ShimmyState;->cancelAnimation()V

    .line 576
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView;->access$2600(Lcom/android/camera/ui/ModeListView;[I)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/ModeListView$ShimmyState$5;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ModeListView$ShimmyState$5;-><init>(Lcom/android/camera/ui/ModeListView$ShimmyState;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 582
    return-void
.end method

.method public onCurrentState()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onCurrentState()V

    .line 510
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeListView;->access$2200(Lcom/android/camera/ui/ModeListView;)V

    .line 511
    return-void
.end method

.method public onItemSelected(Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V
    .locals 3
    .param p1, "selectedItem"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation;

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$ShimmyState;->cancelAnimation()V

    .line 443
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$SelectedState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2, p1}, Lcom/android/camera/ui/ModeListView$SelectedState;-><init>(Lcom/android/camera/ui/ModeListView;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 444
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$ShimmyState;->cancelAnimation()V

    .line 401
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeListView;->access$800(Lcom/android/camera/ui/ModeListView;)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$ScrollingState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ModeListView$ScrollingState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 404
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->controlUsed(I)V

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/ModeListView;->access$300(Lcom/android/camera/ui/ModeListView;FF)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView;->access$202(Lcom/android/camera/ui/ModeListView;I)I

    .line 433
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0, v4}, Lcom/android/camera/ui/ModeListView;->access$400(Lcom/android/camera/ui/ModeListView;Z)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/ModeListView;->access$1200(Lcom/android/camera/ui/ModeListView;Landroid/view/MotionEvent;)V

    .line 437
    return v4
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mStartHidingShimmyWhenWindowGainsFocus:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->mStartHidingShimmyWhenWindowGainsFocus:Z

    .line 454
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$ShimmyState;->hideShimmyWithDelay()V

    .line 456
    :cond_0
    return-void
.end method

.method public shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v2, p1}, Lcom/android/camera/ui/ModeListView;->access$900(Lcom/android/camera/ui/ModeListView;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v3}, Lcom/android/camera/ui/ModeListView;->access$1100(Lcom/android/camera/ui/ModeListView;)[Lcom/android/camera/ui/ModeSelectorItem;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/camera/ui/ModeSelectorItem;->getMaxVisibleWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v2}, Lcom/android/camera/ui/ModeListView;->access$1100(Lcom/android/camera/ui/ModeListView;)[Lcom/android/camera/ui/ModeSelectorItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/ModeListView;->access$300(Lcom/android/camera/ui/ModeListView;FF)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/camera/ui/ModeListView;->access$1002(Lcom/android/camera/ui/ModeListView;Landroid/view/View;)Landroid/view/View;

    .line 425
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v2}, Lcom/android/camera/ui/ModeListView;->access$1800(Lcom/android/camera/ui/ModeListView;)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/ui/ModeListView;->access$1802(Lcom/android/camera/ui/ModeListView;J)J

    move v0, v1

    .line 422
    goto :goto_0
.end method
