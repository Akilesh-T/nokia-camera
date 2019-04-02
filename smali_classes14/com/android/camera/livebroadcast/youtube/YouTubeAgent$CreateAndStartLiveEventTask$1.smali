.class Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask$1;
.super Ljava/lang/Object;
.source "YouTubeAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->access$500(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;)Lcom/android/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "CreateAndStartLiveEventTask - onPreExecute after streaming close, ignore."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$400(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->access$600(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$800(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method
