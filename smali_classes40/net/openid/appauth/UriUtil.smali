.class Lnet/openid/appauth/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "uriBuilder"    # Landroid/net/Uri$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "paramName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    if-nez p2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "valueStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method public static getLongQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "param"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "valueStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 55
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseUriIfAvailable(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
