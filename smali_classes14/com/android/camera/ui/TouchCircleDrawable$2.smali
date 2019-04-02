.class Lcom/android/camera/ui/TouchCircleDrawable$2;
.super Ljava/lang/Object;
.source "TouchCircleDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/TouchCircleDrawable;->animate(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/TouchCircleDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/TouchCircleDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/TouchCircleDrawable;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/TouchCircleDrawable;->access$202(Lcom/android/camera/ui/TouchCircleDrawable;Z)Z

    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/TouchCircleDrawable;->access$300(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/TouchCircleDrawable;->access$300(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/TouchCircleDrawable;->access$202(Lcom/android/camera/ui/TouchCircleDrawable;Z)Z

    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/TouchCircleDrawable;->access$300(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/TouchCircleDrawable;->access$300(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/TouchCircleDrawable;->access$300(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/TouchCircleDrawable;->access$300(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 263
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/TouchCircleDrawable;->access$202(Lcom/android/camera/ui/TouchCircleDrawable;Z)Z

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/TouchCircleDrawable;->access$300(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$2;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/TouchCircleDrawable;->access$300(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 238
    :cond_0
    return-void
.end method
