.class Lcom/android/camera/ui/AdvancedModeListView$SelectedState$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AdvancedModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->startModeSelectionAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/AdvancedModeListView$SelectedState;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedModeListView$SelectedState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/AdvancedModeListView$SelectedState;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$SelectedState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$SelectedState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->access$1202(Lcom/android/camera/ui/AdvancedModeListView$SelectedState;Lcom/android/camera/widget/AnimationEffects;)Lcom/android/camera/widget/AnimationEffects;

    .line 393
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$SelectedState;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$SelectedState;

    iget-object v2, v2, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 394
    return-void
.end method
