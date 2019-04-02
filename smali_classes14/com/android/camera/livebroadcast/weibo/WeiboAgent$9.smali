.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->createLiveEvent(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

.field final synthetic val$accessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$isClosed:Lcom/android/camera/async/Observable;

.field final synthetic val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/async/Observable;Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->val$isClosed:Lcom/android/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->val$accessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    iput-object p5, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 11
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createLive - onComplete : response = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 496
    iget-object v6, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v6}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 497
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    const-string v7, "createLive - onComplete after streaming close, abort."

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 498
    iget-object v6, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v6}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v6

    new-instance v7, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9$1;

    invoke-direct {v7, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 529
    :goto_0
    return-void

    .line 508
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 509
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "id":Ljava/lang/String;
    const-string v6, "url"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, "rtmpPath":Ljava/lang/String;
    const-string v6, "room_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "roomID":Ljava/lang/String;
    new-instance v3, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    iget-object v6, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->val$accessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-direct {v3, v1, v5, v4, v6}, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 513
    .local v3, "liveData":Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;
    iget-object v6, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v7, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v8, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v9, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-interface {v6, v7, v8, v9, v3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    iget-object v6, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v6}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v6

    new-instance v7, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9$2;

    invoke-direct {v7, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9$2;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 516
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "liveData":Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;
    .end local v4    # "roomID":Ljava/lang/String;
    .end local v5    # "rtmpPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createLive JSONException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 518
    iget-object v6, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v7, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v8, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v9, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .line 520
    invoke-static {v9}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0800be

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 518
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    iget-object v6, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v6}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v6

    new-instance v7, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9$2;

    invoke-direct {v7, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9$2;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v7}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v7

    new-instance v8, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9$2;

    invoke-direct {v8, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9$2;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v6
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 533
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createLive WeiboException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9$3;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9$3;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 542
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "createLive - onWeiboException after streaming close, abort."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 548
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$900(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method
