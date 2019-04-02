.class Lnet/openid/appauth/AuthState$1;
.super Ljava/lang/Object;
.source "AuthState.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/openid/appauth/AuthState;->performActionWithFreshTokens(Lnet/openid/appauth/AuthorizationService;Ljava/util/Map;Lnet/openid/appauth/Clock;Lnet/openid/appauth/AuthState$AuthStateAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/openid/appauth/AuthState;

.field final synthetic val$action:Lnet/openid/appauth/AuthState$AuthStateAction;


# direct methods
.method constructor <init>(Lnet/openid/appauth/AuthState;Lnet/openid/appauth/AuthState$AuthStateAction;)V
    .locals 0
    .param p1, "this$0"    # Lnet/openid/appauth/AuthState;

    .prologue
    .line 394
    iput-object p1, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    iput-object p2, p0, Lnet/openid/appauth/AuthState$1;->val$action:Lnet/openid/appauth/AuthState$AuthStateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 4
    .param p1, "response"    # Lnet/openid/appauth/TokenResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "ex"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-object v0, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    invoke-virtual {v0, p1, p2}, Lnet/openid/appauth/AuthState;->update(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 400
    if-nez p2, :cond_0

    .line 401
    iget-object v0, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/openid/appauth/AuthState;->access$002(Lnet/openid/appauth/AuthState;Z)Z

    .line 402
    iget-object v0, p0, Lnet/openid/appauth/AuthState$1;->val$action:Lnet/openid/appauth/AuthState$AuthStateAction;

    iget-object v1, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    invoke-virtual {v1}, Lnet/openid/appauth/AuthState;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    invoke-virtual {v2}, Lnet/openid/appauth/AuthState;->getIdToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lnet/openid/appauth/AuthState$AuthStateAction;->execute(Ljava/lang/String;Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/AuthState$1;->val$action:Lnet/openid/appauth/AuthState$AuthStateAction;

    invoke-interface {v0, v3, v3, p2}, Lnet/openid/appauth/AuthState$AuthStateAction;->execute(Ljava/lang/String;Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;)V

    goto :goto_0
.end method
