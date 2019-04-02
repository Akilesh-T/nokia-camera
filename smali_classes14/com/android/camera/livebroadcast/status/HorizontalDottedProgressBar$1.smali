.class Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$1;
.super Ljava/lang/Object;
.source "HorizontalDottedProgressBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$1;->this$0:Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 90
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$1;->this$0:Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->access$108(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;)I

    .line 95
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$1;->this$0:Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->access$100(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$1;->this$0:Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->access$102(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;I)I

    .line 99
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 85
    return-void
.end method
