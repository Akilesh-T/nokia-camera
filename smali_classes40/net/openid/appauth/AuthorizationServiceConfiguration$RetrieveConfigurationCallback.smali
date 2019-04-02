.class public interface abstract Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;
.super Ljava/lang/Object;
.source "AuthorizationServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RetrieveConfigurationCallback"
.end annotation


# virtual methods
.method public abstract onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V
    .param p1    # Lnet/openid/appauth/AuthorizationServiceConfiguration;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
