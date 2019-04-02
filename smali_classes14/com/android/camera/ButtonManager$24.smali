.class Lcom/android/camera/ButtonManager$24;
.super Ljava/lang/Object;
.source "ButtonManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ButtonManager;->showIconAlphaAnim(Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ButtonManager;


# direct methods
.method constructor <init>(Lcom/android/camera/ButtonManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ButtonManager;

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/android/camera/ButtonManager$24;->this$0:Lcom/android/camera/ButtonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1657
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1652
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1662
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/camera/ButtonManager$24;->this$0:Lcom/android/camera/ButtonManager;

    invoke-static {v0}, Lcom/android/camera/ButtonManager;->access$400(Lcom/android/camera/ButtonManager;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ButtonManager$24;->this$0:Lcom/android/camera/ButtonManager;

    invoke-static {v0}, Lcom/android/camera/ButtonManager;->access$400(Lcom/android/camera/ButtonManager;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/android/camera/ButtonManager$24;->this$0:Lcom/android/camera/ButtonManager;

    invoke-static {v0}, Lcom/android/camera/ButtonManager;->access$400(Lcom/android/camera/ButtonManager;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1647
    :cond_0
    return-void
.end method
