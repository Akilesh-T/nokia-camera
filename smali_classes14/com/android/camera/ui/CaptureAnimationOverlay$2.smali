.class Lcom/android/camera/ui/CaptureAnimationOverlay$2;
.super Ljava/lang/Object;
.source "CaptureAnimationOverlay.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CaptureAnimationOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final guard:Lcom/android/camera/stats/profiler/Profile;

.field final synthetic this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CaptureAnimationOverlay;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/ui/CaptureAnimationOverlay;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v0

    const-string v1, "mFlashAnimListener"

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->guard:Lcom/android/camera/stats/profiler/Profile;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onAnimationCancel"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onAnimationEnd"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->access$100(Lcom/android/camera/ui/CaptureAnimationOverlay;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->access$102(Lcom/android/camera/ui/CaptureAnimationOverlay;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->setVisibility(I)V

    .line 106
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onAnimationRepeat"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onAnimationStart"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->setVisibility(I)V

    .line 98
    return-void
.end method
