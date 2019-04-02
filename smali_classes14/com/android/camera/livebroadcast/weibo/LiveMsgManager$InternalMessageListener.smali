.class Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalMessageListener;
.super Ljava/lang/Object;
.source "LiveMsgManager.java"

# interfaces
.implements Lcom/sina/sinalivesdk/interfaces/WBIMLiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalMessageListener;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewMessage(ILcom/sina/sinalivesdk/models/PushMessageModel;Ljava/lang/String;)Z
    .locals 7
    .param p1, "msgType"    # I
    .param p2, "model"    # Lcom/sina/sinalivesdk/models/PushMessageModel;
    .param p3, "requestId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 505
    if-eqz p2, :cond_1

    .line 507
    const/4 v1, 0x0

    .line 508
    .local v1, "msgtype":I
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalMessageListener;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->access$100(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Lcom/android/camera/livebroadcast/weibo/dispatchmessage/IMsgTypeConvert;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 509
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalMessageListener;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->access$100(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Lcom/android/camera/livebroadcast/weibo/dispatchmessage/IMsgTypeConvert;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/models/PushMessageModel;->getMsg_type()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/models/PushMessageModel;->getSys_msg_type()I

    move-result v5

    aput v5, v3, v4

    invoke-interface {v2, v3}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/IMsgTypeConvert;->convertType([I)I

    move-result v1

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalMessageListener;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->access$200(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalMessageListener;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/models/PushMessageModel;->getRawData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, p1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->onMsgCallBack(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v1    # "msgtype":I
    :cond_1
    :goto_0
    return v6

    .line 514
    .restart local v1    # "msgtype":I
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
