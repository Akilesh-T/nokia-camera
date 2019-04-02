.class Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$5;
.super Ljava/lang/Object;
.source "LiveMsgManager.java"

# interfaces
.implements Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->sendMsg(Ljava/lang/String;Ljava/lang/String;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
        "<",
        "Lcom/sina/sinalivesdk/models/PushMessageModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$5;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "s2"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",s1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public onSuccess(Lcom/sina/sinalivesdk/models/PushMessageModel;Ljava/lang/String;)V
    .locals 3
    .param p1, "pushMessageModel"    # Lcom/sina/sinalivesdk/models/PushMessageModel;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    check-cast p1, Lcom/sina/sinalivesdk/models/PushMessageModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$5;->onSuccess(Lcom/sina/sinalivesdk/models/PushMessageModel;Ljava/lang/String;)V

    return-void
.end method
