.class public Lnet/openid/appauth/TokenRequest;
.super Ljava/lang/Object;
.source "TokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/TokenRequest$Builder;
    }
.end annotation


# static fields
.field private static final BUILT_IN_PARAMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRANT_TYPE_AUTHORIZATION_CODE:Ljava/lang/String; = "authorization_code"

.field public static final GRANT_TYPE_CLIENT_CREDENTIALS:Ljava/lang/String; = "client_credentials"

.field public static final GRANT_TYPE_PASSWORD:Ljava/lang/String; = "password"

.field public static final GRANT_TYPE_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additionalParameters"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_AUTHORIZATION_CODE:Ljava/lang/String; = "authorizationCode"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_CLIENT_ID:Ljava/lang/String; = "clientId"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_CONFIGURATION:Ljava/lang/String; = "configuration"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_GRANT_TYPE:Ljava/lang/String; = "grantType"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_REDIRECT_URI:Ljava/lang/String; = "redirectUri"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refreshToken"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SCOPE:Ljava/lang/String; = "scope"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_CODE:Ljava/lang/String; = "code"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_CODE_VERIFIER:Ljava/lang/String; = "code_verifier"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_GRANT_TYPE:Ljava/lang/String; = "grant_type"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_SCOPE:Ljava/lang/String; = "scope"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final additionalParameters:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final authorizationCode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final clientId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final codeVerifier:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final grantType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final redirectUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final refreshToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final scope:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "client_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "code"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "code_verifier"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "grant_type"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "redirect_uri"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "refresh_token"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "scope"

    aput-object v3, v1, v2

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 88
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/TokenRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "configuration"    # Lnet/openid/appauth/AuthorizationServiceConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "redirectUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "authorizationCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "refreshToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "codeVerifier"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p9, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 486
    iput-object p2, p0, Lnet/openid/appauth/TokenRequest;->clientId:Ljava/lang/String;

    .line 487
    iput-object p3, p0, Lnet/openid/appauth/TokenRequest;->grantType:Ljava/lang/String;

    .line 488
    iput-object p4, p0, Lnet/openid/appauth/TokenRequest;->redirectUri:Landroid/net/Uri;

    .line 489
    iput-object p5, p0, Lnet/openid/appauth/TokenRequest;->scope:Ljava/lang/String;

    .line 490
    iput-object p6, p0, Lnet/openid/appauth/TokenRequest;->authorizationCode:Ljava/lang/String;

    .line 491
    iput-object p7, p0, Lnet/openid/appauth/TokenRequest;->refreshToken:Ljava/lang/String;

    .line 492
    iput-object p8, p0, Lnet/openid/appauth/TokenRequest;->codeVerifier:Ljava/lang/String;

    .line 493
    iput-object p9, p0, Lnet/openid/appauth/TokenRequest;->additionalParameters:Ljava/util/Map;

    .line 494
    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/TokenRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/net/Uri;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/util/Map;
    .param p10, "x9"    # Lnet/openid/appauth/TokenRequest$1;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p9}, Lnet/openid/appauth/TokenRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lnet/openid/appauth/TokenRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
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
    .line 586
    const-string v0, "json string cannot be null"

    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/TokenRequest;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenRequest;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 597
    const-string v1, "json object cannot be null"

    invoke-static {p0, v1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    new-instance v1, Lnet/openid/appauth/TokenRequest$Builder;

    const-string v2, "configuration"

    .line 600
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v2

    const-string v3, "clientId"

    .line 601
    invoke-static {p0, v3}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/openid/appauth/TokenRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;)V

    const-string v2, "redirectUri"

    .line 602
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/TokenRequest$Builder;->setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v1

    const-string v2, "grantType"

    .line 603
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/TokenRequest$Builder;->setGrantType(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v1

    const-string v2, "refreshToken"

    .line 604
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/TokenRequest$Builder;->setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v1

    const-string v2, "authorizationCode"

    .line 605
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/TokenRequest$Builder;->setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v1

    const-string v2, "additionalParameters"

    .line 606
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/TokenRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    .line 608
    .local v0, "builder":Lnet/openid/appauth/TokenRequest$Builder;
    const-string v1, "scope"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    const-string v1, "scope"

    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 612
    :cond_0
    invoke-virtual {v0}, Lnet/openid/appauth/TokenRequest$Builder;->build()Lnet/openid/appauth/TokenRequest;

    move-result-object v1

    return-object v1
.end method

.method private putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 531
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_0
    return-void
.end method


# virtual methods
.method public getFormUrlEncodedRequestBody()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p0}, Lnet/openid/appauth/TokenRequest;->getRequestParameters()Ljava/util/Map;

    move-result-object v2

    .line 545
    .local v2, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 546
    .local v0, "encodingUri":Landroid/net/Uri$Builder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 547
    .local v1, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 550
    .end local v1    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method getRequestParameters()Ljava/util/Map;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "grant_type"

    iget-object v3, p0, Lnet/openid/appauth/TokenRequest;->grantType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v2, "client_id"

    iget-object v3, p0, Lnet/openid/appauth/TokenRequest;->clientId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v2, "redirect_uri"

    iget-object v3, p0, Lnet/openid/appauth/TokenRequest;->redirectUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v3}, Lnet/openid/appauth/TokenRequest;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    const-string v2, "code"

    iget-object v3, p0, Lnet/openid/appauth/TokenRequest;->authorizationCode:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lnet/openid/appauth/TokenRequest;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    const-string v2, "refresh_token"

    iget-object v3, p0, Lnet/openid/appauth/TokenRequest;->refreshToken:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lnet/openid/appauth/TokenRequest;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    const-string v2, "code_verifier"

    iget-object v3, p0, Lnet/openid/appauth/TokenRequest;->codeVerifier:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lnet/openid/appauth/TokenRequest;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    const-string v2, "scope"

    iget-object v3, p0, Lnet/openid/appauth/TokenRequest;->scope:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lnet/openid/appauth/TokenRequest;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->additionalParameters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 523
    .local v0, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 526
    .end local v0    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method public getScopeSet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest;->scope:Ljava/lang/String;

    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 558
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 559
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "configuration"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-virtual {v2}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 560
    const-string v1, "clientId"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->clientId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v1, "grantType"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->grantType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v1, "redirectUri"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->redirectUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 563
    const-string v1, "scope"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->scope:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v1, "authorizationCode"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->authorizationCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v1, "refreshToken"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->refreshToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v1, "additionalParameters"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->additionalParameters:Ljava/util/Map;

    .line 567
    invoke-static {v2}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 566
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 568
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p0}, Lnet/openid/appauth/TokenRequest;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
