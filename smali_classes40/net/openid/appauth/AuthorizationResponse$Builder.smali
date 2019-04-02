.class public final Lnet/openid/appauth/AuthorizationResponse$Builder;
.super Ljava/lang/Object;
.source "AuthorizationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationResponse;
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

.field private mAuthorizationCode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIdToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRequest:Lnet/openid/appauth/AuthorizationRequest;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mState:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTokenType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/openid/appauth/AuthorizationRequest;)V
    .locals 1
    .param p1, "request"    # Lnet/openid/appauth/AuthorizationRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const-string v0, "authorization request cannot be null"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/AuthorizationRequest;

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mRequest:Lnet/openid/appauth/AuthorizationRequest;

    .line 217
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 218
    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/AuthorizationResponse;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lnet/openid/appauth/AuthorizationResponse;

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mRequest:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mState:Ljava/lang/String;

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mTokenType:Ljava/lang/String;

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAuthorizationCode:Ljava/lang/String;

    iget-object v5, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessToken:Ljava/lang/String;

    iget-object v6, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    iget-object v7, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mIdToken:Ljava/lang/String;

    iget-object v8, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mScope:Ljava/lang/String;

    iget-object v9, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 397
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lnet/openid/appauth/AuthorizationResponse;-><init>(Lnet/openid/appauth/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/AuthorizationResponse$1;)V

    return-object v0
.end method

.method public fromUri(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 225
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    invoke-virtual {p0, p1, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->fromUri(Landroid/net/Uri;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method fromUri(Landroid/net/Uri;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
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
    .line 231
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    .line 232
    const-string v0, "token_type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setTokenType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    .line 233
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    .line 234
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAccessToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    .line 235
    const-string v0, "expires_in"

    invoke-static {p1, v0}, Lnet/openid/appauth/UriUtil;->getLongQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAccessTokenExpiresIn(Ljava/lang/Long;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    .line 236
    const-string v0, "id_token"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setIdToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    .line 237
    const-string v0, "scope"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    .line 238
    invoke-static {}, Lnet/openid/appauth/AuthorizationResponse;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->extractAdditionalParams(Landroid/net/Uri;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    .line 239
    return-object p0
.end method

.method public setAccessToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 277
    const-string v0, "accessToken must not be empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 278
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessToken:Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public setAccessTokenExpirationTime(Ljava/lang/Long;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 0
    .param p1, "expirationTime"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 311
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    .line 312
    return-object p0
.end method

.method public setAccessTokenExpiresIn(Ljava/lang/Long;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .param p1, "expiresIn"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 287
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    invoke-virtual {p0, p1, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAccessTokenExpiresIn(Ljava/lang/Long;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAccessTokenExpiresIn(Ljava/lang/Long;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/AuthorizationResponse$Builder;
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
    .line 297
    if-nez p1, :cond_0

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    .line 303
    :goto_0
    return-object p0

    .line 300
    :cond_0
    invoke-interface {p2}, Lnet/openid/appauth/Clock;->getCurrentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 301
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 300
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    goto :goto_0
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationResponse$Builder;
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
            "Lnet/openid/appauth/AuthorizationResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lnet/openid/appauth/AuthorizationResponse;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 380
    return-object p0
.end method

.method public setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .param p1, "authorizationCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 267
    const-string v0, "authorizationCode must not be empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAuthorizationCode:Ljava/lang/String;

    .line 269
    return-object p0
.end method

.method public setIdToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .param p1, "idToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 320
    const-string v0, "idToken cannot be empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 321
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mIdToken:Ljava/lang/String;

    .line 322
    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mScope:Ljava/lang/String;

    .line 340
    :goto_0
    return-object p0

    .line 338
    :cond_0
    const-string v0, " +"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setScopes([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    goto :goto_0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationResponse$Builder;
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
            "Lnet/openid/appauth/AuthorizationResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "scopes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mScope:Ljava/lang/String;

    .line 371
    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .param p1, "scopes"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mScope:Ljava/lang/String;

    .line 357
    :goto_0
    return-object p0

    .line 355
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    goto :goto_0
.end method

.method public setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .param p1, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 247
    const-string v0, "state must not be empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mState:Ljava/lang/String;

    .line 249
    return-object p0
.end method

.method public setTokenType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .param p1, "tokenType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 257
    const-string v0, "tokenType must not be empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mTokenType:Ljava/lang/String;

    .line 259
    return-object p0
.end method
