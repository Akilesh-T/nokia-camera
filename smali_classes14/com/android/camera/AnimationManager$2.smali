.class Lcom/android/camera/AnimationManager$2;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AnimationManager;->startCaptureAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AnimationManager;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/AnimationManager;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/AnimationManager;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/AnimationManager$2;->this$0:Lcom/android/camera/AnimationManager;

    iput-object p2, p0, Lcom/android/camera/AnimationManager$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/AnimationManager$2;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/camera/AnimationManager$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/AnimationManager$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/AnimationManager$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 111
    iget-object v0, p0, Lcom/android/camera/AnimationManager$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/AnimationManager$2;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/android/camera/AnimationManager$2;->this$0:Lcom/android/camera/AnimationManager;

    invoke-static {v0}, Lcom/android/camera/AnimationManager;->access$000(Lcom/android/camera/AnimationManager;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 114
    iget-object v0, p0, Lcom/android/camera/AnimationManager$2;->this$0:Lcom/android/camera/AnimationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/AnimationManager;->access$002(Lcom/android/camera/AnimationManager;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 115
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 125
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/camera/AnimationManager$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/AnimationManager$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    return-void
.end method
