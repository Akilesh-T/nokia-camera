.class Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1950
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-static {v0, v2}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$2302(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Z)Z

    .line 1951
    invoke-static {}, Lcom/android/camera/widget/FilmstripView;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[fling] onScrollEnd() - onScrollEnd"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1952
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    .line 1974
    :cond_0
    :goto_0
    return-void

    .line 1955
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$2400(Lcom/android/camera/widget/FilmstripView;)V

    .line 1962
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$2500(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    invoke-static {}, Lcom/android/camera/widget/FilmstripView;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[fling] onScrollEnd() - Ensuring that items are at full resolution."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1969
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0, v3}, Lcom/android/camera/widget/FilmstripView;->access$2600(Lcom/android/camera/widget/FilmstripView;I)V

    .line 1970
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/widget/FilmstripView;->access$2600(Lcom/android/camera/widget/FilmstripView;I)V

    .line 1971
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0, v2}, Lcom/android/camera/widget/FilmstripView;->access$2600(Lcom/android/camera/widget/FilmstripView;I)V

    .line 1972
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/widget/FilmstripView;->access$2600(Lcom/android/camera/widget/FilmstripView;I)V

    goto :goto_0
.end method

.method public onScrollUpdate(II)V
    .locals 3
    .param p1, "currX"    # I
    .param p2, "currY"    # I

    .prologue
    .line 1938
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v1, v1, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1, p1}, Lcom/android/camera/widget/FilmstripView;->access$2102(Lcom/android/camera/widget/FilmstripView;I)I

    .line 1940
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v1, v1, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$2200(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v0

    .line 1941
    .local v0, "stopScroll":Z
    if-eqz v0, :cond_0

    .line 1942
    invoke-static {}, Lcom/android/camera/widget/FilmstripView;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "[fling] onScrollUpdate() - stopScrolling!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1943
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v1, v1, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScrolling(Z)Z

    .line 1945
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl$1;->this$1:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    iget-object v1, v1, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripView;->invalidate()V

    .line 1946
    return-void
.end method
