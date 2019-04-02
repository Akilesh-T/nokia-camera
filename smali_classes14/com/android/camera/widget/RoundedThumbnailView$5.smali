.class Lcom/android/camera/widget/RoundedThumbnailView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RoundedThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/RoundedThumbnailView;->runPendingRequestAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/RoundedThumbnailView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/RoundedThumbnailView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/RoundedThumbnailView;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$5;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$5;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$500(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$5;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$500(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishRippleAnimation()V

    .line 626
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$5;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$600(Lcom/android/camera/widget/RoundedThumbnailView;)V

    .line 628
    :cond_0
    return-void
.end method
