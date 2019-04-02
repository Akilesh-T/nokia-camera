.class public Lcom/weibo/live/WeiboLiveDelete;
.super Lcom/weibo/live/WeiboLiveApiBase;
.source "WeiboLiveDelete.java"


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "WeiboLiveDelete"


# instance fields
.field private final DELETEURL:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/weibo/live/WeiboLiveApiBase;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 18
    const-string v0, "https://api.weibo.com/2/proxy/live/delete"

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveDelete;->DELETEURL:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public deleteLive(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "rListener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    const-string v1, "WeiboLiveDelete"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/weibo/live/WeiboLiveDelete;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 31
    const-string v1, "WeiboLiveDelete"

    const-string v2, "necessary param is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveDelete;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "id"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveDelete;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "https://api.weibo.com/2/proxy/live/delete"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/weibo/live/WeiboLiveDelete;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveDelete;->id:Ljava/lang/String;

    .line 41
    return-void
.end method
