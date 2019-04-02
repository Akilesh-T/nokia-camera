.class Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$2;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 2529
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$2;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$2;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->access$5300(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;->onScrollUpdate(II)V

    .line 2533
    return-void
.end method
