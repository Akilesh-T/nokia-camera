.class Lcom/android/camera/widget/FilmstripView$ViewItem$2;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/FilmstripView$ViewItem;->animateTranslationY(FJLandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/FilmstripView$ViewItem;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView$ViewItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/FilmstripView$ViewItem;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem$2;->this$0:Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem$2;->this$0:Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationY(F)V

    .line 354
    return-void
.end method
