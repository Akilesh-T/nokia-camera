.class interface abstract Lnet/openid/appauth/AuthorizationService$UrlBuilder;
.super Ljava/lang/Object;
.source "AuthorizationService.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "UrlBuilder"
.end annotation


# virtual methods
.method public abstract buildUrlFromString(Ljava/lang/String;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
