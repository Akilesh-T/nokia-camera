.class Lcom/android/camera/widget/RoundedThumbnailView$2;
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
    .line 568
    iput-object p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$2;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 571
    iget-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView$2;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v3, v2}, Lcom/android/camera/widget/RoundedThumbnailView;->access$302(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 572
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 573
    .local v0, "fraction":F
    const/high16 v1, -0x41000000    # -0.5f

    .line 575
    .local v1, "opacityDiff":F
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView$2;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, v0, v1

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/camera/widget/RoundedThumbnailView;->access$402(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 577
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView$2;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v2}, Lcom/android/camera/widget/RoundedThumbnailView;->invalidate()V

    .line 578
    return-void
.end method
