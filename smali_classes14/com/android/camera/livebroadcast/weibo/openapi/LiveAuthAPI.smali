.class public Lcom/android/camera/livebroadcast/weibo/openapi/LiveAuthAPI;
.super Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;
.source "LiveAuthAPI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 20
    return-void
.end method


# virtual methods
.method public checkAuth(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "rListener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 24
    const-string v1, "LiveAuthAPI"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_0
    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/LiveAuthAPI;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/proxy/live2/user/authed"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/camera/livebroadcast/weibo/openapi/LiveAuthAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0
.end method
