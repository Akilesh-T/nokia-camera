.class Lcom/android/camera/widget/PeekView$1;
.super Ljava/lang/Object;
.source "PeekView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/PeekView;->startPeekAnimation(Landroid/graphics/Bitmap;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PeekView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PeekView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/PeekView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/widget/PeekView$1;->this$0:Lcom/android/camera/widget/PeekView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/camera/widget/PeekView$1;->this$0:Lcom/android/camera/widget/PeekView;

    iget-object v0, p0, Lcom/android/camera/widget/PeekView$1;->this$0:Lcom/android/camera/widget/PeekView;

    invoke-static {v0}, Lcom/android/camera/widget/PeekView;->access$100(Lcom/android/camera/widget/PeekView;)F

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/camera/widget/PeekView;->access$002(Lcom/android/camera/widget/PeekView;F)F

    .line 110
    iget-object v0, p0, Lcom/android/camera/widget/PeekView$1;->this$0:Lcom/android/camera/widget/PeekView;

    invoke-virtual {v0}, Lcom/android/camera/widget/PeekView;->invalidate()V

    .line 111
    return-void
.end method
