.class public final Lnet/openid/appauth/TokenResponse$Builder;
.super Ljava/lang/Object;
.source "TokenResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/TokenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccessToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAccessTokenExpirationTime:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAdditionalParameters:Ljava/util/Map;
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

.field private mIdToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRefreshToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRequest:Lnet/openid/appauth/TokenRequest;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTokenType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/openid/appauth/TokenRequest;)V
    .locals 1
    .param p1, "request"    # Lnet/openid/appauth/TokenRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenResponse$Builder;->setRequest(Lnet/openid/appauth/TokenRequest;)Lnet/openid/appauth/TokenResponse$Builder;

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 190
    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/TokenResponse;
    .locals 9

    .prologue
    .line 385
    new-instance v0, Lnet/openid/appauth/TokenResponse;

    iget-object v1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mRequest:Lnet/openid/appauth/TokenRequest;

    iget-object v2, p0, Lnet/openid/appauth/TokenResponse$Builder;->mTokenType:Ljava/lang/String;

    iget-object v3, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessToken:Ljava/lang/String;

    iget-object v4, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    iget-object v5, p0, Lnet/openid/appauth/TokenResponse$Builder;->mIdToken:Ljava/lang/String;

    iget-object v6, p0, Lnet/openid/appauth/TokenResponse$Builder;->mRefreshToken:Ljava/lang/String;

    iget-object v7, p0, Lnet/openid/appauth/TokenResponse$Builder;->mScope:Ljava/lang/String;

    iget-object v8, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    invoke-direct/range {v0 .. v8}, Lnet/openid/appauth/TokenResponse;-><init>(Lnet/openid/appauth/TokenRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public fromResponseJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 4
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
    .line 209
    :try_start_0
    const-string v1, "token_type"

    invoke-static {p1, v1}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setTokenType(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    .line 210
    const-string v1, "access_token"

    invoke-static {p1, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setAccessToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    .line 211
    const-string v1, "expires_at"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const-string v1, "expires_at"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setAccessTokenExpirationTime(Ljava/lang/Long;)Lnet/openid/appauth/TokenResponse$Builder;

    .line 214
    :cond_0
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setAccessTokenExpiresIn(Ljava/lang/Long;)Lnet/openid/appauth/TokenResponse$Builder;

    .line 217
    :cond_1
    const-string v1, "refresh_token"

    invoke-static {p1, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    .line 218
    const-string v1, "id_token"

    invoke-static {p1, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setIdToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    .line 219
    invoke-static {}, Lnet/openid/appauth/TokenResponse;->access$000()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v1}, Lnet/openid/appauth/AdditionalParamsProcessor;->extractAdditionalParams(Lorg/json/JSONObject;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenResponse$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-object p0

    .line 222
    :catch_0
    move-exception v0

    .line 226
    .local v0, "ex":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JSONException thrown in violation of contract"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fromResponseJsonString(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
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
    .line 198
    const-string v0, "json cannot be null or empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenResponse$Builder;->fromResponseJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 256
    const-string v0, "access token cannot be empty if specified"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessToken:Ljava/lang/String;

    .line 258
    return-object p0
.end method

.method public setAccessTokenExpirationTime(Ljava/lang/Long;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 0
    .param p1, "expiresAt"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 291
    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    .line 292
    return-object p0
.end method

.method public setAccessTokenExpiresIn(Ljava/lang/Long;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .param p1, "expiresIn"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 267
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    invoke-virtual {p0, p1, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setAccessTokenExpiresIn(Ljava/lang/Long;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method setAccessTokenExpiresIn(Ljava/lang/Long;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 6
    .param p1, "expiresIn"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "clock"    # Lnet/openid/appauth/Clock;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    .line 283
    :goto_0
    return-object p0

    .line 280
    :cond_0
    invoke-interface {p2}, Lnet/openid/appauth/Clock;->getCurrentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 281
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 280
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    goto :goto_0
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
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
            "Lnet/openid/appauth/TokenResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lnet/openid/appauth/TokenResponse;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 378
    return-object p0
.end method

.method public setIdToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .param p1, "idToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 299
    const-string v0, "id token must not be empty if defined"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenResponse$Builder;->mIdToken:Ljava/lang/String;

    .line 300
    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .param p1, "refreshToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 307
    const-string v0, "refresh token must not be empty if defined"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenResponse$Builder;->mRefreshToken:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public setRequest(Lnet/openid/appauth/TokenRequest;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .param p1, "request"    # Lnet/openid/appauth/TokenRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 237
    const-string v0, "request cannot be null"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/TokenRequest;

    iput-object v0, p0, Lnet/openid/appauth/TokenResponse$Builder;->mRequest:Lnet/openid/appauth/TokenRequest;

    .line 238
    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/openid/appauth/TokenResponse$Builder;->mScope:Ljava/lang/String;

    .line 327
    :goto_0
    return-object p0

    .line 325
    :cond_0
    const-string v0, " +"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setScopes([Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    goto :goto_0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/TokenResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "scopes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenResponse$Builder;->mScope:Ljava/lang/String;

    .line 369
    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .param p1, "scopes"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/String;

    .line 348
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/TokenResponse$Builder;

    .line 349
    return-object p0
.end method

.method public setTokenType(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .param p1, "tokenType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 247
    const-string v0, "token type must not be empty if defined"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenResponse$Builder;->mTokenType:Ljava/lang/String;

    .line 248
    return-object p0
.end method
