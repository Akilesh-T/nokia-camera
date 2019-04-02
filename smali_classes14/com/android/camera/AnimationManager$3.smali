.class Lcom/android/camera/AnimationManager$3;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AnimationManager;->startFlashAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AnimationManager;

.field final synthetic val$flashOverlay:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/AnimationManager;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/AnimationManager;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/camera/AnimationManager$3;->this$0:Lcom/android/camera/AnimationManager;

    iput-object p2, p0, Lcom/android/camera/AnimationManager$3;->val$flashOverlay:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 160
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/AnimationManager$3;->val$flashOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/AnimationManager$3;->val$flashOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/AnimationManager$3;->this$0:Lcom/android/camera/AnimationManager;

    invoke-static {v0}, Lcom/android/camera/AnimationManager;->access$100(Lcom/android/camera/AnimationManager;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 154
    iget-object v0, p0, Lcom/android/camera/AnimationManager$3;->this$0:Lcom/android/camera/AnimationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/AnimationManager;->access$102(Lcom/android/camera/AnimationManager;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 155
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 165
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/AnimationManager$3;->val$flashOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    return-void
.end method
