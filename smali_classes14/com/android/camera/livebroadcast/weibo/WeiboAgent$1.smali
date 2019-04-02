.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->chooseAccount(Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

.field final synthetic val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$002(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 79
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$000(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    .line 80
    .local v0, "isValid":Z
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$000(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/weibo/AccessTokenKeeper;->writeAccessToken(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-interface {v1, v2, v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    .line 86
    :cond_1
    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 90
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chooseAccount() WeiboException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    .line 93
    :cond_0
    return-void
.end method
