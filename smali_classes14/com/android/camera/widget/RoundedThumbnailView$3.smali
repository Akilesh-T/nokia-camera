.class Lcom/android/camera/widget/RoundedThumbnailView$3;
.super Ljava/lang/Object;
.source "RoundedThumbnailView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/RoundedThumbnailView;->runPendingRequestAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/RoundedThumbnailView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/RoundedThumbnailView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/RoundedThumbnailView;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$3;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView$3;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$302(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 591
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$3;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->invalidate()V

    .line 592
    return-void
.end method
