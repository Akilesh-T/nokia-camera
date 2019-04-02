.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshToken - onComplete : response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "refreshToken - onComplete after streaming close, abort."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v2

    new-instance v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$1;

    invoke-direct {v3, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 353
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Ljava/lang/String;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$002(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 262
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$000(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    .line 263
    .local v0, "isValid":Z
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    if-eqz v0, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$000(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/livebroadcast/weibo/AccessTokenKeeper;->writeAccessToken(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 280
    new-instance v1, Lcom/android/camera/livebroadcast/weibo/openapi/LiveAuthAPI;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "1758031757"

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$000(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/weibo/openapi/LiveAuthAPI;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 281
    .local v1, "liveAuthAPI":Lcom/android/camera/livebroadcast/weibo/openapi/LiveAuthAPI;
    new-instance v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$3;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/livebroadcast/weibo/openapi/LiveAuthAPI;->checkAuth(Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0

    .line 267
    .end local v1    # "liveAuthAPI":Lcom/android/camera/livebroadcast/weibo/openapi/LiveAuthAPI;
    :cond_1
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "refreshToken - mAccessToken not valid, abort."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v2

    new-instance v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$2;

    invoke-direct {v3, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$2;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 274
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v5, v5, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v5, v5, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .line 276
    invoke-static {v5}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0800be

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 274
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 357
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshToken WeiboException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$4;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1$4;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 365
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "refreshToken - onWeiboException after streaming close, abort."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$900(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method
