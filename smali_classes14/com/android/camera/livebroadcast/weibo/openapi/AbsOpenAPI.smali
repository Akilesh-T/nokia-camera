.class public abstract Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;
.super Ljava/lang/Object;
.source "AbsOpenAPI.java"


# static fields
.field protected static final API_SERVER:Ljava/lang/String; = "https://api.weibo.com/2"

.field protected static final HTTPMETHOD_GET:Ljava/lang/String; = "GET"

.field protected static final HTTPMETHOD_POST:Ljava/lang/String; = "POST"

.field protected static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field protected mAppKey:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->mAppKey:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 43
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
    .line 54
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 57
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_1

    .line 59
    :cond_0
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->TAG:Ljava/lang/String;

    const-string v1, "Argument error!"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->mContext:Landroid/content/Context;

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
    .line 77
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 80
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->TAG:Ljava/lang/String;

    const-string v1, "Argument error!"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, ""

    .line 86
    :goto_0
    return-object v0

    .line 85
    :cond_1
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->request(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
