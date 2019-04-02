.class Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AdvancedModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->startFadeoutAnimation(Landroid/animation/Animator$AnimatorListener;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

.field final synthetic val$modeId:I

.field final synthetic val$selectedItem:Lcom/android/camera/ui/operation/ModeSelectorItemOperation;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$8;->this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    iput-object p2, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$8;->val$selectedItem:Lcom/android/camera/ui/operation/ModeSelectorItemOperation;

    iput p3, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$8;->val$modeId:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$8;->this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$8$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$8$1;-><init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$8;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView;->post(Ljava/lang/Runnable;)Z

    .line 1374
    return-void
.end method
