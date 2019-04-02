.class Lnet/openid/appauth/BrowserHandler;
.super Ljava/lang/Object;
.source "BrowserHandler.java"


# static fields
.field private static final CLIENT_WAIT_TIME:J = 0x1L


# instance fields
.field private final mBrowserPackage:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mClient:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/support/customtabs/CustomTabsClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientLatch:Ljava/util/concurrent/CountDownLatch;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnection:Landroid/support/customtabs/CustomTabsServiceConnection;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lnet/openid/appauth/BrowserHandler;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Lnet/openid/appauth/BrowserPackageHelper;->getInstance()Lnet/openid/appauth/BrowserPackageHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/openid/appauth/BrowserPackageHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/BrowserHandler;->mBrowserPackage:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lnet/openid/appauth/BrowserHandler;->mClient:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lnet/openid/appauth/BrowserHandler;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    .line 61
    invoke-direct {p0}, Lnet/openid/appauth/BrowserHandler;->bindCustomTabsService()Landroid/support/customtabs/CustomTabsServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/BrowserHandler;->mConnection:Landroid/support/customtabs/CustomTabsServiceConnection;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lnet/openid/appauth/BrowserHandler;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lnet/openid/appauth/BrowserHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lnet/openid/appauth/BrowserHandler;->mClient:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lnet/openid/appauth/BrowserHandler;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lnet/openid/appauth/BrowserHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lnet/openid/appauth/BrowserHandler;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private bindCustomTabsService()Landroid/support/customtabs/CustomTabsServiceConnection;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lnet/openid/appauth/BrowserHandler$1;

    invoke-direct {v0, p0}, Lnet/openid/appauth/BrowserHandler$1;-><init>(Lnet/openid/appauth/BrowserHandler;)V

    .line 86
    .local v0, "connection":Landroid/support/customtabs/CustomTabsServiceConnection;
    iget-object v1, p0, Lnet/openid/appauth/BrowserHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/openid/appauth/BrowserHandler;->mBrowserPackage:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/CustomTabsServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const-string v1, "Unable to bind custom tabs service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lnet/openid/appauth/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lnet/openid/appauth/BrowserHandler;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    const/4 v0, 0x0

    .line 96
    .end local v0    # "connection":Landroid/support/customtabs/CustomTabsServiceConnection;
    :cond_0
    return-object v0
.end method

.method private createSession()Landroid/support/customtabs/CustomTabsSession;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 119
    :try_start_0
    iget-object v3, p0, Lnet/openid/appauth/BrowserHandler;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    iget-object v3, p0, Lnet/openid/appauth/BrowserHandler;->mClient:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/customtabs/CustomTabsClient;

    .line 126
    .local v0, "client":Landroid/support/customtabs/CustomTabsClient;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, v2}, Landroid/support/customtabs/CustomTabsClient;->newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;

    move-result-object v2

    .line 130
    :cond_0
    return-object v2

    .line 120
    .end local v0    # "client":Landroid/support/customtabs/CustomTabsClient;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted while waiting for browser connection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lnet/openid/appauth/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v3, p0, Lnet/openid/appauth/BrowserHandler;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method


# virtual methods
.method public createCustomTabsIntentBuilder()Landroid/support/customtabs/CustomTabsIntent$Builder;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/support/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p0}, Lnet/openid/appauth/BrowserHandler;->createSession()Landroid/support/customtabs/CustomTabsSession;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>(Landroid/support/customtabs/CustomTabsSession;)V

    return-object v0
.end method

.method public getBrowserPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lnet/openid/appauth/BrowserHandler;->mBrowserPackage:Ljava/lang/String;

    return-object v0
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lnet/openid/appauth/BrowserHandler;->mConnection:Landroid/support/customtabs/CustomTabsServiceConnection;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/BrowserHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/openid/appauth/BrowserHandler;->mConnection:Landroid/support/customtabs/CustomTabsServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 113
    iget-object v0, p0, Lnet/openid/appauth/BrowserHandler;->mClient:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 114
    const-string v0, "CustomTabsService is disconnected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lnet/openid/appauth/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
