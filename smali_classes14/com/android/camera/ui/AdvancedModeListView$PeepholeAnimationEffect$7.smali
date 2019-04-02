.class Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$7;
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
    .line 1272
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$7;->this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect$7;->this$1:Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-virtual {v0}, Lcom/android/camera/ui/AdvancedModeListView;->invalidate()V

    .line 1276
    return-void
.end method
