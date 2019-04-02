.class Lcom/android/camera/ui/ModeListView$FullyHiddenState;
.super Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
.source "ModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullyHiddenState"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mShouldBeVisible:Z

.field final synthetic this$0:Lcom/android/camera/ui/ModeListView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModeListView;)V
    .locals 1

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;-><init>(Lcom/android/camera/ui/operation/ModeListViewOperation;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mShouldBeVisible:Z

    .line 143
    invoke-static {p1}, Lcom/android/camera/ui/ModeListView;->access$000(Lcom/android/camera/ui/ModeListView;)V

    .line 144
    return-void
.end method

.method static synthetic access$602(Lcom/android/camera/ui/ModeListView$FullyHiddenState;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$FullyHiddenState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private snapOpenAndShow()V
    .locals 4

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mShouldBeVisible:Z

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeListView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeListView;->access$500(Lcom/android/camera/ui/ModeListView;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyHiddenState$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ModeListView$FullyHiddenState$1;-><init>(Lcom/android/camera/ui/ModeListView$FullyHiddenState;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyShownState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/ui/ModeListView$FullyShownState;-><init>(Lcom/android/camera/ui/ModeListView;Lcom/android/camera/ui/ModeListView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 227
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->controlUsed(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCurrentState()V
    .locals 3

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onCurrentState()V

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    .line 236
    invoke-virtual {v1}, Lcom/android/camera/ui/ModeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->snapOpenAndShow()V

    .line 181
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v3, 0x1

    .line 148
    iput-boolean v3, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mShouldBeVisible:Z

    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeListView;->access$100(Lcom/android/camera/ui/ModeListView;)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$ScrollingState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ModeListView$ScrollingState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 152
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/ModeListView;->access$300(Lcom/android/camera/ui/ModeListView;FF)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView;->access$202(Lcom/android/camera/ui/ModeListView;I)I

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0, v4}, Lcom/android/camera/ui/ModeListView;->access$400(Lcom/android/camera/ui/ModeListView;Z)V

    .line 172
    :cond_0
    return v4
.end method

.method public shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public shouldHandleVisibilityChange(I)Z
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mShouldBeVisible:Z

    if-eqz v1, :cond_0

    .line 192
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showSwitcherHint()V
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->mShouldBeVisible:Z

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$ShimmyState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ModeListView$ShimmyState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 159
    return-void
.end method
