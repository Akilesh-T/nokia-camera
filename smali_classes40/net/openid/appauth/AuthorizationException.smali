.class public final Lnet/openid/appauth/AuthorizationException;
.super Ljava/lang/Exception;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;,
        Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;,
        Lnet/openid/appauth/AuthorizationException$GeneralErrors;
    }
.end annotation


# static fields
.field public static final EXTRA_EXCEPTION:Ljava/lang/String; = "net.openid.appauth.AuthorizationException"

.field private static final HASH_MULTIPLIER:I = 0x1f

.field static final KEY_CODE:Ljava/lang/String; = "code"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ERROR:Ljava/lang/String; = "error"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ERROR_DESCRIPTION:Ljava/lang/String; = "errorDescription"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ERROR_URI:Ljava/lang/String; = "errorUri"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_TYPE:Ljava/lang/String; = "type"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final PARAM_ERROR:Ljava/lang/String; = "error"

.field public static final PARAM_ERROR_DESCRIPTION:Ljava/lang/String; = "error_description"

.field public static final PARAM_ERROR_URI:Ljava/lang/String; = "error_uri"

.field public static final TYPE_GENERAL_ERROR:I = 0x0

.field public static final TYPE_OAUTH_AUTHORIZATION_ERROR:I = 0x1

.field public static final TYPE_OAUTH_TOKEN_ERROR:I = 0x2

.field public static final TYPE_RESOURCE_SERVER_AUTHORIZATION_ERROR:I = 0x3


# instance fields
.field public final code:I

.field public final error:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final errorDescription:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final errorUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "error"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "errorDescription"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "errorUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "rootCause"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 527
    invoke-direct {p0, p4, p6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    iput p1, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    .line 529
    iput p2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    .line 530
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    .line 531
    iput-object p4, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    .line 532
    iput-object p5, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    .line 533
    return-void
.end method

.method static synthetic access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->generalEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->authEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # [Lnet/openid/appauth/AuthorizationException;

    .prologue
    .line 48
    invoke-static {p0}, Lnet/openid/appauth/AuthorizationException;->exceptionMapByString([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->tokenEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    return-object v0
.end method

.method private static authEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "code"    # I
    .param p1, "error"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 377
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x1

    move v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static varargs exceptionMapByString([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;
    .locals 5
    .param p0, "exceptions"    # [Lnet/openid/appauth/AuthorizationException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/openid/appauth/AuthorizationException;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/openid/appauth/AuthorizationException;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 470
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    if-eqz p0, :cond_1

    array-length v2, p0

    :goto_0
    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    .line 473
    .local v1, "map":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;>;"
    if-eqz p0, :cond_2

    .line 474
    array-length v2, p0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v0, p0, v3

    .line 475
    .local v0, "ex":Lnet/openid/appauth/AuthorizationException;
    iget-object v4, v0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 476
    iget-object v4, v0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ex":Lnet/openid/appauth/AuthorizationException;
    .end local v1    # "map":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;>;"
    :cond_1
    move v2, v3

    .line 470
    goto :goto_0

    .line 481
    .restart local v1    # "map":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;>;"
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public static fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationException;
    .locals 3
    .param p0, "data"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 455
    invoke-static {p0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v1, "net.openid.appauth.AuthorizationException"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    const/4 v1, 0x0

    .line 462
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "net.openid.appauth.AuthorizationException"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/openid/appauth/AuthorizationException;->fromJson(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "ex":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Intent contains malformed exception data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromJson(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
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
    .line 428
    const-string v0, "jsonStr cannot be null or empty"

    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 429
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
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
    .line 438
    const-string v0, "json cannot be null"

    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    const-string v1, "type"

    .line 440
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "code"

    .line 441
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "error"

    .line 442
    invoke-static {p0, v3}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "errorDescription"

    .line 443
    invoke-static {p0, v4}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "errorUri"

    .line 444
    invoke-static {p0, v5}, Lnet/openid/appauth/JsonUtil;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static fromOAuthTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "ex"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "errorOverride"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "errorDescriptionOverride"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "errorUriOverride"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 413
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    iget v1, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    if-eqz p1, :cond_0

    move-object v3, p1

    :goto_0
    if-eqz p2, :cond_1

    move-object v4, p2

    :goto_1
    if-eqz p3, :cond_2

    move-object v5, p3

    :goto_2
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    iget-object v3, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    goto :goto_2
.end method

.method public static fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "ex"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rootCause"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 394
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    iget v1, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    iget-object v5, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static generalEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "code"    # I
    .param p1, "errorDescription"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 372
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    move v2, p0

    move-object v4, p1

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static tokenEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "code"    # I
    .param p1, "error"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 382
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x2

    move v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    if-ne p1, p0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return v1

    .line 580
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lnet/openid/appauth/AuthorizationException;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 581
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 584
    check-cast v0, Lnet/openid/appauth/AuthorizationException;

    .line 585
    .local v0, "other":Lnet/openid/appauth/AuthorizationException;
    iget v3, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    iget v4, v0, Lnet/openid/appauth/AuthorizationException;->type:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    iget v4, v0, Lnet/openid/appauth/AuthorizationException;->code:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 591
    iget v0, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 565
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 566
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "net.openid.appauth.AuthorizationException"

    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationException;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 541
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 542
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "type"

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 543
    const-string v1, "code"

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 544
    const-string v1, "error"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v1, "errorDescription"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v1, "errorUri"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 547
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 556
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationException;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorizationException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationException;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
