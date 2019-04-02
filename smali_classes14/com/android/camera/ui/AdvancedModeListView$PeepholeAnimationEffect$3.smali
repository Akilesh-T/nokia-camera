.class Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$3;
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
    .line 1211
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$3;->this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1214
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1215
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$3;->this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    invoke-static {v1}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->access$1800(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1216
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$3;->this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    invoke-static {v1}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->access$1700(Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1217
    return-void
.end method
