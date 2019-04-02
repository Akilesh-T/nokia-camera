.class Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$8;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->flingInsideZoomView(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .prologue
    .line 2263
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$8;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$8;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$8;->mCancelled:Z

    .line 2282
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2273
    iget-boolean v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$8;->mCancelled:Z

    if-nez v0, :cond_0

    .line 2274
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$8;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$4400(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    .line 2276
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$8;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$4702(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2277
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2287
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2269
    return-void
.end method
