.class Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->zoomAt(Lcom/android/camera/widget/FilmstripView$ViewItem;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

.field final synthetic val$current:Lcom/android/camera/widget/FilmstripView$ViewItem;

.field final synthetic val$endScale:F

.field final synthetic val$focusX:F

.field final synthetic val$focusY:F


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;FLcom/android/camera/widget/FilmstripView$ViewItem;FF)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iput p2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->val$endScale:F

    iput-object p3, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->val$current:Lcom/android/camera/widget/FilmstripView$ViewItem;

    iput p4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->val$focusX:F

    iput p5, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->val$focusY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2141
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v0

    iget v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->val$endScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->val$current:Lcom/android/camera/widget/FilmstripView$ViewItem;

    iget v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->val$focusX:F

    iget v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->val$focusY:F

    iget v3, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->val$endScale:F

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v4, v4, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v4, v4, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$4100(Lcom/android/camera/widget/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v5, v5, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    .line 2121
    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$4100(Lcom/android/camera/widget/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 2120
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/widget/FilmstripView$ViewItem;->postScale(FFFII)V

    .line 2122
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    iget v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->val$endScale:F

    invoke-static {v0, v1}, Lcom/android/camera/widget/FilmstripView;->access$102(Lcom/android/camera/widget/FilmstripView;F)F

    .line 2125
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->inFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2126
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$1200(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Z)V

    .line 2127
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$4200(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/ui/ZoomView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 2128
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->val$current:Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->resetTransform()V

    .line 2129
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$4300(Lcom/android/camera/widget/FilmstripView;)V

    .line 2134
    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$4602(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 2135
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView;->zoomAtIndexChanged()V

    .line 2136
    return-void

    .line 2131
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$4400(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    .line 2132
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$4500(Lcom/android/camera/widget/FilmstripView;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2146
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 2103
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$3800(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2104
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$3900(Lcom/android/camera/widget/FilmstripView;)V

    .line 2108
    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$1200(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Z)V

    .line 2112
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$1100(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    .line 2113
    return-void

    .line 2106
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$2700(Lcom/android/camera/widget/FilmstripView;)V

    goto :goto_0

    .line 2109
    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->inZoomView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$4;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$4000(Lcom/android/camera/widget/FilmstripView;)V

    goto :goto_1
.end method
