.class Lcom/android/camera/ui/ModeListView$FullyShownState$1;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeListView$FullyShownState;->snapBackAndHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/ModeListView$FullyShownState;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView$FullyShownState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/ModeListView$FullyShownState;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$FullyShownState$1;->this$1:Lcom/android/camera/ui/ModeListView$FullyShownState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 332
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState$1;->this$1:Lcom/android/camera/ui/ModeListView$FullyShownState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView$FullyShownState;->access$1302(Lcom/android/camera/ui/ModeListView$FullyShownState;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 326
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$FullyShownState$1;->this$1:Lcom/android/camera/ui/ModeListView$FullyShownState;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$FullyShownState$1;->this$1:Lcom/android/camera/ui/ModeListView$FullyShownState;

    iget-object v2, v2, Lcom/android/camera/ui/ModeListView$FullyShownState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 327
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 337
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 321
    return-void
.end method
