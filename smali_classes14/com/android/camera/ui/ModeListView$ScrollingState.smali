.class Lcom/android/camera/ui/ModeListView$ScrollingState;
.super Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
.source "ModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollingState"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/android/camera/ui/ModeListView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModeListView;)V
    .locals 1

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;-><init>(Lcom/android/camera/ui/operation/ModeListViewOperation;)V

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->mAnimator:Landroid/animation/Animator;

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ModeListView;->setVisibility(I)V

    .line 595
    return-void
.end method

.method static synthetic access$3002(Lcom/android/camera/ui/ModeListView$ScrollingState;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$ScrollingState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 601
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$200(Lcom/android/camera/ui/ModeListView;)I

    move-result v1

    mul-float v2, p3, v3

    mul-float/2addr v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ui/ModeListView;->access$2700(Lcom/android/camera/ui/ModeListView;IFF)V

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$2800(Lcom/android/camera/ui/ModeListView;)Z

    move-result v0

    .line 621
    .local v0, "shouldSnapBack":Z
    if-eqz v0, :cond_2

    .line 622
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$2900(Lcom/android/camera/ui/ModeListView;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->mAnimator:Landroid/animation/Animator;

    .line 626
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->mAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/camera/ui/ModeListView$ScrollingState$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/ui/ModeListView$ScrollingState$1;-><init>(Lcom/android/camera/ui/ModeListView$ScrollingState;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 656
    .end local v0    # "shouldSnapBack":Z
    :cond_1
    return v3

    .line 624
    .restart local v0    # "shouldSnapBack":Z
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$500(Lcom/android/camera/ui/ModeListView;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->mAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method public shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ScrollingState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 611
    const/4 v0, 0x0

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
