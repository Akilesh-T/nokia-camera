.class Lcom/android/camera/widget/ModeOptions$5;
.super Ljava/lang/Object;
.source "ModeOptions.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/ModeOptions;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ModeOptions;

.field final synthetic val$button:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/ModeOptions;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/ModeOptions;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/camera/widget/ModeOptions$5;->this$0:Lcom/android/camera/widget/ModeOptions;

    iput-object p2, p0, Lcom/android/camera/widget/ModeOptions$5;->val$button:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$5;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v0}, Lcom/android/camera/widget/ModeOptions;->access$400(Lcom/android/camera/widget/ModeOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/camera/widget/ModeOptions$5;->val$button:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$5;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-virtual {v0}, Lcom/android/camera/widget/ModeOptions;->invalidate()V

    .line 239
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/ModeOptions$5;->val$button:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method
