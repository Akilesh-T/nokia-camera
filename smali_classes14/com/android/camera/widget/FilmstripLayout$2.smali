.class Lcom/android/camera/widget/FilmstripLayout$2;
.super Ljava/lang/Object;
.source "FilmstripLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/FilmstripLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripLayout$2;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout$2;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/widget/FilmstripLayout;->access$300(Lcom/android/camera/widget/FilmstripLayout;F)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$2;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$400(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->invalidateSelf()V

    .line 111
    return-void
.end method
