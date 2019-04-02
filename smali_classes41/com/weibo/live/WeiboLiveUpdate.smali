.class public Lcom/weibo/live/WeiboLiveUpdate;
.super Lcom/weibo/live/WeiboLiveApiBase;
.source "WeiboLiveUpdate.java"


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final IMAGE:Ljava/lang/String; = "image"

.field private static final PUBLISHED:Ljava/lang/String; = "published"

.field private static final REPLAYURL:Ljava/lang/String; = "replay_url"

.field private static final STOP:Ljava/lang/String; = "stop"

.field private static final SUMMARY:Ljava/lang/String; = "summary"

.field private static final SUMMARYLENGTH:I = 0x104

.field private static final TAG:Ljava/lang/String; = "WeiboLiveUpdate"

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private final UPDATEURL:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private published:Ljava/lang/String;

.field private replayUrl:Ljava/lang/String;

.field private stop:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/weibo/live/WeiboLiveApiBase;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 20
    const-string v0, "https://api.weibo.com/2/proxy/live/update"

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveUpdate;->UPDATEURL:Ljava/lang/String;

    .line 32
    const-string v0, "2"

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveUpdate;->published:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveUpdate;->image:Ljava/lang/String;

    .line 34
    const-string v0, "0"

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveUpdate;->stop:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveUpdate;->replayUrl:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveUpdate;->id:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveUpdate;->image:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPublished(Ljava/lang/String;)V
    .locals 0
    .param p1, "published"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveUpdate;->published:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setReplayUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "replayUrl"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveUpdate;->replayUrl:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setStop(Ljava/lang/String;)V
    .locals 0
    .param p1, "stop"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveUpdate;->stop:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveUpdate;->summary:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveUpdate;->title:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public updateLive(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "rListener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string v1, "TAG"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/weibo/live/WeiboLiveUpdate;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 45
    const-string v1, "TAG"

    const-string v2, "necessary param is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/weibo/live/WeiboLiveUpdate;->summary:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveUpdate;->summary:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x104

    if-le v1, v2, :cond_2

    .line 47
    const-string v1, "TAG"

    const-string v2, "summary is too long"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveUpdate;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "id"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveUpdate;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "title"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveUpdate;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "summary"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveUpdate;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "published"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveUpdate;->published:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "image"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveUpdate;->image:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "stop"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveUpdate;->stop:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "replay_url"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveUpdate;->replayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "https://api.weibo.com/2/proxy/live/update"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/weibo/live/WeiboLiveUpdate;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0
.end method
