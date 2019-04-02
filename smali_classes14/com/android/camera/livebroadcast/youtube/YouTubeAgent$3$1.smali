.class Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3$1;
.super Ljava/lang/Object;
.source "YouTubeAgent.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListener(Ljava/lang/String;I)V
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$002(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 198
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "streaming close, ignore. - createLiveBroadcast"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$200(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_account_youtube_privacy"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "privacyStatus":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "privacyStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    new-instance v1, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;->val$activity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;

    iget-object v5, v5, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;)V

    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .line 207
    invoke-static {v2}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$300(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
