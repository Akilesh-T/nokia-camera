.class final Lnet/openid/appauth/JsonUtil$StringField;
.super Lnet/openid/appauth/JsonUtil$Field;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/openid/appauth/JsonUtil$Field",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/openid/appauth/JsonUtil$StringField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-direct {p0, p1, p2}, Lnet/openid/appauth/JsonUtil$Field;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    return-void
.end method


# virtual methods
.method bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lnet/openid/appauth/JsonUtil$StringField;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 411
    return-object p1
.end method
