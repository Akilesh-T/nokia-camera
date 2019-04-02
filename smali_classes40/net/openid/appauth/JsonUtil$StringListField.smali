.class final Lnet/openid/appauth/JsonUtil$StringListField;
.super Lnet/openid/appauth/JsonUtil$ListField;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringListField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/openid/appauth/JsonUtil$ListField",
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
    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/openid/appauth/JsonUtil$ListField;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 446
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, "defaultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lnet/openid/appauth/JsonUtil$ListField;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 450
    return-void
.end method


# virtual methods
.method bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lnet/openid/appauth/JsonUtil$StringListField;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 454
    return-object p1
.end method
