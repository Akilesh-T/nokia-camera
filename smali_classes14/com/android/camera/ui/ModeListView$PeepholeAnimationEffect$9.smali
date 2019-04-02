.class Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->startFadeoutAnimation(Landroid/animation/Animator$AnimatorListener;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;III)V
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
    .line 1844
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$9;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$9;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    invoke-static {v0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->access$4200(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$9;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    invoke-static {v0}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->access$4200(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1849
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect$9;->this$1:Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->access$4202(Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1851
    :cond_0
    return-void
.end method
