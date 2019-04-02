.class Lcom/android/camera/ui/CaptureAnimationOverlay$1;
.super Ljava/lang/Object;
.source "CaptureAnimationOverlay.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CaptureAnimationOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CaptureAnimationOverlay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/CaptureAnimationOverlay;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$1;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 86
    const/high16 v2, 0x437f0000    # 255.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v0, v2, v1

    .line 87
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$1;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->access$000(Lcom/android/camera/ui/CaptureAnimationOverlay;)Landroid/graphics/Paint;

    move-result-object v1

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$1;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->invalidate()V

    .line 89
    return-void
.end method
