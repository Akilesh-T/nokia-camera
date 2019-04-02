.class Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->flingInsideZoomView(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

.field final synthetic val$current:Lcom/android/camera/widget/FilmstripView$ViewItem;

.field final synthetic val$decelerationX:Landroid/animation/ValueAnimator;

.field final synthetic val$decelerationY:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Lcom/android/camera/widget/FilmstripView$ViewItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .prologue
    .line 2243
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iput-object p2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;->val$decelerationX:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;->val$decelerationY:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;->val$current:Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;->val$decelerationX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2247
    .local v1, "transX":F
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;->val$decelerationY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2249
    .local v2, "transY":F
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;->val$current:Lcom/android/camera/widget/FilmstripView$ViewItem;

    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v3, v3, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v4, v4, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    .line 2250
    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v5, v5, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$4100(Lcom/android/camera/widget/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$6;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v6, v6, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$4100(Lcom/android/camera/widget/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 2249
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->updateTransform(FFFFII)V

    .line 2251
    return-void
.end method
