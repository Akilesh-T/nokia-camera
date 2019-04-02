.class Lcom/android/camera/livebroadcast/weibo/WeiboStatus$1;
.super Landroid/os/Handler;
.source "WeiboStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus$1;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus$1;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->access$000(Lcom/android/camera/livebroadcast/weibo/WeiboStatus;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "The current status is stopped on handleMessage(). Skip it!"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 48
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus$1;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->access$200(Lcom/android/camera/livebroadcast/weibo/WeiboStatus;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    move-result-object v1

    .line 49
    .local v1, "statusCallback":Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    if-eqz v1, :cond_0

    .line 50
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    .line 51
    .local v0, "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->UPDATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    .end local v0    # "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    .end local v1    # "statusCallback":Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    :pswitch_1
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "MSG_RE_JOIN_ROOM"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    sget-object v2, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mInstance:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus$1;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->access$300(Lcom/android/camera/livebroadcast/weibo/WeiboStatus;)Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->getRoomID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->joinRoom(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
