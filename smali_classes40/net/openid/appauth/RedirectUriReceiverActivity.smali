.class public Lnet/openid/appauth/RedirectUriReceiverActivity;
.super Landroid/app/Activity;
.source "RedirectUriReceiverActivity.java"


# static fields
.field private static final KEY_STATE:Ljava/lang/String; = "state"


# instance fields
.field private mClock:Lnet/openid/appauth/Clock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    iput-object v0, p0, Lnet/openid/appauth/RedirectUriReceiverActivity;->mClock:Lnet/openid/appauth/Clock;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lnet/openid/appauth/RedirectUriReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 54
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 55
    .local v0, "data":Landroid/net/Uri;
    const-string v10, "state"

    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "state":Ljava/lang/String;
    invoke-static {}, Lnet/openid/appauth/PendingIntentStore;->getInstance()Lnet/openid/appauth/PendingIntentStore;

    move-result-object v10

    invoke-virtual {v10, v8}, Lnet/openid/appauth/PendingIntentStore;->getOriginalRequest(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest;

    move-result-object v5

    .line 57
    .local v5, "request":Lnet/openid/appauth/AuthorizationRequest;
    invoke-static {}, Lnet/openid/appauth/PendingIntentStore;->getInstance()Lnet/openid/appauth/PendingIntentStore;

    move-result-object v10

    invoke-virtual {v10, v8}, Lnet/openid/appauth/PendingIntentStore;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 59
    .local v9, "target":Landroid/app/PendingIntent;
    if-nez v5, :cond_0

    .line 60
    const-string v10, "Response received for unknown request with state %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v13

    invoke-static {v10, v11}, Lnet/openid/appauth/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lnet/openid/appauth/RedirectUriReceiverActivity;->finish()V

    .line 90
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v10

    const-string v11, "error"

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 67
    const-string v10, "error"

    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "error":Ljava/lang/String;
    invoke-static {v2}, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->byString(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v10

    const-string v11, "error_description"

    .line 71
    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "error_uri"

    .line 73
    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 72
    invoke-static {v12}, Lnet/openid/appauth/UriUtil;->parseUriIfAvailable(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 68
    invoke-static {v10, v2, v11, v12}, Lnet/openid/appauth/AuthorizationException;->fromOAuthTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v3

    .line 74
    .local v3, "ex":Lnet/openid/appauth/AuthorizationException;
    invoke-virtual {v3}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object v7

    .line 82
    .end local v2    # "error":Ljava/lang/String;
    .end local v3    # "ex":Lnet/openid/appauth/AuthorizationException;
    .local v7, "responseData":Landroid/content/Intent;
    :goto_1
    const-string v10, "Forwarding redirect"

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lnet/openid/appauth/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v9, p0, v10, v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_2
    invoke-virtual {p0}, Lnet/openid/appauth/RedirectUriReceiverActivity;->finish()V

    goto :goto_0

    .line 76
    .end local v7    # "responseData":Landroid/content/Intent;
    :cond_1
    new-instance v10, Lnet/openid/appauth/AuthorizationResponse$Builder;

    invoke-direct {v10, v5}, Lnet/openid/appauth/AuthorizationResponse$Builder;-><init>(Lnet/openid/appauth/AuthorizationRequest;)V

    iget-object v11, p0, Lnet/openid/appauth/RedirectUriReceiverActivity;->mClock:Lnet/openid/appauth/Clock;

    .line 77
    invoke-virtual {v10, v0, v11}, Lnet/openid/appauth/AuthorizationResponse$Builder;->fromUri(Landroid/net/Uri;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v10

    .line 78
    invoke-virtual {v10}, Lnet/openid/appauth/AuthorizationResponse$Builder;->build()Lnet/openid/appauth/AuthorizationResponse;

    move-result-object v6

    .line 79
    .local v6, "response":Lnet/openid/appauth/AuthorizationResponse;
    invoke-virtual {v6}, Lnet/openid/appauth/AuthorizationResponse;->toIntent()Landroid/content/Intent;

    move-result-object v7

    .restart local v7    # "responseData":Landroid/content/Intent;
    goto :goto_1

    .line 85
    .end local v6    # "response":Lnet/openid/appauth/AuthorizationResponse;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v10, "Unable to send pending intent"

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v1, v10, v11}, Lnet/openid/appauth/Logger;->errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method setClock(Lnet/openid/appauth/Clock;)V
    .locals 0
    .param p1, "clock"    # Lnet/openid/appauth/Clock;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Lnet/openid/appauth/RedirectUriReceiverActivity;->mClock:Lnet/openid/appauth/Clock;

    .line 95
    return-void
.end method
