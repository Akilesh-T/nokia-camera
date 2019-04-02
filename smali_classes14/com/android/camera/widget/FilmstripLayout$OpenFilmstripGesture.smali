.class Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;
.super Ljava/lang/Object;
.source "FilmstripLayout.java"

# interfaces
.implements Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenFilmstripGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/FilmstripLayout;


# direct methods
.method private constructor <init>(Lcom/android/camera/widget/FilmstripLayout;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/widget/FilmstripLayout;Lcom/android/camera/widget/FilmstripLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/widget/FilmstripLayout;
    .param p2, "x1"    # Lcom/android/camera/widget/FilmstripLayout$1;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;-><init>(Lcom/android/camera/widget/FilmstripLayout;)V

    return-void
.end method

.method private flingShouldOpenFilmstrip(F)Z
    .locals 2
    .param p1, "velocityX"    # F

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1100(Lcom/android/camera/widget/FilmstripLayout;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v0, p1, v0

    .line 418
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    .line 418
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$000(Lcom/android/camera/widget/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result v0

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDown(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onDown(FF)Z

    move-result v0

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(FF)Z
    .locals 2
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$000(Lcom/android/camera/widget/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onFling(FF)Z

    move-result v0

    .line 430
    :goto_0
    return v0

    .line 425
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->flingShouldOpenFilmstrip(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripLayout;->showFilmstrip()V

    .line 427
    const/4 v0, 0x1

    goto :goto_0

    .line 430
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onLongPress(FF)V

    .line 480
    return-void
.end method

.method public onMouseScroll(FF)Z
    .locals 2
    .param p1, "hscroll"    # F
    .param p2, "vscroll"    # F

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$000(Lcom/android/camera/widget/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onMouseScroll(FF)Z

    move-result v0

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScale(FFF)Z
    .locals 2
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scale"    # F

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$000(Lcom/android/camera/widget/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onScale(FFF)Z

    move-result v0

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(FF)Z
    .locals 2
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$000(Lcom/android/camera/widget/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onScaleBegin(FF)Z

    move-result v0

    .line 438
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onScaleEnd()V

    .line 487
    :cond_0
    return-void
.end method

.method public onScroll(FFFF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 339
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$100(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/widget/FilmstripView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView;->getController()Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v6

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$900(Lcom/android/camera/widget/FilmstripLayout;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    .line 346
    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    :cond_2
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    float-to-int v3, p3

    shr-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripLayout;->access$1100(Lcom/android/camera/widget/FilmstripLayout;)I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/camera/widget/FilmstripLayout;->access$1102(Lcom/android/camera/widget/FilmstripLayout;I)I

    .line 350
    cmpg-float v2, p3, v5

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    .line 351
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$400(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->setOffset(I)V

    .line 352
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$1200(Lcom/android/camera/widget/FilmstripLayout;)V

    .line 361
    :cond_3
    cmpl-float v2, p3, v5

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v3}, Lcom/android/camera/widget/FilmstripLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 362
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$100(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/widget/FilmstripView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView;->getCurrentItemLeft()I

    move-result v0

    .line 363
    .local v0, "currentItemLeft":I
    int-to-float p3, v0

    .line 364
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$400(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->setOffset(I)V

    .line 367
    .end local v0    # "currentItemLeft":I
    :cond_4
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    sub-float v1, v2, p3

    .line 368
    .local v1, "translate":F
    cmpg-float v2, v1, v5

    if-gez v2, :cond_7

    .line 369
    const/4 v1, 0x0

    .line 375
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2, v1}, Lcom/android/camera/widget/FilmstripLayout;->access$1300(Lcom/android/camera/widget/FilmstripLayout;F)V

    .line 376
    cmpl-float v2, v1, v5

    if-nez v2, :cond_6

    cmpl-float v2, p3, v5

    if-lez v2, :cond_6

    .line 380
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$1400(Lcom/android/camera/widget/FilmstripLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripLayout;->access$900(Lcom/android/camera/widget/FilmstripLayout;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 382
    :cond_6
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$400(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->invalidateSelf()V

    goto/16 :goto_0

    .line 371
    :cond_7
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    .line 372
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v1, v2

    goto :goto_1
.end method

.method public onSingleTapUp(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$000(Lcom/android/camera/widget/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result v0

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUp(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 459
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripLayout;->access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1000(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onUp(FF)Z

    move-result v0

    .line 474
    :goto_0
    return v0

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripLayout;->access$1100(Lcom/android/camera/widget/FilmstripLayout;)I

    move-result v1

    if-gez v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripLayout;->hideFilmstrip()V

    .line 464
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripLayout;->access$1500(Lcom/android/camera/widget/FilmstripLayout;)V

    .line 473
    :goto_1
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v1, v0}, Lcom/android/camera/widget/FilmstripLayout;->access$1102(Lcom/android/camera/widget/FilmstripLayout;I)I

    goto :goto_0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripLayout;->access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripLayout;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 467
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripLayout;->hideFilmstrip()V

    .line 468
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripLayout;->access$1500(Lcom/android/camera/widget/FilmstripLayout;)V

    goto :goto_1

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripLayout;->showFilmstrip()V

    goto :goto_1
.end method
