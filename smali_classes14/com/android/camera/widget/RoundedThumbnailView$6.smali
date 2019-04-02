.class Lcom/android/camera/widget/RoundedThumbnailView$6;
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
    .line 630
    iput-object p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 633
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->access$702(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 634
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 635
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v2}, Lcom/android/camera/widget/RoundedThumbnailView;->access$900(Lcom/android/camera/widget/RoundedThumbnailView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    .line 636
    invoke-static {v3}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1000(Lcom/android/camera/widget/RoundedThumbnailView;)F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v4}, Lcom/android/camera/widget/RoundedThumbnailView;->access$900(Lcom/android/camera/widget/RoundedThumbnailView;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 635
    invoke-static {v1, v2}, Lcom/android/camera/widget/RoundedThumbnailView;->access$802(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 637
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    const v2, 0x3ecccccd    # 0.4f

    const v3, -0x41333333    # -0.4f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1102(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 639
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v1}, Lcom/android/camera/widget/RoundedThumbnailView;->invalidate()V

    .line 640
    return-void
.end method
