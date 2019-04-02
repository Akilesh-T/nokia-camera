.class Lcom/android/camera/MultiToggleImageButton$4;
.super Ljava/lang/Object;
.source "MultiToggleImageButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MultiToggleImageButton;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MultiToggleImageButton;


# direct methods
.method constructor <init>(Lcom/android/camera/MultiToggleImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/MultiToggleImageButton;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/camera/MultiToggleImageButton$4;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton$4;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-static {v0}, Lcom/android/camera/MultiToggleImageButton;->access$100(Lcom/android/camera/MultiToggleImageButton;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 359
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton$4;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-static {v0}, Lcom/android/camera/MultiToggleImageButton;->access$200(Lcom/android/camera/MultiToggleImageButton;)I

    move-result v0

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton$4;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-static {v0}, Lcom/android/camera/MultiToggleImageButton;->access$100(Lcom/android/camera/MultiToggleImageButton;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 365
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton$4;->this$0:Lcom/android/camera/MultiToggleImageButton;

    iget-object v1, p0, Lcom/android/camera/MultiToggleImageButton$4;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-static {v1}, Lcom/android/camera/MultiToggleImageButton;->access$100(Lcom/android/camera/MultiToggleImageButton;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 366
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton$4;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0}, Lcom/android/camera/MultiToggleImageButton;->invalidate()V

    .line 367
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton$4;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-static {v0}, Lcom/android/camera/MultiToggleImageButton;->access$200(Lcom/android/camera/MultiToggleImageButton;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton$4;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-static {v0}, Lcom/android/camera/MultiToggleImageButton;->access$100(Lcom/android/camera/MultiToggleImageButton;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0
.end method
