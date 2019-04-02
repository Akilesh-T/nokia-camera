.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 12
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const v11, 0x7f0800be

    const/4 v10, 0x0

    .line 284
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAuth - onComplete : response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "checkAuth - onComplete after streaming close, abort."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 334
    :goto_0
    return-void

    .line 298
    :cond_0
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 299
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string v0, "status"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "status"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 300
    .local v9, "status":Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3$2;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3$2;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 307
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "status":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 325
    .local v7, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAuth JSONException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3$4;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3$4;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v10}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    move-object v9, v10

    .line 299
    goto/16 :goto_1

    .line 308
    .restart local v9    # "status":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "-1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3$3;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3$3;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800c6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 319
    :cond_3
    const-string v0, "0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$602(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Z)Z

    .line 322
    :cond_4
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$isClosed:Lcom/android/camera/async/Observable;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$000(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v5, v5, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v5, v5, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v5, v5, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$eventName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget v6, v6, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$orientation:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$800(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 338
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAuth WeiboException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3$5;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3$5;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 346
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "checkAuth - onWeiboException after streaming close, abort."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$900(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method
