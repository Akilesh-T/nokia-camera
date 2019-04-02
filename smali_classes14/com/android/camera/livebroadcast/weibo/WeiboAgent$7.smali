.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->queryUserInfo(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

.field final synthetic val$accessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$isClosed:Lcom/android/camera/async/Observable;

.field final synthetic val$orientation:I

.field final synthetic val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/async/Observable;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$isClosed:Lcom/android/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iput-object p5, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$accessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    iput-object p6, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$eventName:Ljava/lang/String;

    iput p7, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 19
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryUserInfo - onComplete : response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "queryUserInfo - onComplete after streaming close, abort."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v2

    new-instance v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 429
    :goto_0
    return-void

    .line 418
    :cond_0
    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    .local v18, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "avatar_hd"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "avatar_hd"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, "imgURL":Ljava/lang/String;
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http://"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    const-string v2, "http://"

    const-string v3, "https://"

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 423
    :cond_1
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsersAPI with imgURL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$isClosed:Lcom/android/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$accessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$eventName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$orientation:I

    invoke-static/range {v2 .. v9}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$1100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    .end local v8    # "imgURL":Ljava/lang/String;
    .end local v18    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v17

    .line 426
    .local v17, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryUserInfo JSONException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$isClosed:Lcom/android/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$accessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$eventName:Ljava/lang/String;

    const-string v15, ""

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$orientation:I

    move/from16 v16, v0

    invoke-static/range {v9 .. v16}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$1100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 419
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v18    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 8
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 433
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryUserInfo WeiboException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7$2;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7$2;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 442
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "queryUserInfo - onWeiboException after streaming close, abort."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 448
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$isClosed:Lcom/android/camera/async/Observable;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$accessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$eventName:Ljava/lang/String;

    const-string v6, ""

    iget v7, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$orientation:I

    invoke-static/range {v0 .. v7}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$1100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
