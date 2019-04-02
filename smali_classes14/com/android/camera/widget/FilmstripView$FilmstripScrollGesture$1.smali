.class Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$1;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    .prologue
    .line 2513
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2516
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->access$5200(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 2517
    .local v0, "newPosition":Z
    if-nez v0, :cond_0

    .line 2518
    invoke-static {}, Lcom/android/camera/widget/FilmstripView;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "[fling] onScrollEnd from computeScrollOffset"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2519
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->access$5300(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;->onScrollEnd()V

    .line 2525
    :goto_0
    return-void

    .line 2522
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->access$5300(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->access$5200(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->access$5200(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;->onScrollUpdate(II)V

    .line 2523
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->access$5400(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2524
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$1;->this$0:Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;->access$5400(Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
