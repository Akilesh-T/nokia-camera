.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3$1;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListener(Ljava/lang/String;I)V
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$302(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 181
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "streaming close, ignore. - createLiveBroadcast"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$activity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$isClosed:Lcom/android/camera/async/Observable;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;

    iget v5, v4, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$orientation:I

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$400(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Ljava/lang/String;I)V

    goto :goto_0
.end method
