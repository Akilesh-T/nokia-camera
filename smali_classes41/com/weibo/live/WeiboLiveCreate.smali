.class public Lcom/weibo/live/WeiboLiveCreate;
.super Lcom/weibo/live/WeiboLiveApiBase;
.source "WeiboLiveCreate.java"


# static fields
.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final IMAGE:Ljava/lang/String; = "image"

.field private static final PANOLIVE:Ljava/lang/String; = "is_panolive"

.field private static final PUBLISHED:Ljava/lang/String; = "published"

.field private static final REPLAY:Ljava/lang/String; = "replay"

.field private static final SUMMARY:Ljava/lang/String; = "summary"

.field private static final SUMMARYLENGTH:I = 0x104

.field private static final TAG:Ljava/lang/String; = "WeiboLiveCreate"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final CREATEURL:Ljava/lang/String;

.field private ac:Landroid/app/Activity;

.field private height:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private panoLive:Ljava/lang/String;

.field private published:Ljava/lang/String;

.field private replay:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/weibo/live/WeiboLiveApiBase;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 21
    const-string v0, "https://api.weibo.com/2/proxy/live/create"

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->CREATEURL:Ljava/lang/String;

    .line 35
    const-string v0, "0"

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->published:Ljava/lang/String;

    .line 36
    const-string v0, "http://ww3.sinaimg.cn/thumbnail/946308c5jw1dv288whtylj.jpg"

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->image:Ljava/lang/String;

    .line 37
    const-string v0, "1"

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->replay:Ljava/lang/String;

    .line 38
    const-string v0, "0"

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->panoLive:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->width:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->height:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->summary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->published:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->image:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->replay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveCreate;->panoLive:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createLive(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 4
    .param p1, "rListener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    const-string v1, "WeiboLiveCreate"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/weibo/live/WeiboLiveCreate;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveCreate;->width:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveCreate;->height:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 48
    :cond_1
    const-string v1, "WeiboLiveCreate"

    const-string v2, "necessary param is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/weibo/live/WeiboLiveCreate;->summary:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveCreate;->summary:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x104

    if-le v1, v2, :cond_3

    .line 50
    const-string v1, "WeiboLiveCreate"

    const-string v2, "summary is too long"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_3
    new-instance v0, Lcom/weibo/live/WeiboLiveAccess;

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveCreate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveCreate;->mAppKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/weibo/live/WeiboLiveCreate;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-direct {v0, v1, v2, v3}, Lcom/weibo/live/WeiboLiveAccess;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 53
    .local v0, "mAccess":Lcom/weibo/live/WeiboLiveAccess;
    iget-object v1, p0, Lcom/weibo/live/WeiboLiveCreate;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weibo/live/WeiboLiveAccess;->setUid(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/weibo/live/WeiboLiveCreate;->ac:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/weibo/live/WeiboLiveAccess;->setAc(Landroid/app/Activity;)V

    .line 55
    new-instance v1, Lcom/weibo/live/WeiboLiveCreate$1;

    invoke-direct {v1, p0, p1}, Lcom/weibo/live/WeiboLiveCreate$1;-><init>(Lcom/weibo/live/WeiboLiveCreate;Lcom/sina/weibo/sdk/net/RequestListener;)V

    invoke-virtual {v0, v1}, Lcom/weibo/live/WeiboLiveAccess;->accessLive(Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0
.end method

.method public setAc(Landroid/app/Activity;)V
    .locals 0
    .param p1, "ac"    # Landroid/app/Activity;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveCreate;->ac:Landroid/app/Activity;

    .line 114
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveCreate;->height:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveCreate;->image:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPanoLive(Ljava/lang/String;)V
    .locals 0
    .param p1, "panoLive"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveCreate;->panoLive:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setPublished(Ljava/lang/String;)V
    .locals 0
    .param p1, "published"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveCreate;->published:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setReplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "replay"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveCreate;->replay:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveCreate;->summary:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveCreate;->title:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveCreate;->width:Ljava/lang/String;

    .line 86
    return-void
.end method
