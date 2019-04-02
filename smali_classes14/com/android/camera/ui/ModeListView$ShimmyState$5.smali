.class Lcom/android/camera/ui/ModeListView$ShimmyState$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeListView$ShimmyState;->hideAnimated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView$ShimmyState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/ModeListView$ShimmyState;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$5;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$5;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$5;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    iget-object v2, v2, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 580
    return-void
.end method
