.class Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$7;
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
    .line 1732
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$7;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$7;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeListView;->invalidate()V

    .line 1736
    return-void
.end method
