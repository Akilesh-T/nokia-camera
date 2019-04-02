.class public Lcom/weibo/live/WeiboLiveAccess;
.super Lcom/weibo/live/WeiboLiveApiBase;
.source "WeiboLiveAccess.java"


# static fields
.field private static ACCESSURL:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "WeiboLiveAccess"

.field private static final UID:Ljava/lang/String; = "uid"


# instance fields
.field private ac:Landroid/app/Activity;

.field private authCode:Ljava/lang/String;

.field private packageinfo:Landroid/content/pm/PackageInfo;

.field private schemeUrl:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "https://api.weibo.com/2/proxy/live2/user/authed"

    sput-object v0, Lcom/weibo/live/WeiboLiveAccess;->ACCESSURL:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/weibo/live/WeiboLiveApiBase;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/weibo/live/WeiboLiveAccess;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveAccess;->statusCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/weibo/live/WeiboLiveAccess;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveAccess;->schemeUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/weibo/live/WeiboLiveAccess;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveAccess;->authCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/weibo/live/WeiboLiveAccess;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveAccess;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/weibo/live/WeiboLiveAccess;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveAccess;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/weibo/live/WeiboLiveAccess;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveAccess;->ac:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/weibo/live/WeiboLiveAccess;Landroid/content/pm/PackageInfo;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveAccess;->packageinfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method static synthetic access$7(Lcom/weibo/live/WeiboLiveAccess;)Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveAccess;->packageinfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic access$8(Lcom/weibo/live/WeiboLiveAccess;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveAccess;->schemeUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public accessLive(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 4
    .param p1, "rListener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    const-string v1, "WeiboLiveAccess"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/weibo/live/WeiboLiveAccess;->uid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 47
    const-string v1, "WeiboLiveAccess"

    const-string v2, "necessary param is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveAccess;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "uid"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveAccess;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/weibo/live/WeiboLiveAccess;->ACCESSURL:Ljava/lang/String;

    const-string v2, "POST"

    new-instance v3, Lcom/weibo/live/WeiboLiveAccess$1;

    invoke-direct {v3, p0, p1}, Lcom/weibo/live/WeiboLiveAccess$1;-><init>(Lcom/weibo/live/WeiboLiveAccess;Lcom/sina/weibo/sdk/net/RequestListener;)V

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/weibo/live/WeiboLiveAccess;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0
.end method

.method public setAc(Landroid/app/Activity;)V
    .locals 0
    .param p1, "ac"    # Landroid/app/Activity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveAccess;->ac:Landroid/app/Activity;

    .line 128
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveAccess;->uid:Ljava/lang/String;

    .line 124
    return-void
.end method
