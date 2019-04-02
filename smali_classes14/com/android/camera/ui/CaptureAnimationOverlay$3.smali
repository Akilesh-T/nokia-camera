.class Lcom/android/camera/ui/CaptureAnimationOverlay$3;
.super Ljava/lang/Object;
.source "CaptureAnimationOverlay.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CaptureAnimationOverlay;->startFlashAnimationBeforeTakePicture(Landroid/animation/Animator$AnimatorListener;)Z
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
    .line 193
    iput-object p1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$3;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 212
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$3;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    new-instance v1, Lcom/android/camera/ui/CaptureAnimationOverlay$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CaptureAnimationOverlay$3$1;-><init>(Lcom/android/camera/ui/CaptureAnimationOverlay$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 217
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$3;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->setVisibility(I)V

    .line 197
    return-void
.end method
