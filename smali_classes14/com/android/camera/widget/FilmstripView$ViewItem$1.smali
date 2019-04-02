.class Lcom/android/camera/widget/FilmstripView$ViewItem$1;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/FilmstripView$ViewItem;->animateTranslationX(FJLandroid/animation/TimeInterpolator;)V
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
    .line 324
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$ViewItem$1;->this$0:Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$ViewItem$1;->this$0:Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->access$200(Lcom/android/camera/widget/FilmstripView$ViewItem;)Lcom/android/camera/widget/FilmstripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView;->invalidate()V

    .line 332
    return-void
.end method
