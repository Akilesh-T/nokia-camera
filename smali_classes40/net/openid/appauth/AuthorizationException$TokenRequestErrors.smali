.class public final Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;
.super Ljava/lang/Object;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenRequestErrors"
.end annotation


# static fields
.field public static final CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_CLIENT:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_GRANT:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

.field public static final OTHER:Lnet/openid/appauth/AuthorizationException;

.field private static final STRING_TO_EXCEPTION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/openid/appauth/AuthorizationException;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

.field public static final UNSUPPORTED_GRANT_TYPE:Lnet/openid/appauth/AuthorizationException;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    const/16 v0, 0x7d0

    const-string v1, "invalid_request"

    .line 299
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    .line 304
    const/16 v0, 0x7d1

    const-string v1, "invalid_client"

    .line 305
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_CLIENT:Lnet/openid/appauth/AuthorizationException;

    .line 310
    const/16 v0, 0x7d2

    const-string v1, "invalid_grant"

    .line 311
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_GRANT:Lnet/openid/appauth/AuthorizationException;

    .line 316
    const/16 v0, 0x7d3

    const-string v1, "unauthorized_client"

    .line 317
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

    .line 322
    const/16 v0, 0x7d4

    const-string v1, "unsupported_grant_type"

    .line 323
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->UNSUPPORTED_GRANT_TYPE:Lnet/openid/appauth/AuthorizationException;

    .line 328
    const/16 v0, 0x7d5

    const-string v1, "invalid_scope"

    .line 329
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

    .line 335
    const/16 v0, 0x7d6

    .line 336
    invoke-static {v0, v2}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 344
    const/16 v0, 0x7d7

    .line 345
    invoke-static {v0, v2}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    .line 347
    const/16 v0, 0x8

    new-array v0, v0, [Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_CLIENT:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_GRANT:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->UNSUPPORTED_GRANT_TYPE:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    .line 348
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException;->access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    .line 347
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byString(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 2
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 363
    sget-object v1, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/AuthorizationException;

    .line 364
    .local v0, "ex":Lnet/openid/appauth/AuthorizationException;
    if-eqz v0, :cond_0

    .line 367
    .end local v0    # "ex":Lnet/openid/appauth/AuthorizationException;
    :goto_0
    return-object v0

    .restart local v0    # "ex":Lnet/openid/appauth/AuthorizationException;
    :cond_0
    sget-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    goto :goto_0
.end method
