.class public final Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;
.super Ljava/lang/Object;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorizationRequestErrors"
.end annotation


# static fields
.field public static final ACCESS_DENIED:Lnet/openid/appauth/AuthorizationException;

.field public static final CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

.field public static final OTHER:Lnet/openid/appauth/AuthorizationException;

.field public static final SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

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

.field public static final TEMPORARILY_UNAVAILABLE:Lnet/openid/appauth/AuthorizationException;

.field public static final UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

.field public static final UNSUPPORTED_RESPONSE_TYPE:Lnet/openid/appauth/AuthorizationException;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    const/16 v0, 0x3e8

    const-string v1, "invalid_request"

    .line 205
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    .line 210
    const/16 v0, 0x3e9

    const-string v1, "unauthorized_client"

    .line 211
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

    .line 216
    const/16 v0, 0x3ea

    const-string v1, "access_denied"

    .line 217
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->ACCESS_DENIED:Lnet/openid/appauth/AuthorizationException;

    .line 222
    const/16 v0, 0x3eb

    const-string v1, "unsupported_response_type"

    .line 223
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->UNSUPPORTED_RESPONSE_TYPE:Lnet/openid/appauth/AuthorizationException;

    .line 228
    const/16 v0, 0x3ec

    const-string v1, "invalid_scope"

    .line 229
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

    .line 235
    const/16 v0, 0x3ed

    const-string v1, "server_error"

    .line 236
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 242
    const/16 v0, 0x3ee

    const-string v1, "temporarily_unavailable"

    .line 243
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->TEMPORARILY_UNAVAILABLE:Lnet/openid/appauth/AuthorizationException;

    .line 249
    const/16 v0, 0x3ef

    .line 250
    invoke-static {v0, v2}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 258
    const/16 v0, 0x3f0

    .line 259
    invoke-static {v0, v2}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    .line 261
    const/16 v0, 0x9

    new-array v0, v0, [Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    sget-object v2, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->ACCESS_DENIED:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->UNSUPPORTED_RESPONSE_TYPE:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->TEMPORARILY_UNAVAILABLE:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    .line 262
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException;->access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    .line 261
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byString(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 2
    .param p0, "error"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 279
    sget-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/AuthorizationException;

    .line 280
    .local v0, "ex":Lnet/openid/appauth/AuthorizationException;
    if-eqz v0, :cond_0

    .line 283
    .end local v0    # "ex":Lnet/openid/appauth/AuthorizationException;
    :goto_0
    return-object v0

    .restart local v0    # "ex":Lnet/openid/appauth/AuthorizationException;
    :cond_0
    sget-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    goto :goto_0
.end method
