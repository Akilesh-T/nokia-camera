.class Lcom/android/camera/ui/ModeTransitionView$3;
.super Ljava/lang/Object;
.source "ModeTransitionView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeTransitionView;->startPeepHoleAnimation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModeTransitionView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeTransitionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ModeTransitionView;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 352
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ui/ModeTransitionView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 337
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v0, v2}, Lcom/android/camera/ui/ModeTransitionView;->access$702(Lcom/android/camera/ui/ModeTransitionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 338
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->access$202(Lcom/android/camera/ui/ModeTransitionView;F)F

    .line 339
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeTransitionView;->access$300(Lcom/android/camera/ui/ModeTransitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeTransitionView;->access$300(Lcom/android/camera/ui/ModeTransitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeTransitionView;->access$800(Lcom/android/camera/ui/ModeTransitionView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 341
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v0, v3}, Lcom/android/camera/ui/ModeTransitionView;->access$902(Lcom/android/camera/ui/ModeTransitionView;I)I

    .line 343
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeTransitionView;->access$1000(Lcom/android/camera/ui/ModeTransitionView;)Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeTransitionView;->access$1000(Lcom/android/camera/ui/ModeTransitionView;)Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;->onAnimationFinished(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v0, v2}, Lcom/android/camera/ui/ModeTransitionView;->access$1002(Lcom/android/camera/ui/ModeTransitionView;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    .line 347
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 357
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$3;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ModeTransitionView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 331
    return-void
.end method
