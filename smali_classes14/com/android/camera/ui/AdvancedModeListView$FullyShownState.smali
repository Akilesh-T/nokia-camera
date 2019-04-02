.class Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;
.super Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
.source "AdvancedModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AdvancedModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullyShownState"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/android/camera/ui/AdvancedModeListView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/AdvancedModeListView;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;-><init>(Lcom/android/camera/ui/operation/ModeListViewOperation;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/AdvancedModeListView;Lcom/android/camera/ui/AdvancedModeListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;
    .param p2, "x1"    # Lcom/android/camera/ui/AdvancedModeListView$1;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private snapBackAndHide()V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/AdvancedModeListView;->access$400(Lcom/android/camera/ui/AdvancedModeListView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/AdvancedModeListView;->access$400(Lcom/android/camera/ui/AdvancedModeListView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView;->snapBack(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    .line 281
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState$1;-><init>(Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->snapBackAndHide()V

    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public onCurrentState()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    .line 321
    invoke-virtual {v1}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView;->showSettingsClingIfEnabled(Z)V

    .line 323
    return-void
.end method

.method public onItemSelected(Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V
    .locals 3
    .param p1, "selectedItem"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/AdvancedModeListView;->access$600(Lcom/android/camera/ui/AdvancedModeListView;)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {v1, v2, p1}, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;-><init>(Lcom/android/camera/ui/AdvancedModeListView;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 273
    return-void
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->snapBackAndHide()V

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/AdvancedModeListView;->access$500(Lcom/android/camera/ui/AdvancedModeListView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->snapBackAndHide()V

    .line 254
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 239
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
