.class Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;
.super Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
.source "AdvancedModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AdvancedModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullyHiddenState"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mShouldBeVisible:Z

.field final synthetic this$0:Lcom/android/camera/ui/AdvancedModeListView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/AdvancedModeListView;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;-><init>(Lcom/android/camera/ui/operation/ModeListViewOperation;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->mShouldBeVisible:Z

    .line 135
    invoke-static {p1}, Lcom/android/camera/ui/AdvancedModeListView;->access$000(Lcom/android/camera/ui/AdvancedModeListView;)V

    .line 136
    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private snapOpenAndShow()V
    .locals 4

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->mShouldBeVisible:Z

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/AdvancedModeListView;->access$100(Lcom/android/camera/ui/AdvancedModeListView;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState$1;-><init>(Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 216
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;-><init>(Lcom/android/camera/ui/AdvancedModeListView;Lcom/android/camera/ui/AdvancedModeListView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 213
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
    .line 220
    invoke-super {p0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onCurrentState()V

    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    .line 222
    invoke-virtual {v1}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->snapOpenAndShow()V

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldHandleVisibilityChange(I)Z
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->mShouldBeVisible:Z

    if-eqz v1, :cond_0

    .line 177
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showSwitcherHint()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->snapOpenAndShow()V

    goto :goto_0
.end method
