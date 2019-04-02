.class public Lcom/weibo/live/WeiboLiveApiBase;
.super Ljava/lang/Object;
.source "WeiboLiveApiBase.java"


# static fields
.field protected static final API_SERVER:Ljava/lang/String; = "https://api.weibo.com/2"

.field protected static final HTTPMETHOD_GET:Ljava/lang/String; = "GET"

.field protected static final HTTPMETHOD_POST:Ljava/lang/String; = "POST"

.field protected static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final TAG:Ljava/lang/String; = "WeiboLiveApiBase"


# instance fields
.field protected mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field protected mAppKey:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveApiBase;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/weibo/live/WeiboLiveApiBase;->mAppKey:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/weibo/live/WeiboLiveApiBase;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 37
    return-void
.end method


# virtual methods
.method protected requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveApiBase;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    if-eqz p2, :cond_0

    .line 51
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    if-nez p4, :cond_1

    .line 53
    :cond_0
    const-string v0, "WeiboLiveApiBase"

    const-string v1, "Argument error!"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveApiBase;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveApiBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0
.end method

.method protected requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;
    .param p3, "httpMethod"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveApiBase;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    const-string v0, "WeiboLiveApiBase"

    const-string v1, "Argument error!"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, ""

    .line 80
    :goto_0
    return-object v0

    .line 79
    :cond_1
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveApiBase;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveApiBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->request(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
