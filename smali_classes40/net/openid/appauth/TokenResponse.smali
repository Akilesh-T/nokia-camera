.class public Lnet/openid/appauth/TokenResponse;
.super Ljava/lang/Object;
.source "TokenResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/TokenResponse$Builder;
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

.field static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additionalParameters"
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

.field static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"
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

.field public final idToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final refreshToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final request:Lnet/openid/appauth/TokenRequest;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final scope:Ljava/lang/String;
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
    .line 82
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "token_type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "access_token"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "expires_in"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "refresh_token"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "id_token"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "scope"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lnet/openid/appauth/TokenResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lnet/openid/appauth/TokenRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "request"    # Lnet/openid/appauth/TokenRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tokenType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "accessToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "accessTokenExpirationTime"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "idToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "refreshToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/TokenRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
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
    .line 405
    .local p8, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lnet/openid/appauth/TokenResponse;->request:Lnet/openid/appauth/TokenRequest;

    .line 407
    iput-object p2, p0, Lnet/openid/appauth/TokenResponse;->tokenType:Ljava/lang/String;

    .line 408
    iput-object p3, p0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    .line 409
    iput-object p4, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    .line 410
    iput-object p5, p0, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    .line 411
    iput-object p6, p0, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    .line 412
    iput-object p7, p0, Lnet/openid/appauth/TokenResponse;->scope:Ljava/lang/String;

    .line 413
    iput-object p8, p0, Lnet/openid/appauth/TokenResponse;->additionalParameters:Ljava/util/Map;

    .line 414
    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lnet/openid/appauth/TokenResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse;
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
    .line 456
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/openid/appauth/TokenResponse;->fromJson(Lnet/openid/appauth/TokenRequest;Ljava/lang/String;)Lnet/openid/appauth/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lnet/openid/appauth/TokenRequest;Ljava/lang/String;)Lnet/openid/appauth/TokenResponse;
    .locals 1
    .param p0, "request"    # Lnet/openid/appauth/TokenRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "jsonStr"    # Ljava/lang/String;
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
    .line 479
    const-string v0, "jsonStr cannot be null or empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 480
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lnet/openid/appauth/TokenResponse;->fromJson(Lnet/openid/appauth/TokenRequest;Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lnet/openid/appauth/TokenRequest;Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse;
    .locals 3
    .param p0, "request"    # Lnet/openid/appauth/TokenRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "json"    # Lorg/json/JSONObject;
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
    .line 496
    if-eqz p0, :cond_0

    .line 497
    move-object v0, p0

    .line 506
    .local v0, "extractedRequest":Lnet/openid/appauth/TokenRequest;
    :goto_0
    new-instance v1, Lnet/openid/appauth/TokenResponse$Builder;

    invoke-direct {v1, v0}, Lnet/openid/appauth/TokenResponse$Builder;-><init>(Lnet/openid/appauth/TokenRequest;)V

    .line 507
    invoke-virtual {v1, p1}, Lnet/openid/appauth/TokenResponse$Builder;->fromResponseJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object v1

    .line 508
    invoke-virtual {v1}, Lnet/openid/appauth/TokenResponse$Builder;->build()Lnet/openid/appauth/TokenResponse;

    move-result-object v1

    return-object v1

    .line 499
    .end local v0    # "extractedRequest":Lnet/openid/appauth/TokenRequest;
    :cond_0
    const-string v1, "request"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "token request not provided and not found in JSON"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_1
    const-string v1, "request"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lnet/openid/appauth/TokenRequest;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenRequest;

    move-result-object v0

    .restart local v0    # "extractedRequest":Lnet/openid/appauth/TokenRequest;
    goto :goto_0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse;
    .locals 1
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
    .line 465
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/openid/appauth/TokenResponse;->fromJson(Lnet/openid/appauth/TokenRequest;Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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
    .line 423
    iget-object v0, p0, Lnet/openid/appauth/TokenResponse;->scope:Ljava/lang/String;

    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 430
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 431
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "request"

    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->request:Lnet/openid/appauth/TokenRequest;

    invoke-virtual {v2}, Lnet/openid/appauth/TokenRequest;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 432
    const-string v1, "token_type"

    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->tokenType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v1, "access_token"

    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v1, "expires_at"

    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 435
    const-string v1, "id_token"

    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v1, "refresh_token"

    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "scope"

    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->scope:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v1, "additionalParameters"

    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->additionalParameters:Ljava/util/Map;

    .line 439
    invoke-static {v2}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 438
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 440
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lnet/openid/appauth/TokenResponse;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
