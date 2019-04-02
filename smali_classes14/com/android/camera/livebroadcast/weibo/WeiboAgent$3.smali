.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->createLiveBroadcast(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

.field final synthetic val$activity:Lcom/android/camera/CameraActivity;

.field final synthetic val$isClosed:Lcom/android/camera/async/Observable;

.field final synthetic val$orientation:I

.field final synthetic val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/async/Observable;Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$isClosed:Lcom/android/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$activity:Lcom/android/camera/CameraActivity;

    iput-object p4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iput p5, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$300(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$300(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->hide()V

    .line 166
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0, v5}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$302(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "streaming close, ignore. - createLiveBroadcast"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    new-instance v1, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$activity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;[Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$302(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 175
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$300(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->show(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;)V

    goto :goto_0
.end method
