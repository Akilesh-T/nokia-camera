.class Lcom/android/camera/ui/PreviewTransitionView$2;
.super Ljava/lang/Object;
.source "PreviewTransitionView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PreviewTransitionView;->setupAnimation(Lcom/android/camera/ui/PreviewTransitionView$TransitionType;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PreviewTransitionView;

.field final synthetic val$animationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PreviewTransitionView;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PreviewTransitionView;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/camera/ui/PreviewTransitionView$2;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    iput-object p2, p0, Lcom/android/camera/ui/PreviewTransitionView$2;->val$animationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView$2;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PreviewTransitionView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView$2;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v0, v2}, Lcom/android/camera/ui/PreviewTransitionView;->access$502(Lcom/android/camera/ui/PreviewTransitionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView$2;->val$animationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView$2;->val$animationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;->onAnimationFinished(Z)V

    .line 237
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView$2;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PreviewTransitionView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView$2;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v0, v2}, Lcom/android/camera/ui/PreviewTransitionView;->access$502(Lcom/android/camera/ui/PreviewTransitionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView$2;->val$animationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView$2;->val$animationFinishedListener:Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;->onAnimationFinished(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 242
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/PreviewTransitionView$2;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PreviewTransitionView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 217
    return-void
.end method
