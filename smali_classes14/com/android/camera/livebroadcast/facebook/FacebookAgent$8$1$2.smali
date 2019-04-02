.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 12
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    const/4 v11, 0x0

    .line 544
    iget-object v6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v6}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$500(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v6

    new-instance v7, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2$1;

    invoke-direct {v7, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 551
    iget-object v6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v6}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 552
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    const-string v7, "GraphRequest - onCompleted after streaming close, dismiss dialog."

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 556
    :cond_0
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createEvent() onCompleted() with response = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/livebroadcast/facebook/FacebookError;->getErrorMessage(Lcom/facebook/FacebookRequestError;)I

    move-result v1

    .line 558
    .local v1, "errorMsg":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 559
    iget-object v6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v7, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v8, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v9, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    iget-object v9, v9, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v9, v9, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v9}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9, v11}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 564
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 565
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "liveID":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create Live ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 567
    const-string v6, "stream_url"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 568
    .local v5, "rtmpPath":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create Live rtmpPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 569
    new-instance v4, Lcom/android/camera/livebroadcast/facebook/LiveData;

    iget-object v6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$liveData:Lcom/android/camera/livebroadcast/facebook/LiveData;

    invoke-virtual {v6}, Lcom/android/camera/livebroadcast/facebook/LiveData;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/camera/livebroadcast/facebook/LiveData;-><init>(Lcom/facebook/AccessToken;)V

    .line 570
    .local v4, "returnLiveData":Lcom/android/camera/livebroadcast/facebook/LiveData;
    invoke-virtual {v4, v2}, Lcom/android/camera/livebroadcast/facebook/LiveData;->setLiveID(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v4, v5}, Lcom/android/camera/livebroadcast/facebook/LiveData;->setRTMPPath(Ljava/lang/String;)V

    .line 572
    iget-object v6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v7, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v8, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v9, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    iget-object v9, v9, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v9, v9, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-interface {v6, v7, v8, v9, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 573
    .end local v2    # "liveID":Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "returnLiveData":Lcom/android/camera/livebroadcast/facebook/LiveData;
    .end local v5    # "rtmpPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createEvent() Exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 575
    iget-object v6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v7, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v8, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v9, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    iget-object v9, v9, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v9, v9, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v9}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0800be

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9, v11}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
