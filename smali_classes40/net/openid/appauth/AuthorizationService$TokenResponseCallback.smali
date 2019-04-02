.class public interface abstract Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;
.super Ljava/lang/Object;
.source "AuthorizationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TokenResponseCallback"
.end annotation


# virtual methods
.method public abstract onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .param p1    # Lnet/openid/appauth/TokenResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
