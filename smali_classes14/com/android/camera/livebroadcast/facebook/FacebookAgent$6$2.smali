.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->mList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    const/4 v8, 0x0

    .line 361
    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v3}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "GraphRequest - onCompleted after streaming close, dismiss dialog."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$500(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v3

    new-instance v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$1;

    invoke-direct {v4, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 411
    :goto_0
    return-void

    .line 372
    :cond_0
    sget-object v3, Lcom/facebook/GraphResponse$PagingDirection;->NEXT:Lcom/facebook/GraphResponse$PagingDirection;

    invoke-virtual {p1, v3}, Lcom/facebook/GraphResponse;->getRequestForPagedResults(Lcom/facebook/GraphResponse$PagingDirection;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 374
    .local v2, "nextRequest":Lcom/facebook/GraphRequest;
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listUserPages() onCompleted() with response = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/livebroadcast/facebook/FacebookError;->getErrorMessage(Lcom/facebook/FacebookRequestError;)I

    move-result v1

    .line 376
    .local v1, "errorMsg":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 377
    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$500(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v3

    new-instance v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$2;

    invoke-direct {v4, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$2;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 383
    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v5, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v6}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 388
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->mList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    if-eqz v2, :cond_2

    .line 390
    invoke-virtual {v2, p0}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 391
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listUserPages Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 403
    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$500(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v3

    new-instance v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$4;

    invoke-direct {v4, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$4;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 409
    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v5, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v6}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0800cb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$500(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v3

    new-instance v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;

    invoke-direct {v4, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
