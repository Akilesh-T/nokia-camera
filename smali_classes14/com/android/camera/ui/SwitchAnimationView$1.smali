.class Lcom/android/camera/ui/SwitchAnimationView$1;
.super Ljava/lang/Object;
.source "SwitchAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SwitchAnimationView;->startSwitchCameraAnimation(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SwitchAnimationView;

.field final synthetic val$previewRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SwitchAnimationView;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/SwitchAnimationView;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    iput-object p2, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->val$previewRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 93
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->val$previewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v0, v3, v4

    .line 94
    .local v0, "centerX":F
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->val$previewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v1, v3, v4

    .line 95
    .local v1, "centerY":F
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v3}, Lcom/android/camera/ui/SwitchAnimationView;->access$100(Lcom/android/camera/ui/SwitchAnimationView;)Lcom/android/camera/ui/SwitchCameraAnimation;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/SwitchCameraAnimation;->setFillAfter(Z)V

    .line 96
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v3}, Lcom/android/camera/ui/SwitchAnimationView;->access$100(Lcom/android/camera/ui/SwitchAnimationView;)Lcom/android/camera/ui/SwitchCameraAnimation;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/ui/SwitchCameraAnimation;->setCenter(FF)V

    .line 97
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v3}, Lcom/android/camera/ui/SwitchAnimationView;->access$200(Lcom/android/camera/ui/SwitchAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    iget-object v4, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v4}, Lcom/android/camera/ui/SwitchAnimationView;->access$200(Lcom/android/camera/ui/SwitchAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x19

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/SwitchAnimationView;->getBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 99
    .local v2, "preview":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v3}, Lcom/android/camera/ui/SwitchAnimationView;->access$300(Lcom/android/camera/ui/SwitchAnimationView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v4, v2, v5}, Lcom/android/camera/ui/SwitchAnimationView;->getScaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v3}, Lcom/android/camera/ui/SwitchAnimationView;->access$200(Lcom/android/camera/ui/SwitchAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v3}, Lcom/android/camera/ui/SwitchAnimationView;->access$200(Lcom/android/camera/ui/SwitchAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/ui/SwitchAnimationView;->access$202(Lcom/android/camera/ui/SwitchAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 105
    .end local v2    # "preview":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v3}, Lcom/android/camera/ui/SwitchAnimationView;->access$300(Lcom/android/camera/ui/SwitchAnimationView;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 106
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v3}, Lcom/android/camera/ui/SwitchAnimationView;->access$300(Lcom/android/camera/ui/SwitchAnimationView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v4}, Lcom/android/camera/ui/SwitchAnimationView;->access$100(Lcom/android/camera/ui/SwitchAnimationView;)Lcom/android/camera/ui/SwitchCameraAnimation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 112
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/SwitchAnimationView;->access$002(Lcom/android/camera/ui/SwitchAnimationView;Z)Z

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView$1;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SwitchAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 89
    return-void
.end method
