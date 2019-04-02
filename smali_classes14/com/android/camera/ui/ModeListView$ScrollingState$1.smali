.class Lcom/android/camera/ui/ModeListView$ScrollingState$1;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeListView$ScrollingState;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/ModeListView$ScrollingState;

.field final synthetic val$shouldSnapBack:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView$ScrollingState;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/ModeListView$ScrollingState;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$ScrollingState$1;->this$1:Lcom/android/camera/ui/ModeListView$ScrollingState;

    iput-boolean p2, p0, Lcom/android/camera/ui/ModeListView$ScrollingState$1;->val$shouldSnapBack:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 648
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 634
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ScrollingState$1;->this$1:Lcom/android/camera/ui/ModeListView$ScrollingState;

    invoke-static {v0, v3}, Lcom/android/camera/ui/ModeListView$ScrollingState;->access$3002(Lcom/android/camera/ui/ModeListView$ScrollingState;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 635
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ScrollingState$1;->this$1:Lcom/android/camera/ui/ModeListView$ScrollingState;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$ScrollingState;->this$0:Lcom/android/camera/ui/ModeListView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView;->access$202(Lcom/android/camera/ui/ModeListView;I)I

    .line 636
    iget-boolean v0, p0, Lcom/android/camera/ui/ModeListView$ScrollingState$1;->val$shouldSnapBack:Z

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ScrollingState$1;->this$1:Lcom/android/camera/ui/ModeListView$ScrollingState;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$ScrollingState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$ScrollingState$1;->this$1:Lcom/android/camera/ui/ModeListView$ScrollingState;

    iget-object v2, v2, Lcom/android/camera/ui/ModeListView$ScrollingState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 643
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ScrollingState$1;->this$1:Lcom/android/camera/ui/ModeListView$ScrollingState;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$ScrollingState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyShownState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$ScrollingState$1;->this$1:Lcom/android/camera/ui/ModeListView$ScrollingState;

    iget-object v2, v2, Lcom/android/camera/ui/ModeListView$ScrollingState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/ui/ModeListView$FullyShownState;-><init>(Lcom/android/camera/ui/ModeListView;Lcom/android/camera/ui/ModeListView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 640
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->controlUsed(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 653
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 630
    return-void
.end method
