.class Lnet/openid/appauth/BrowserPackageHelper;
.super Ljava/lang/Object;
.source "BrowserPackageHelper.java"


# static fields
.field static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final BROWSER_INTENT:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field private static final SCHEME_HTTPS:Ljava/lang/String; = "https"

.field private static sInstance:Lnet/openid/appauth/BrowserPackageHelper;


# instance fields
.field private mPackageNameToUse:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.example.com"

    .line 56
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lnet/openid/appauth/BrowserPackageHelper;->BROWSER_INTENT:Landroid/content/Intent;

    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized clearInstance()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 69
    const-class v0, Lnet/openid/appauth/BrowserPackageHelper;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lnet/openid/appauth/BrowserPackageHelper;->sInstance:Lnet/openid/appauth/BrowserPackageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lnet/openid/appauth/BrowserPackageHelper;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lnet/openid/appauth/BrowserPackageHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/openid/appauth/BrowserPackageHelper;->sInstance:Lnet/openid/appauth/BrowserPackageHelper;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lnet/openid/appauth/BrowserPackageHelper;

    invoke-direct {v0}, Lnet/openid/appauth/BrowserPackageHelper;-><init>()V

    sput-object v0, Lnet/openid/appauth/BrowserPackageHelper;->sInstance:Lnet/openid/appauth/BrowserPackageHelper;

    .line 64
    :cond_0
    sget-object v0, Lnet/openid/appauth/BrowserPackageHelper;->sInstance:Lnet/openid/appauth/BrowserPackageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasWarmupService(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v2, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    iget-object v4, p0, Lnet/openid/appauth/BrowserPackageHelper;->mPackageNameToUse:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Lnet/openid/appauth/BrowserPackageHelper;->mPackageNameToUse:Ljava/lang/String;

    .line 128
    :goto_0
    return-object v4

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 98
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 99
    .local v0, "firstMatch":Landroid/content/pm/ResolveInfo;
    sget-object v4, Lnet/openid/appauth/BrowserPackageHelper;->BROWSER_INTENT:Landroid/content/Intent;

    const/16 v5, 0x40

    .line 100
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 102
    .local v3, "resolvedActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 104
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v1}, Lnet/openid/appauth/BrowserPackageHelper;->isFullBrowser(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    if-nez v0, :cond_2

    .line 111
    move-object v0, v1

    .line 114
    :cond_2
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lnet/openid/appauth/BrowserPackageHelper;->hasWarmupService(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lnet/openid/appauth/BrowserPackageHelper;->mPackageNameToUse:Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lnet/openid/appauth/BrowserPackageHelper;->mPackageNameToUse:Ljava/lang/String;

    goto :goto_0

    .line 123
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    if-eqz v0, :cond_4

    .line 124
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lnet/openid/appauth/BrowserPackageHelper;->mPackageNameToUse:Ljava/lang/String;

    .line 128
    :goto_1
    iget-object v4, p0, Lnet/openid/appauth/BrowserPackageHelper;->mPackageNameToUse:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lnet/openid/appauth/BrowserPackageHelper;->mPackageNameToUse:Ljava/lang/String;

    goto :goto_1
.end method

.method public isFullBrowser(Landroid/content/pm/ResolveInfo;)Z
    .locals 7
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.category.BROWSABLE"

    .line 141
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 142
    invoke-virtual {v5}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v5

    if-nez v5, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v4

    .line 147
    :cond_1
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v5}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    if-nez v5, :cond_0

    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, "supportsHttp":Z
    const/4 v3, 0x0

    .line 154
    .local v3, "supportsHttps":Z
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v5}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 155
    .local v1, "schemeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "scheme":Ljava/lang/String;
    const-string v5, "http"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 158
    const-string v5, "https"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 160
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 161
    const/4 v4, 0x1

    goto :goto_0
.end method
