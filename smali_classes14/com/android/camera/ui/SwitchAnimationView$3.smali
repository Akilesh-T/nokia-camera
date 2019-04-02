.class Lcom/android/camera/ui/SwitchAnimationView$3;
.super Ljava/lang/Object;
.source "SwitchAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SwitchAnimationView;->showModeBlurCover(IZLandroid/graphics/Bitmap;Lcom/android/camera/app/CameraAppUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SwitchAnimationView;

.field final synthetic val$mImglayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic val$nextTop:I

.field final synthetic val$preTop:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SwitchAnimationView;Landroid/widget/FrameLayout$LayoutParams;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/SwitchAnimationView;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/ui/SwitchAnimationView$3;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    iput-object p2, p0, Lcom/android/camera/ui/SwitchAnimationView$3;->val$mImglayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p3, p0, Lcom/android/camera/ui/SwitchAnimationView$3;->val$preTop:I

    iput p4, p0, Lcom/android/camera/ui/SwitchAnimationView$3;->val$nextTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 204
    .local v0, "fraction":F
    iget-object v2, p0, Lcom/android/camera/ui/SwitchAnimationView$3;->val$mImglayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 205
    iget-object v1, p0, Lcom/android/camera/ui/SwitchAnimationView$3;->val$mImglayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/camera/ui/SwitchAnimationView$3;->val$preTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/SwitchAnimationView$3;->val$nextTop:I

    iget v4, p0, Lcom/android/camera/ui/SwitchAnimationView$3;->val$preTop:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 206
    iget-object v1, p0, Lcom/android/camera/ui/SwitchAnimationView$3;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v1}, Lcom/android/camera/ui/SwitchAnimationView;->access$300(Lcom/android/camera/ui/SwitchAnimationView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SwitchAnimationView$3;->val$mImglayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    return-void
.end method
