.class Lcom/android/camera/ui/AdvancedModeListView$FullyShownState$1;
.super Ljava/lang/Object;
.source "AdvancedModeListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->snapBackAndHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 297
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->access$702(Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 291
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;

    iget-object v2, v2, Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 292
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 302
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 286
    return-void
.end method
