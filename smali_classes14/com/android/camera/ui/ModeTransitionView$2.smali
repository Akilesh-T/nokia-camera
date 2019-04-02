.class Lcom/android/camera/ui/ModeTransitionView$2;
.super Ljava/lang/Object;
.source "ModeTransitionView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeTransitionView;->startPeepHoleAnimation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModeTransitionView;

.field final synthetic val$endRadius:I

.field final synthetic val$iconAlphaAnimator:Landroid/animation/ValueAnimator;

.field final synthetic val$iconScaleAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeTransitionView;ILandroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ModeTransitionView;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/camera/ui/ModeTransitionView$2;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    iput p2, p0, Lcom/android/camera/ui/ModeTransitionView$2;->val$endRadius:I

    iput-object p3, p0, Lcom/android/camera/ui/ModeTransitionView$2;->val$iconAlphaAnimator:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/camera/ui/ModeTransitionView$2;->val$iconScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView$2;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    iget v3, p0, Lcom/android/camera/ui/ModeTransitionView$2;->val$endRadius:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/ModeTransitionView;->access$202(Lcom/android/camera/ui/ModeTransitionView;F)F

    .line 313
    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView$2;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v2}, Lcom/android/camera/ui/ModeTransitionView;->access$300(Lcom/android/camera/ui/ModeTransitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView$2;->val$iconAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 314
    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView$2;->val$iconScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 315
    .local v0, "scale":F
    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView$2;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v2}, Lcom/android/camera/ui/ModeTransitionView;->access$400(Lcom/android/camera/ui/ModeTransitionView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 317
    .local v1, "size":I
    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView$2;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v2}, Lcom/android/camera/ui/ModeTransitionView;->access$300(Lcom/android/camera/ui/ModeTransitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeTransitionView$2;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v3}, Lcom/android/camera/ui/ModeTransitionView;->access$500(Lcom/android/camera/ui/ModeTransitionView;)I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ModeTransitionView$2;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    .line 318
    invoke-static {v4}, Lcom/android/camera/ui/ModeTransitionView;->access$600(Lcom/android/camera/ui/ModeTransitionView;)I

    move-result v4

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/ui/ModeTransitionView$2;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    .line 319
    invoke-static {v5}, Lcom/android/camera/ui/ModeTransitionView;->access$500(Lcom/android/camera/ui/ModeTransitionView;)I

    move-result v5

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/ModeTransitionView$2;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    .line 320
    invoke-static {v6}, Lcom/android/camera/ui/ModeTransitionView;->access$600(Lcom/android/camera/ui/ModeTransitionView;)I

    move-result v6

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    .line 317
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 322
    iget-object v2, p0, Lcom/android/camera/ui/ModeTransitionView$2;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-virtual {v2}, Lcom/android/camera/ui/ModeTransitionView;->invalidate()V

    .line 323
    return-void
.end method
