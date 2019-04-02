.class Lcom/android/camera/widget/FilmstripLayout$1;
.super Ljava/lang/Object;
.source "FilmstripLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/camera/widget/FilmstripLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripLayout$1;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripLayout$1;->mCanceled:Z

    .line 97
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/camera/widget/FilmstripLayout$1;->mCanceled:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$1;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$000(Lcom/android/camera/widget/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$1;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$100(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/widget/FilmstripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView;->getController()Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripController;->goToFilmstrip()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$1;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/FilmstripLayout;->setVisibility(I)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$1;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$200(Lcom/android/camera/widget/FilmstripLayout;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 102
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripLayout$1;->mCanceled:Z

    .line 80
    return-void
.end method
