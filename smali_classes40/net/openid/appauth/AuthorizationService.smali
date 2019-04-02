.class public Lnet/openid/appauth/AuthorizationService;
.super Ljava/lang/Object;
.source "AuthorizationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationService$DefaultUrlBuilder;,
        Lnet/openid/appauth/AuthorizationService$UrlBuilder;,
        Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;,
        Lnet/openid/appauth/AuthorizationService$TokenRequestTask;
    }
.end annotation


# static fields
.field public static final SCOPE_ADDRESS:Ljava/lang/String; = "address"

.field public static final SCOPE_EMAIL:Ljava/lang/String; = "email"

.field public static final SCOPE_OPENID:Ljava/lang/String; = "openid"

.field public static final SCOPE_PROFILE:Ljava/lang/String; = "profile"


# instance fields
.field private final mBrowserHandler:Lnet/openid/appauth/BrowserHandler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mDisposed:Z

.field private final mUrlBuilder:Lnet/openid/appauth/AuthorizationService$UrlBuilder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    sget-object v0, Lnet/openid/appauth/AuthorizationService$DefaultUrlBuilder;->INSTANCE:Lnet/openid/appauth/AuthorizationService$DefaultUrlBuilder;

    new-instance v1, Lnet/openid/appauth/BrowserHandler;

    invoke-direct {v1, p1}, Lnet/openid/appauth/BrowserHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AuthorizationService$UrlBuilder;Lnet/openid/appauth/BrowserHandler;)V

    .line 101
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lnet/openid/appauth/AuthorizationService$UrlBuilder;Lnet/openid/appauth/BrowserHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "urlBuilder"    # Lnet/openid/appauth/AuthorizationService$UrlBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "browserHandler"    # Lnet/openid/appauth/BrowserHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    .line 110
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {p2}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/AuthorizationService$UrlBuilder;

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mUrlBuilder:Lnet/openid/appauth/AuthorizationService$UrlBuilder;

    .line 112
    invoke-static {p3}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/BrowserHandler;

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mBrowserHandler:Lnet/openid/appauth/BrowserHandler;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lnet/openid/appauth/AuthorizationService;)Lnet/openid/appauth/AuthorizationService$UrlBuilder;
    .locals 1
    .param p0, "x0"    # Lnet/openid/appauth/AuthorizationService;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mUrlBuilder:Lnet/openid/appauth/AuthorizationService$UrlBuilder;

    return-object v0
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service has been disposed and rendered inoperable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public createCustomTabsIntentBuilder()Landroid/support/customtabs/CustomTabsIntent$Builder;
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationService;->checkNotDisposed()V

    .line 121
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mBrowserHandler:Lnet/openid/appauth/BrowserHandler;

    invoke-virtual {v0}, Lnet/openid/appauth/BrowserHandler;->createCustomTabsIntentBuilder()Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mBrowserHandler:Lnet/openid/appauth/BrowserHandler;

    invoke-virtual {v0}, Lnet/openid/appauth/BrowserHandler;->unbind()V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    goto :goto_0
.end method

.method public performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "request"    # Lnet/openid/appauth/AuthorizationRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resultHandlerIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    .line 136
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationService;->createCustomTabsIntentBuilder()Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 134
    invoke-virtual {p0, p1, p2, v0}, Lnet/openid/appauth/AuthorizationService;->performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;Landroid/support/customtabs/CustomTabsIntent;)V

    .line 137
    return-void
.end method

.method public performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;Landroid/support/customtabs/CustomTabsIntent;)V
    .locals 7
    .param p1, "request"    # Lnet/openid/appauth/AuthorizationRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resultHandlerIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "customTabsIntent"    # Landroid/support/customtabs/CustomTabsIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationService;->checkNotDisposed()V

    .line 156
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationRequest;->toUri()Landroid/net/Uri;

    move-result-object v1

    .line 157
    .local v1, "requestUri":Landroid/net/Uri;
    invoke-static {}, Lnet/openid/appauth/PendingIntentStore;->getInstance()Lnet/openid/appauth/PendingIntentStore;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/openid/appauth/PendingIntentStore;->addPendingIntent(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;)V

    .line 158
    iget-object v0, p3, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationService;->mBrowserHandler:Lnet/openid/appauth/BrowserHandler;

    invoke-virtual {v2}, Lnet/openid/appauth/BrowserHandler;->getBrowserPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_0
    const-string v2, "Using %s as browser for auth"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lnet/openid/appauth/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const-string v2, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    const-string v2, "Initiating authorization request to %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v4, v4, Lnet/openid/appauth/AuthorizationServiceConfiguration;->authorizationEndpoint:Landroid/net/Uri;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lnet/openid/appauth/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V
    .locals 4
    .param p1, "request"    # Lnet/openid/appauth/TokenRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationService;->checkNotDisposed()V

    .line 182
    const-string v0, "Initiating code exchange request to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lnet/openid/appauth/TokenRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v2, v2, Lnet/openid/appauth/AuthorizationServiceConfiguration;->tokenEndpoint:Landroid/net/Uri;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lnet/openid/appauth/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    new-instance v0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;

    invoke-direct {v0, p0, p1, p2}, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;-><init>(Lnet/openid/appauth/AuthorizationService;Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    return-void
.end method
