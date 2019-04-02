.class Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$3;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    .prologue
    .line 2537
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$3;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2540
    invoke-static {}, Lcom/android/camera/widget/FilmstripView;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[fling] mXScrollAnimatorListener.onAnimationCancel"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2542
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2546
    invoke-static {}, Lcom/android/camera/widget/FilmstripView;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[fling] onScrollEnd from mXScrollAnimatorListener.onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2547
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$3;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->access$5300(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;->onScrollEnd()V

    .line 2548
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2552
    invoke-static {}, Lcom/android/camera/widget/FilmstripView;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[fling] mXScrollAnimatorListener.onAnimationRepeat"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2554
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2558
    invoke-static {}, Lcom/android/camera/widget/FilmstripView;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[fling] mXScrollAnimatorListener.onAnimationStart"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2560
    return-void
.end method
