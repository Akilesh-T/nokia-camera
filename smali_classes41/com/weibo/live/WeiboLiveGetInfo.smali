.class public Lcom/weibo/live/WeiboLiveGetInfo;
.super Lcom/weibo/live/WeiboLiveApiBase;
.source "WeiboLiveGetInfo.java"


# static fields
.field private static final DETAIL:Ljava/lang/String; = "detail"

.field private static GETINFOURL:Ljava/lang/String; = null

.field private static final ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "WeiboLiveGetInfo"


# instance fields
.field private detail:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "https://api.weibo.com/2/proxy/live/show"

    sput-object v0, Lcom/weibo/live/WeiboLiveGetInfo;->GETINFOURL:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/weibo/live/WeiboLiveApiBase;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 23
    const-string v0, "0"

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveGetInfo;->detail:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getInfoLive(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "rListener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    const-string v1, "WeiboLiveGetInfo"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/weibo/live/WeiboLiveGetInfo;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 33
    const-string v1, "WeiboLiveGetInfo"

    const-string v2, "necessary param is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveGetInfo;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "id"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveGetInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "detail"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveGetInfo;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/weibo/live/WeiboLiveGetInfo;->GETINFOURL:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/weibo/live/WeiboLiveGetInfo;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveGetInfo;->detail:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveGetInfo;->id:Ljava/lang/String;

    .line 44
    return-void
.end method
