.class final Lnet/openid/appauth/JsonUtil$UriField;
.super Lnet/openid/appauth/JsonUtil$Field;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UriField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/openid/appauth/JsonUtil$Field",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/openid/appauth/JsonUtil$UriField;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 386
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Landroid/net/Uri;

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Lnet/openid/appauth/JsonUtil$Field;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    return-void
.end method


# virtual methods
.method convert(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lnet/openid/appauth/JsonUtil$UriField;->convert(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
