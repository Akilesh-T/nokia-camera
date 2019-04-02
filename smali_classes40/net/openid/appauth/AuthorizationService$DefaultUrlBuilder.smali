.class Lnet/openid/appauth/AuthorizationService$DefaultUrlBuilder;
.super Ljava/lang/Object;
.source "AuthorizationService.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationService$UrlBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultUrlBuilder"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/openid/appauth/AuthorizationService$DefaultUrlBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lnet/openid/appauth/AuthorizationService$DefaultUrlBuilder;

    invoke-direct {v0}, Lnet/openid/appauth/AuthorizationService$DefaultUrlBuilder;-><init>()V

    sput-object v0, Lnet/openid/appauth/AuthorizationService$DefaultUrlBuilder;->INSTANCE:Lnet/openid/appauth/AuthorizationService$DefaultUrlBuilder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildUrlFromString(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
