.class Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$5;
.super Ljava/lang/Object;
.source "AdvancedModeListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$5;->this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1249
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$5;->this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$5;->this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    invoke-static {v0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->access$2000(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->access$1902(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;F)F

    .line 1250
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$5;->this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-virtual {v0}, Lcom/android/camera/ui/AdvancedModeListView;->invalidate()V

    .line 1251
    return-void
.end method
