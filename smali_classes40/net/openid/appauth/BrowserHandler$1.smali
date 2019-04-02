.class Lnet/openid/appauth/BrowserHandler$1;
.super Landroid/support/customtabs/CustomTabsServiceConnection;
.source "BrowserHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/openid/appauth/BrowserHandler;->bindCustomTabsService()Landroid/support/customtabs/CustomTabsServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/openid/appauth/BrowserHandler;


# direct methods
.method constructor <init>(Lnet/openid/appauth/BrowserHandler;)V
    .locals 0
    .param p1, "this$0"    # Lnet/openid/appauth/BrowserHandler;

    .prologue
    .line 65
    iput-object p1, p0, Lnet/openid/appauth/BrowserHandler$1;->this$0:Lnet/openid/appauth/BrowserHandler;

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method

.method private setClient(Landroid/support/customtabs/CustomTabsClient;)V
    .locals 1
    .param p1, "client"    # Landroid/support/customtabs/CustomTabsClient;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v0, p0, Lnet/openid/appauth/BrowserHandler$1;->this$0:Lnet/openid/appauth/BrowserHandler;

    invoke-static {v0}, Lnet/openid/appauth/BrowserHandler;->access$000(Lnet/openid/appauth/BrowserHandler;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lnet/openid/appauth/BrowserHandler$1;->this$0:Lnet/openid/appauth/BrowserHandler;

    invoke-static {v0}, Lnet/openid/appauth/BrowserHandler;->access$100(Lnet/openid/appauth/BrowserHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 83
    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "customTabsClient"    # Landroid/support/customtabs/CustomTabsClient;

    .prologue
    .line 75
    const-string v0, "CustomTabsService is connected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lnet/openid/appauth/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/support/customtabs/CustomTabsClient;->warmup(J)Z

    .line 77
    invoke-direct {p0, p2}, Lnet/openid/appauth/BrowserHandler$1;->setClient(Landroid/support/customtabs/CustomTabsClient;)V

    .line 78
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 68
    const-string v0, "CustomTabsService is disconnected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lnet/openid/appauth/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/openid/appauth/BrowserHandler$1;->setClient(Landroid/support/customtabs/CustomTabsClient;)V

    .line 70
    return-void
.end method
