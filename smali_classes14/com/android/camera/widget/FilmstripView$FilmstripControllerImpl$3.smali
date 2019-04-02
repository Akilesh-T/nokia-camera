.class Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;-><init>(Lcom/android/camera/widget/FilmstripView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

.field final synthetic val$this$0:Lcom/android/camera/widget/FilmstripView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .prologue
    .line 1999
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iput-object p2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;->val$this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 2026
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2014
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$2900(Lcom/android/camera/widget/FilmstripView;)V

    .line 2020
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView;->zoomAtIndexChanged()V

    .line 2021
    return-void

    .line 2016
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$3000(Lcom/android/camera/widget/FilmstripView;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 2031
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2003
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$2700(Lcom/android/camera/widget/FilmstripView;)V

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$3;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$2800(Lcom/android/camera/widget/FilmstripView;)V

    goto :goto_0
.end method
