.class public Lnet/openid/appauth/AuthorizationResponse;
.super Ljava/lang/Object;
.source "AuthorizationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationResponse$Builder;
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

.field public static final EXTRA_RESPONSE:Ljava/lang/String; = "net.openid.appauth.AuthorizationResponse"

.field static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additional_parameters"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_AUTHORIZATION_CODE:Ljava/lang/String; = "code"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_EXPIRES_AT:Ljava/lang/String; = "expires_at"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ID_TOKEN:Ljava/lang/String; = "id_token"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_REQUEST:Ljava/lang/String; = "request"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SCOPE:Ljava/lang/String; = "scope"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_STATE:Ljava/lang/String; = "state"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_TOKEN_TYPE:Ljava/lang/String; = "token_type"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final TOKEN_TYPE_BEARER:Ljava/lang/String; = "bearer"


# instance fields
.field public final accessToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final accessTokenExpirationTime:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

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

.field public final idToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final request:Lnet/openid/appauth/AuthorizationRequest;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final scope:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final state:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final tokenType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "token_type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "state"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "code"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "access_token"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "expires_in"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "id_token"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "scope"

    aput-object v3, v1, v2

    .line 88
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "request"    # Lnet/openid/appauth/AuthorizationRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "tokenType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "authorizationCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "accessToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "accessTokenExpirationTime"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "idToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "scope"    # Ljava/lang/String;
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
            "Lnet/openid/appauth/AuthorizationRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
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
    .line 410
    .local p9, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    .line 412
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationResponse;->state:Ljava/lang/String;

    .line 413
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationResponse;->tokenType:Ljava/lang/String;

    .line 414
    iput-object p4, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    .line 415
    iput-object p5, p0, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    .line 416
    iput-object p6, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    .line 417
    iput-object p7, p0, Lnet/openid/appauth/AuthorizationResponse;->idToken:Ljava/lang/String;

    .line 418
    iput-object p8, p0, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    .line 419
    iput-object p9, p0, Lnet/openid/appauth/AuthorizationResponse;->additionalParameters:Ljava/util/Map;

    .line 420
    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/AuthorizationResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/openid/appauth/AuthorizationRequest;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/Long;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/util/Map;
    .param p10, "x9"    # Lnet/openid/appauth/AuthorizationResponse$1;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p9}, Lnet/openid/appauth/AuthorizationResponse;-><init>(Lnet/openid/appauth/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lnet/openid/appauth/AuthorizationResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationResponse;
    .locals 3
    .param p0, "dataIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 563
    const-string v1, "dataIntent must not be null"

    invoke-static {p0, v1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v1, "net.openid.appauth.AuthorizationResponse"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    const/4 v1, 0x0

    .line 569
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "net.openid.appauth.AuthorizationResponse"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/openid/appauth/AuthorizationResponse;->fromJson(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "ex":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Intent contains malformed auth response"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromJson(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse;
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;
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
    .line 513
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationResponse;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationResponse;
    .locals 3
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
    .line 523
    const-string v1, "request"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "token request not provided and not found in JSON"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 528
    :cond_0
    const-string v1, "request"

    .line 529
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lnet/openid/appauth/AuthorizationRequest;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;

    move-result-object v0

    .line 531
    .local v0, "request":Lnet/openid/appauth/AuthorizationRequest;
    new-instance v1, Lnet/openid/appauth/AuthorizationResponse$Builder;

    invoke-direct {v1, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;-><init>(Lnet/openid/appauth/AuthorizationRequest;)V

    const-string v2, "token_type"

    .line 532
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setTokenType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v1

    const-string v2, "access_token"

    .line 533
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAccessToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v1

    const-string v2, "code"

    .line 534
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v1

    const-string v2, "id_token"

    .line 535
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setIdToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v1

    const-string v2, "scope"

    .line 536
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v1

    const-string v2, "state"

    .line 537
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v1

    const-string v2, "expires_at"

    .line 538
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAccessTokenExpirationTime(Ljava/lang/Long;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v1

    const-string v2, "additional_parameters"

    .line 540
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 539
    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v1

    .line 541
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->build()Lnet/openid/appauth/AuthorizationResponse;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createTokenExchangeRequest()Lnet/openid/appauth/TokenRequest;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse;->createTokenExchangeRequest(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public createTokenExchangeRequest(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest;
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/TokenRequest;"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "additionalExchangeParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "additionalExchangeParameters cannot be null"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "authorizationCode not available for exchange request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    new-instance v0, Lnet/openid/appauth/TokenRequest$Builder;

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v2, v2, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnet/openid/appauth/TokenRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;)V

    const-string v1, "authorization_code"

    .line 470
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setGrantType(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 471
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    .line 472
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    .line 473
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    .line 474
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    .line 475
    invoke-virtual {v0, p1}, Lnet/openid/appauth/TokenRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lnet/openid/appauth/TokenRequest$Builder;->build()Lnet/openid/appauth/TokenRequest;

    move-result-object v0

    return-object v0
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
    .line 442
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasAccessTokenExpired()Z
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse;->hasAccessTokenExpired(Lnet/openid/appauth/Clock;)Z

    move-result v0

    return v0
.end method

.method hasAccessTokenExpired(Lnet/openid/appauth/Clock;)Z
    .locals 4
    .param p1, "clock"    # Lnet/openid/appauth/Clock;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 432
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/Clock;

    invoke-interface {v0}, Lnet/openid/appauth/Clock;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 551
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 552
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "net.openid.appauth.AuthorizationResponse"

    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationResponse;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 484
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 485
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "request"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    invoke-virtual {v2}, Lnet/openid/appauth/AuthorizationRequest;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 486
    const-string v1, "state"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->state:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v1, "token_type"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->tokenType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v1, "code"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v1, "access_token"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v1, "expires_at"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 491
    const-string v1, "id_token"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->idToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v1, "scope"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v1, "additional_parameters"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->additionalParameters:Ljava/util/Map;

    .line 494
    invoke-static {v2}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 493
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 495
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 503
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationResponse;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
