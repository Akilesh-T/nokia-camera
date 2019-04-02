.class abstract Lnet/openid/appauth/JsonUtil$ListField;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ListField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final defaultValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lnet/openid/appauth/JsonUtil$ListField;, "Lnet/openid/appauth/JsonUtil$ListField<TT;>;"
    .local p2, "defaultValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Lnet/openid/appauth/JsonUtil$ListField;->key:Ljava/lang/String;

    .line 436
    iput-object p2, p0, Lnet/openid/appauth/JsonUtil$ListField;->defaultValue:Ljava/util/List;

    .line 437
    return-void
.end method


# virtual methods
.method abstract convert(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
