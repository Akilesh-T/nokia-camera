.class Lcom/android/camera/ui/ModeListView$FullyHiddenState$1;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeListView$FullyHiddenState;->snapOpenAndShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/ModeListView$FullyHiddenState;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView$FullyHiddenState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState$1;->this$1:Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 218
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState$1;->this$1:Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    invoke-static {v0, v3}, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->access$602(Lcom/android/camera/ui/ModeListView$FullyHiddenState;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState$1;->this$1:Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyShownState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$FullyHiddenState$1;->this$1:Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    iget-object v2, v2, Lcom/android/camera/ui/ModeListView$FullyHiddenState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/ui/ModeListView$FullyShownState;-><init>(Lcom/android/camera/ui/ModeListView;Lcom/android/camera/ui/ModeListView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 213
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 223
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 207
    return-void
.end method
