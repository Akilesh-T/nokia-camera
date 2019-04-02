.class Lcom/android/camera/ui/CaptureAnimationOverlay$3$1;
.super Ljava/lang/Object;
.source "CaptureAnimationOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CaptureAnimationOverlay$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/CaptureAnimationOverlay$3;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CaptureAnimationOverlay$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/CaptureAnimationOverlay$3;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$3$1;->this$1:Lcom/android/camera/ui/CaptureAnimationOverlay$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$3$1;->this$1:Lcom/android/camera/ui/CaptureAnimationOverlay$3;

    iget-object v0, v0, Lcom/android/camera/ui/CaptureAnimationOverlay$3;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->access$200(Lcom/android/camera/ui/CaptureAnimationOverlay;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$3$1;->this$1:Lcom/android/camera/ui/CaptureAnimationOverlay$3;

    iget-object v0, v0, Lcom/android/camera/ui/CaptureAnimationOverlay$3;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->access$200(Lcom/android/camera/ui/CaptureAnimationOverlay;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 205
    :cond_0
    return-void
.end method
