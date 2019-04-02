.class Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$2;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .prologue
    .line 1978
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$2;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$2;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1986
    :goto_0
    return-void

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$2;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v1, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/widget/FilmstripView;->access$102(Lcom/android/camera/widget/FilmstripView;F)F

    .line 1985
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$2;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView;->invalidate()V

    goto :goto_0
.end method
