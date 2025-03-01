.class public final Lcom/facebook/marketing/internal/MarketingInitProvider;
.super Landroid/content/ContentProvider;
.source "MarketingInitProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/facebook/marketing/internal/MarketingInitProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/marketing/internal/MarketingInitProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/marketing/internal/MarketingInitProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/marketing/internal/MarketingInitProvider;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/marketing/internal/MarketingInitProvider;->setupCodeless()V

    return-void
.end method

.method private setupCodeless()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 61
    invoke-static {v1}, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;->startTracking(Landroid/app/Application;)V

    .line 64
    invoke-static {}, Lcom/facebook/marketing/internal/RemoteConfigManager;->loadRemoteConfigAsync()V

    .line 66
    new-instance v0, Lcom/facebook/marketing/internal/MarketingLogger;

    .line 67
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 68
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/marketing/internal/MarketingLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .local v0, "logger":Lcom/facebook/marketing/internal/MarketingLogger;
    invoke-virtual {v0}, Lcom/facebook/marketing/internal/MarketingLogger;->logCodelessInitialized()V

    .line 70
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/facebook/marketing/internal/MarketingInitProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/marketing/internal/MarketingInitProvider$1;

    invoke-direct {v2, p0}, Lcom/facebook/marketing/internal/MarketingInitProvider$1;-><init>(Lcom/facebook/marketing/internal/MarketingInitProvider;)V

    invoke-static {v1, v2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V

    .line 57
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/facebook/marketing/internal/MarketingInitProvider;->setupCodeless()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/facebook/marketing/internal/MarketingInitProvider;->TAG:Ljava/lang/String;

    const-string v2, "Failed to auto initialize the Marketing SDK"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method
