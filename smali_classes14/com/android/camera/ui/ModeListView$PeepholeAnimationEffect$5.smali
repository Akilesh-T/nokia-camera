.class Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$5;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$5;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1709
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$5;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$5;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    invoke-static {v0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->access$4000(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->access$3902(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;F)F

    .line 1710
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$5;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeListView;->invalidate()V

    .line 1711
    return-void
.end method
