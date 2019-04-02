.class Lcom/android/camera/ui/TouchCircleDrawable$1;
.super Ljava/lang/Object;
.source "TouchCircleDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 219
    iput-object p1, p0, Lcom/android/camera/ui/TouchCircleDrawable$1;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/camera/ui/TouchCircleDrawable$1;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/TouchCircleDrawable;->access$002(Lcom/android/camera/ui/TouchCircleDrawable;I)I

    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$1;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/TouchCircleDrawable;->invalidateSelf()V

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$1;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/TouchCircleDrawable;->access$100(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable$1;->this$0:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/TouchCircleDrawable;->access$100(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 227
    :cond_0
    return-void
.end method
