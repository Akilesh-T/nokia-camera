.class public interface abstract Lnet/openid/appauth/AuthState$AuthStateAction;
.super Ljava/lang/Object;
.source "AuthState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthStateAction"
.end annotation


# virtual methods
.method public abstract execute(Ljava/lang/String;Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
