.class Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ModeListView.java"


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
    .line 1679
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$4;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$4;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ModeListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1690
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$4;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->this$0:Lcom/android/camera/ui/ModeListView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ModeListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1684
    return-void
.end method
