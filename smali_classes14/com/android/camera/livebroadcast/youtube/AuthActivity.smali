.class public Lcom/android/camera/livebroadcast/youtube/AuthActivity;
.super Landroid/app/Activity;
.source "AuthActivity.java"


# static fields
.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static final HTTPS:Ljava/lang/String; = "https://"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final WEB_SITE:Ljava/lang/String; = "WEB_SITE"


# instance fields
.field private mWebSite:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-class v1, Lcom/android/camera/livebroadcast/youtube/AuthActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const-string v0, "https://www.youtube.com/live_streaming_signup"

    iput-object v0, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebSite:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebView:Landroid/webkit/WebView;

    .line 67
    new-instance v0, Lcom/android/camera/livebroadcast/youtube/AuthActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/youtube/AuthActivity$1;-><init>(Lcom/android/camera/livebroadcast/youtube/AuthActivity;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private clearCookies()V
    .locals 4

    .prologue
    .line 49
    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 51
    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    .line 53
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_1

    .line 54
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 55
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->flush()V

    .line 65
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    .line 58
    .local v1, "cookieSyncMngr":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 59
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 60
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 61
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 62
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 63
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0
.end method

.method private initWebView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 38
    const v1, 0x7f0f009b

    invoke-virtual {p0, v1}, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebView:Landroid/webkit/WebView;

    .line 39
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->clearCookies()V

    .line 41
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 42
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 44
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 45
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebSite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f04001c

    invoke-virtual {p0, v1}, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "WEB_SITE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "webSite":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    iput-object v0, p0, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->mWebSite:Ljava/lang/String;

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/youtube/AuthActivity;->initWebView()V

    .line 35
    return-void
.end method
