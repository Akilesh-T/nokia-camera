.class public Lnet/openid/appauth/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthState$AuthStateAction;
    }
.end annotation


# static fields
.field public static final EXPIRY_TIME_TOLERANCE_MS:I = 0xea60

.field private static final KEY_AUTHORIZATION_EXCEPTION:Ljava/lang/String; = "mAuthorizationException"

.field private static final KEY_LAST_AUTHORIZATION_RESPONSE:Ljava/lang/String; = "lastAuthorizationResponse"

.field private static final KEY_LAST_TOKEN_RESPONSE:Ljava/lang/String; = "mLastTokenResponse"

.field private static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refreshToken"

.field private static final KEY_SCOPE:Ljava/lang/String; = "scope"


# instance fields
.field private mAuthorizationException:Lnet/openid/appauth/AuthorizationException;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastTokenResponse:Lnet/openid/appauth/TokenResponse;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNeedsTokenRefreshOverride:Z

.field private mRefreshToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnet/openid/appauth/AuthorizationResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 3
    .param p1, "authResponse"    # Lnet/openid/appauth/AuthorizationResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "authError"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    xor-int/2addr v0, v2

    const-string v1, "exactly one of authResponse or authError should be non-null"

    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 82
    invoke-virtual {p0, p1, p2}, Lnet/openid/appauth/AuthState;->update(Lnet/openid/appauth/AuthorizationResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 83
    return-void

    :cond_0
    move v2, v1

    .line 80
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Lnet/openid/appauth/AuthorizationResponse;Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 1
    .param p1, "authResponse"    # Lnet/openid/appauth/AuthorizationResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tokenResponse"    # Lnet/openid/appauth/TokenResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "authException"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/openid/appauth/AuthState;-><init>(Lnet/openid/appauth/AuthorizationResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 94
    invoke-virtual {p0, p2, p3}, Lnet/openid/appauth/AuthState;->update(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 95
    return-void
.end method

.method static synthetic access$002(Lnet/openid/appauth/AuthState;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/openid/appauth/AuthState;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lnet/openid/appauth/AuthState;->mNeedsTokenRefreshOverride:Z

    return p1
.end method

.method public static fromJson(Ljava/lang/String;)Lnet/openid/appauth/AuthState;
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
    .line 506
    const-string v0, "jsonStr cannot be null or empty"

    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 507
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/AuthState;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthState;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthState;
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 480
    const-string v1, "json cannot be null"

    invoke-static {p0, v1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v0, Lnet/openid/appauth/AuthState;

    invoke-direct {v0}, Lnet/openid/appauth/AuthState;-><init>()V

    .line 483
    .local v0, "state":Lnet/openid/appauth/AuthState;
    const-string v1, "refreshToken"

    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    .line 484
    const-string v1, "scope"

    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/openid/appauth/AuthState;->mScope:Ljava/lang/String;

    .line 485
    const-string v1, "mAuthorizationException"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const-string v1, "mAuthorizationException"

    .line 487
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 486
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationException;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v1

    iput-object v1, v0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 489
    :cond_0
    const-string v1, "lastAuthorizationResponse"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    const-string v1, "lastAuthorizationResponse"

    .line 491
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 490
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationResponse;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationResponse;

    move-result-object v1

    iput-object v1, v0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    .line 493
    :cond_1
    const-string v1, "mLastTokenResponse"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    const-string v1, "mLastTokenResponse"

    .line 495
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 494
    invoke-static {v1}, Lnet/openid/appauth/TokenResponse;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse;

    move-result-object v1

    iput-object v1, v0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 498
    :cond_2
    return-object v0
.end method


# virtual methods
.method public createTokenRefreshRequest()Lnet/openid/appauth/TokenRequest;
    .locals 1

    .prologue
    .line 414
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthState;->createTokenRefreshRequest(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public createTokenRefreshRequest(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest;
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 423
    .local p1, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No refresh token available for refresh request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    if-nez v0, :cond_1

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No authorization configuration available for refresh request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    new-instance v0, Lnet/openid/appauth/TokenRequest$Builder;

    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v2, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    iget-object v2, v2, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v2, v2, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnet/openid/appauth/TokenRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;)V

    const-string v1, "refresh_token"

    .line 434
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setGrantType(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    .line 435
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    .line 436
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    .line 437
    invoke-virtual {v0, p1}, Lnet/openid/appauth/TokenRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lnet/openid/appauth/TokenRequest$Builder;->build()Lnet/openid/appauth/TokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 176
    :cond_1
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    iget-object v1, v1, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 177
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    iget-object v0, v0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    if-eqz v1, :cond_0

    .line 181
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAccessTokenExpirationTime()Ljava/lang/Long;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-object v0

    .line 197
    :cond_1
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    iget-object v1, v1, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 198
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    iget-object v0, v0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 202
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getAuthorizationException()Lnet/openid/appauth/AuthorizationException;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    return-object v0
.end method

.method public getAuthorizationServiceConfiguration()Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    if-eqz v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    iget-object v1, v1, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 218
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    iget-object v0, v0, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_2
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    if-eqz v1, :cond_0

    .line 222
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationResponse;->idToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLastAuthorizationResponse()Lnet/openid/appauth/AuthorizationResponse;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    return-object v0
.end method

.method public getLastTokenResponse()Lnet/openid/appauth/TokenResponse;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    return-object v0
.end method

.method public getNeedsTokenRefresh()Z
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthState;->getNeedsTokenRefresh(Lnet/openid/appauth/Clock;)Z

    move-result v0

    return v0
.end method

.method getNeedsTokenRefresh(Lnet/openid/appauth/Clock;)Z
    .locals 8
    .param p1, "clock"    # Lnet/openid/appauth/Clock;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    iget-boolean v2, p0, Lnet/openid/appauth/AuthState;->mNeedsTokenRefreshOverride:Z

    if-nez v2, :cond_0

    .line 266
    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->getAccessTokenExpirationTime()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2

    .line 269
    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->getAccessTokenExpirationTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 273
    invoke-interface {p1}, Lnet/openid/appauth/Clock;->getCurrentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mScope:Ljava/lang/String;

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
    .line 122
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mScope:Ljava/lang/String;

    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isAuthorized()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->getIdToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performActionWithFreshTokens(Lnet/openid/appauth/AuthorizationService;Ljava/util/Map;Lnet/openid/appauth/AuthState$AuthStateAction;)V
    .locals 1
    .param p1, "service"    # Lnet/openid/appauth/AuthorizationService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "action"    # Lnet/openid/appauth/AuthState$AuthStateAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationService;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/openid/appauth/AuthState$AuthStateAction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 366
    .local p2, "refreshTokenAdditionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/openid/appauth/AuthState;->performActionWithFreshTokens(Lnet/openid/appauth/AuthorizationService;Ljava/util/Map;Lnet/openid/appauth/Clock;Lnet/openid/appauth/AuthState$AuthStateAction;)V

    .line 371
    return-void
.end method

.method performActionWithFreshTokens(Lnet/openid/appauth/AuthorizationService;Ljava/util/Map;Lnet/openid/appauth/Clock;Lnet/openid/appauth/AuthState$AuthStateAction;)V
    .locals 3
    .param p1, "service"    # Lnet/openid/appauth/AuthorizationService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "clock"    # Lnet/openid/appauth/Clock;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "action"    # Lnet/openid/appauth/AuthState$AuthStateAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationService;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/openid/appauth/Clock;",
            "Lnet/openid/appauth/AuthState$AuthStateAction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, "refreshTokenAdditionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "service cannot be null"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v0, "additional params cannot be null"

    invoke-static {p2, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v0, "clock cannot be null"

    invoke-static {p3, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v0, "action cannot be null"

    invoke-static {p4, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No refresh token available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    invoke-virtual {p0, p3}, Lnet/openid/appauth/AuthState;->getNeedsTokenRefresh(Lnet/openid/appauth/Clock;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->getIdToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p4, v0, v1, v2}, Lnet/openid/appauth/AuthState$AuthStateAction;->execute(Ljava/lang/String;Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;)V

    .line 408
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-virtual {p0, p2}, Lnet/openid/appauth/AuthState;->createTokenRefreshRequest(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest;

    move-result-object v0

    new-instance v1, Lnet/openid/appauth/AuthState$1;

    invoke-direct {v1, p0, p4}, Lnet/openid/appauth/AuthState$1;-><init>(Lnet/openid/appauth/AuthState;Lnet/openid/appauth/AuthState$AuthStateAction;)V

    invoke-virtual {p1, v0, v1}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    goto :goto_0
.end method

.method public performActionWithFreshTokens(Lnet/openid/appauth/AuthorizationService;Lnet/openid/appauth/AuthState$AuthStateAction;)V
    .locals 1
    .param p1, "service"    # Lnet/openid/appauth/AuthorizationService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "action"    # Lnet/openid/appauth/AuthState$AuthStateAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 354
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lnet/openid/appauth/AuthState;->performActionWithFreshTokens(Lnet/openid/appauth/AuthorizationService;Ljava/util/Map;Lnet/openid/appauth/AuthState$AuthStateAction;)V

    .line 355
    return-void
.end method

.method public setNeedsTokenRefresh(Z)V
    .locals 0
    .param p1, "needsTokenRefresh"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lnet/openid/appauth/AuthState;->mNeedsTokenRefreshOverride:Z

    .line 282
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 445
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 446
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "refreshToken"

    iget-object v2, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v1, "scope"

    iget-object v2, p0, Lnet/openid/appauth/AuthState;->mScope:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    if-eqz v1, :cond_0

    .line 450
    const-string v1, "mAuthorizationException"

    iget-object v2, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    invoke-virtual {v2}, Lnet/openid/appauth/AuthorizationException;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 453
    :cond_0
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    if-eqz v1, :cond_1

    .line 454
    const-string v1, "lastAuthorizationResponse"

    iget-object v2, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    .line 457
    invoke-virtual {v2}, Lnet/openid/appauth/AuthorizationResponse;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    .line 454
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 459
    :cond_1
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    if-eqz v1, :cond_2

    .line 460
    const-string v1, "mLastTokenResponse"

    iget-object v2, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 463
    invoke-virtual {v2}, Lnet/openid/appauth/TokenResponse;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    .line 460
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 465
    :cond_2
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lnet/openid/appauth/AuthorizationResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 4
    .param p1, "authResponse"    # Lnet/openid/appauth/AuthorizationResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "authException"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 290
    if-eqz p1, :cond_2

    move v2, v1

    :goto_0
    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    xor-int/2addr v0, v2

    const-string v2, "exactly one of authResponse or authError should be non-null"

    invoke-static {v0, v2}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 292
    if-eqz p2, :cond_3

    .line 293
    iget v0, p2, Lnet/openid/appauth/AuthorizationException;->type:I

    if-ne v0, v1, :cond_1

    .line 294
    iput-object p2, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 309
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v0

    .line 290
    goto :goto_0

    .line 301
    :cond_3
    iput-object p1, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    .line 302
    iput-object v3, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 303
    iput-object v3, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    .line 304
    iput-object v3, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 308
    iget-object v0, p1, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lnet/openid/appauth/AuthState;->mScope:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    goto :goto_2
.end method

.method public update(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 4
    .param p1, "tokenResponse"    # Lnet/openid/appauth/TokenResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "authException"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    if-eqz p1, :cond_2

    move v3, v1

    :goto_0
    if-eqz p2, :cond_3

    move v0, v1

    :goto_1
    xor-int/2addr v0, v3

    const-string v3, "exactly one of authResponse or authError should be non-null"

    invoke-static {v0, v3}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "AuthState.update should not be called in an error state (%s), call updatewith the result of the fresh authorization response first"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/openid/appauth/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 332
    :cond_0
    if-eqz p2, :cond_4

    .line 333
    iget v0, p2, Lnet/openid/appauth/AuthorizationException;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 334
    iput-object p2, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 346
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v3, v2

    .line 317
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 339
    :cond_4
    iput-object p1, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 340
    iget-object v0, p1, Lnet/openid/appauth/TokenResponse;->scope:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p1, Lnet/openid/appauth/TokenResponse;->scope:Ljava/lang/String;

    iput-object v0, p0, Lnet/openid/appauth/AuthState;->mScope:Ljava/lang/String;

    .line 343
    :cond_5
    iget-object v0, p1, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p1, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    iput-object v0, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    goto :goto_2
.end method
