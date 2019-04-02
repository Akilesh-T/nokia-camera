.class Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState$1;
.super Ljava/lang/Object;
.source "AdvancedModeListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->snapOpenAndShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 204
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    invoke-static {v0, v3}, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->access$202(Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    iget-object v2, v2, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;-><init>(Lcom/android/camera/ui/AdvancedModeListView;Lcom/android/camera/ui/AdvancedModeListView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/AdvancedModeListView;->access$400(Lcom/android/camera/ui/AdvancedModeListView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/AdvancedModeListView;->access$400(Lcom/android/camera/ui/AdvancedModeListView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 199
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 209
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 192
    return-void
.end method
