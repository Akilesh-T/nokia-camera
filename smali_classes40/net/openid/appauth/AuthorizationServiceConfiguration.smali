.class public Lnet/openid/appauth/AuthorizationServiceConfiguration;
.super Ljava/lang/Object;
.source "AuthorizationServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;,
        Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;
    }
.end annotation


# static fields
.field private static final KEY_AUTHORIZATION_ENDPOINT:Ljava/lang/String; = "authorizationEndpoint"

.field private static final KEY_DISCOVERY_DOC:Ljava/lang/String; = "discoveryDoc"

.field private static final KEY_TOKEN_ENDPOINT:Ljava/lang/String; = "tokenEndpoint"

.field public static final OPENID_CONFIGURATION_WELL_KNOWN_PATH:Ljava/lang/String; = ".well-known/openid-configuration"


# instance fields
.field public final authorizationEndpoint:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final discoveryDoc:Lnet/openid/appauth/AuthorizationServiceDiscovery;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final tokenEndpoint:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p1, "authorizationEndpoint"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tokenEndpoint"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->authorizationEndpoint:Landroid/net/Uri;

    .line 83
    invoke-static {p2}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->tokenEndpoint:Landroid/net/Uri;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->discoveryDoc:Lnet/openid/appauth/AuthorizationServiceDiscovery;

    .line 85
    return-void
.end method

.method public constructor <init>(Lnet/openid/appauth/AuthorizationServiceDiscovery;)V
    .locals 1
    .param p1, "discoveryDoc"    # Lnet/openid/appauth/AuthorizationServiceDiscovery;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "docJson cannot be null"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->discoveryDoc:Lnet/openid/appauth/AuthorizationServiceDiscovery;

    .line 96
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->getAuthorizationEndpoint()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->authorizationEndpoint:Landroid/net/Uri;

    .line 97
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->getTokenEndpoint()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->tokenEndpoint:Landroid/net/Uri;

    .line 98
    return-void
.end method

.method public static fetchFromIssuer(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;)V
    .locals 3
    .param p0, "openIdConnectIssuerUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "callback"    # Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ".well-known/openid-configuration"

    .line 174
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 176
    .local v0, "fullUri":Landroid/net/Uri;
    invoke-static {v0, p1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;)V

    .line 177
    return-void
.end method

.method public static fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;)V
    .locals 1
    .param p0, "openIdConnectDiscoveryUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "callback"    # Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 188
    new-instance v0, Lnet/openid/appauth/AuthorizationService$DefaultUrlBuilder;

    invoke-direct {v0}, Lnet/openid/appauth/AuthorizationService$DefaultUrlBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;Lnet/openid/appauth/AuthorizationService$UrlBuilder;)V

    .line 190
    return-void
.end method

.method static fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;Lnet/openid/appauth/AuthorizationService$UrlBuilder;)V
    .locals 4
    .param p0, "openIdConnectDiscoveryUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "callback"    # Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "urlBuilder"    # Lnet/openid/appauth/AuthorizationService$UrlBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 196
    const-string v2, "openIDConnectDiscoveryUri cannot be null"

    invoke-static {p0, v2}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v2, "callback cannot be null"

    invoke-static {p1, v2}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v2, "https"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "openIDConnectDiscoveryUri must be https"

    invoke-static {v2, v3}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 202
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lnet/openid/appauth/AuthorizationService$UrlBuilder;->buildUrlFromString(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 206
    .local v1, "url":Ljava/net/URL;
    new-instance v2, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;

    invoke-direct {v2, v1, p1}, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;-><init>(Ljava/net/URL;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    return-void

    .line 203
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed discovery doc URI"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static fromJson(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 157
    const-string v0, "json cannot be null"

    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v2, "json object cannot be null"

    invoke-static {p0, v2}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "discoveryDoc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    :try_start_0
    new-instance v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;

    const-string v2, "discoveryDoc"

    .line 135
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/openid/appauth/AuthorizationServiceDiscovery;-><init>(Lorg/json/JSONObject;)V

    .line 136
    .local v0, "discoveryDoc":Lnet/openid/appauth/AuthorizationServiceDiscovery;
    new-instance v2, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-direct {v2, v0}, Lnet/openid/appauth/AuthorizationServiceConfiguration;-><init>(Lnet/openid/appauth/AuthorizationServiceDiscovery;)V
    :try_end_0
    .catch Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "discoveryDoc":Lnet/openid/appauth/AuthorizationServiceDiscovery;
    :goto_0
    return-object v2

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "ex":Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required field in discovery doc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 139
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;->getMissingField()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    .end local v1    # "ex":Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
    :cond_0
    const-string v2, "authorizationEndpoint"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "missing authorizationEndpoint"

    invoke-static {v2, v3}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 143
    const-string v2, "tokenEndpoint"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "missing tokenEndpoint"

    invoke-static {v2, v3}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 144
    new-instance v2, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    const-string v3, "authorizationEndpoint"

    .line 145
    invoke-static {p0, v3}, Lnet/openid/appauth/JsonUtil;->getUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "tokenEndpoint"

    .line 146
    invoke-static {p0, v4}, Lnet/openid/appauth/JsonUtil;->getUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/openid/appauth/AuthorizationServiceConfiguration;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "authorizationEndpoint"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->authorizationEndpoint:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "tokenEndpoint"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->tokenEndpoint:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->discoveryDoc:Lnet/openid/appauth/AuthorizationServiceDiscovery;

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "discoveryDoc"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->discoveryDoc:Lnet/openid/appauth/AuthorizationServiceDiscovery;

    iget-object v2, v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 111
    :cond_0
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
