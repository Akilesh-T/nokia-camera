.class public final Lnet/openid/appauth/TokenRequest$Builder;
.super Ljava/lang/Object;
.source "TokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/TokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
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

.field private mClientId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCodeVerifier:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGrantType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRedirectUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRefreshToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;)V
    .locals 1
    .param p1, "configuration"    # Lnet/openid/appauth/AuthorizationServiceConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenRequest$Builder;->setConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 265
    invoke-virtual {p0, p2}, Lnet/openid/appauth/TokenRequest$Builder;->setClientId(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 266
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 267
    return-void
.end method

.method private inferGrantType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mGrantType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mGrantType:Ljava/lang/String;

    .line 468
    :goto_0
    return-object v0

    .line 465
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 466
    const-string v0, "authorization_code"

    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 468
    const-string v0, "refresh_token"

    goto :goto_0

    .line 470
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "grant type not specified and cannot be inferred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lnet/openid/appauth/TokenRequest;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 430
    invoke-direct {p0}, Lnet/openid/appauth/TokenRequest$Builder;->inferGrantType()Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "grantType":Ljava/lang/String;
    const-string v0, "authorization_code"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    const-string v1, "authorization code must be specified for grant_type = authorization_code"

    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_0
    const-string v0, "refresh_token"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    const-string v1, "refresh token must be specified for grant_type = refresh_token"

    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_1
    const-string v0, "authorization_code"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no redirect URI specified on token request for code exchange"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_2
    new-instance v0, Lnet/openid/appauth/TokenRequest;

    iget-object v1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest$Builder;->mClientId:Ljava/lang/String;

    iget-object v4, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    iget-object v5, p0, Lnet/openid/appauth/TokenRequest$Builder;->mScope:Ljava/lang/String;

    iget-object v6, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    iget-object v7, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    iget-object v8, p0, Lnet/openid/appauth/TokenRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    iget-object v9, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 459
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lnet/openid/appauth/TokenRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/TokenRequest$1;)V

    return-object v0
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest$Builder;
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
            "Lnet/openid/appauth/TokenRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lnet/openid/appauth/TokenRequest;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 422
    return-object p0
.end method

.method public setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .param p1, "authorizationCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 380
    const-string v0, "authorization code must not be empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    .line 382
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 284
    const-string v0, "clientId cannot be null or empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mClientId:Ljava/lang/String;

    .line 285
    return-object p0
.end method

.method public setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 0
    .param p1, "codeVerifier"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 408
    if-eqz p1, :cond_0

    .line 409
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->checkCodeVerifier(Ljava/lang/String;)V

    .line 412
    :cond_0
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    .line 413
    return-object p0
.end method

.method public setConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .param p1, "configuration"    # Lnet/openid/appauth/AuthorizationServiceConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 275
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iput-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 276
    return-object p0
.end method

.method public setGrantType(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .param p1, "grantType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 293
    const-string v0, "grantType cannot be null or empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mGrantType:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 2
    .param p1, "redirectUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "redirectUri must have a scheme"

    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_0
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    .line 307
    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .param p1, "refreshToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 395
    if-eqz p1, :cond_0

    .line 396
    const-string v0, "refresh token cannot be empty if defined"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 398
    :cond_0
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    .line 399
    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mScope:Ljava/lang/String;

    .line 325
    :goto_0
    return-object p0

    .line 323
    :cond_0
    const-string v0, " +"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenRequest$Builder;->setScopes([Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    goto :goto_0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/TokenRequest$Builder;
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
            "Lnet/openid/appauth/TokenRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "scopes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mScope:Ljava/lang/String;

    .line 367
    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .param p1, "scopes"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/String;

    .line 346
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenRequest$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 347
    return-object p0
.end method
