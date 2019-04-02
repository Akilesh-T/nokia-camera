.class Lcom/android/camera/ui/ModeListView$FullyShownState;
.super Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
.source "ModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullyShownState"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/android/camera/ui/ModeListView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ModeListView;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;-><init>(Lcom/android/camera/ui/operation/ModeListViewOperation;)V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ModeListView;Lcom/android/camera/ui/ModeListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p2, "x1"    # Lcom/android/camera/ui/ModeListView$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeListView$FullyShownState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/camera/ui/ModeListView$FullyShownState;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$FullyShownState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private snapBackAndHide()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeListView;->snapBack(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyShownState$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ModeListView$FullyShownState$1;-><init>(Lcom/android/camera/ui/ModeListView$FullyShownState;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$FullyShownState;->snapBackAndHide()V

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public onCurrentState()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    .line 356
    invoke-virtual {v1}, Lcom/android/camera/ui/ModeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeListView;->showSettingsClingIfEnabled(Z)V

    .line 358
    return-void
.end method

.method public onItemSelected(Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V
    .locals 3
    .param p1, "selectedItem"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$SelectedState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2, p1}, Lcom/android/camera/ui/ModeListView$SelectedState;-><init>(Lcom/android/camera/ui/ModeListView;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 309
    return-void
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$FullyShownState;->snapBackAndHide()V

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 251
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeListView;->access$800(Lcom/android/camera/ui/ModeListView;)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$ScrollingState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ModeListView$ScrollingState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 256
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/ModeListView;->access$900(Lcom/android/camera/ui/ModeListView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$FullyShownState;->snapBackAndHide()V

    .line 289
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView;->access$202(Lcom/android/camera/ui/ModeListView;I)I

    .line 271
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView;->access$400(Lcom/android/camera/ui/ModeListView;Z)V

    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/ModeListView;->access$900(Lcom/android/camera/ui/ModeListView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$1100(Lcom/android/camera/ui/ModeListView;)[Lcom/android/camera/ui/ModeSelectorItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/ui/ModeListView;->access$300(Lcom/android/camera/ui/ModeListView;FF)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView;->access$1002(Lcom/android/camera/ui/ModeListView;Landroid/view/View;)Landroid/view/View;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/ModeListView;->access$1200(Lcom/android/camera/ui/ModeListView;Landroid/view/MotionEvent;)V

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
