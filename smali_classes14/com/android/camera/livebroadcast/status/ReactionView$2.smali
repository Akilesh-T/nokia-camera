.class Lcom/android/camera/livebroadcast/status/ReactionView$2;
.super Ljava/lang/Object;
.source "ReactionView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/status/ReactionView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/status/ReactionView;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/status/ReactionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/ReactionView$2;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 161
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView$2;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$900(Lcom/android/camera/livebroadcast/status/ReactionView;)Lcom/android/camera/livebroadcast/status/ReactionView$MainHandler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/livebroadcast/status/ReactionView$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 156
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 166
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 151
    return-void
.end method
