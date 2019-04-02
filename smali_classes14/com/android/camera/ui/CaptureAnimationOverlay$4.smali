.class Lcom/android/camera/ui/CaptureAnimationOverlay$4;
.super Ljava/lang/Object;
.source "CaptureAnimationOverlay.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CaptureAnimationOverlay;->stopFlashAnimationAfterTakePicture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CaptureAnimationOverlay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/CaptureAnimationOverlay;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$4;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 252
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$4;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$4;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->access$202(Lcom/android/camera/ui/CaptureAnimationOverlay;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 247
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 257
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 241
    return-void
.end method
