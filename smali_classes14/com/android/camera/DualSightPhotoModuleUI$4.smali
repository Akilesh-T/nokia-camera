.class Lcom/android/camera/DualSightPhotoModuleUI$4;
.super Ljava/lang/Object;
.source "DualSightPhotoModuleUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModuleUI;->startFinishAnim(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI$4;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 745
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI$4;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1402(Lcom/android/camera/DualSightPhotoModuleUI;F)F

    .line 746
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 747
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI$4;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1400(Lcom/android/camera/DualSightPhotoModuleUI;)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI$4;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v2}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1400(Lcom/android/camera/DualSightPhotoModuleUI;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModuleUI$4;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModuleUI;->access$800(Lcom/android/camera/DualSightPhotoModuleUI;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModuleUI$4;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModuleUI;->access$800(Lcom/android/camera/DualSightPhotoModuleUI;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 748
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI$4;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1500(Lcom/android/camera/DualSightPhotoModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 749
    return-void
.end method
