.class public final Lnet/openid/appauth/AuthorizationRequest$Builder;
.super Ljava/lang/Object;
.source "AuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdditionalParameters:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCodeVerifier:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCodeVerifierChallenge:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCodeVerifierChallengeMethod:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDisplay:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPrompt:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRedirectUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mResponseMode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mResponseType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mState:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "configuration"    # Lnet/openid/appauth/AuthorizationServiceConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "responseType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "redirectUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 498
    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setAuthorizationServiceConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 499
    invoke-virtual {p0, p2}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setClientId(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 500
    invoke-virtual {p0, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setResponseType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 501
    invoke-virtual {p0, p4}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 502
    invoke-static {}, Lnet/openid/appauth/AuthorizationRequest;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 503
    invoke-static {}, Lnet/openid/appauth/CodeVerifierUtil;->generateRandomCodeVerifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 504
    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/AuthorizationRequest;
    .locals 15
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 794
    new-instance v0, Lnet/openid/appauth/AuthorizationRequest;

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    iget-object v5, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mDisplay:Ljava/lang/String;

    iget-object v6, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    iget-object v7, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    iget-object v8, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/String;

    iget-object v9, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    iget-object v10, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    iget-object v11, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    iget-object v12, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseMode:Ljava/lang/String;

    new-instance v13, Ljava/util/HashMap;

    iget-object v14, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    invoke-direct {v13, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 807
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lnet/openid/appauth/AuthorizationRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/AuthorizationRequest$1;)V

    return-object v0
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/AuthorizationRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 781
    .local p1, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lnet/openid/appauth/AuthorizationRequest;->access$100()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 782
    return-object p0
.end method

.method public setAuthorizationServiceConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1, "configuration"    # Lnet/openid/appauth/AuthorizationServiceConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 511
    const-string v0, "configuration cannot be null"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 513
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 2
    .param p1, "clientId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 527
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "client ID cannot be null or empty"

    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 528
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    .line 529
    return-object p0

    .line 527
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1, "codeVerifier"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 705
    if-eqz p1, :cond_0

    .line 706
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->checkCodeVerifier(Ljava/lang/String;)V

    .line 707
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    .line 708
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->deriveCodeVerifierChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    .line 709
    invoke-static {}, Lnet/openid/appauth/CodeVerifierUtil;->getCodeVerifierChallengeMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    .line 716
    :goto_0
    return-object p0

    .line 711
    :cond_0
    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    .line 712
    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    .line 713
    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCodeVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 4
    .param p1, "codeVerifier"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "codeVerifierChallenge"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "codeVerifierChallengeMethod"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    if-eqz p1, :cond_0

    .line 736
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->checkCodeVerifier(Ljava/lang/String;)V

    .line 737
    const-string v0, "code verifier challenge cannot be null or empty if verifier is set"

    invoke-static {p2, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 739
    const-string v0, "code verifier challenge method cannot be null or empty if verifier is set"

    invoke-static {p3, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 749
    :goto_0
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    .line 750
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    .line 751
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    .line 753
    return-object p0

    .line 743
    :cond_0
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "code verifier challenge must be null if verifier is null"

    invoke-static {v0, v3}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 745
    if-nez p3, :cond_2

    :goto_2
    const-string v0, "code verifier challenge method must be null if verifier is null"

    invoke-static {v1, v0}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 743
    goto :goto_1

    :cond_2
    move v1, v2

    .line 745
    goto :goto_2
.end method

.method public setDisplay(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1, "display"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 539
    const-string v0, "display must be null or not empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mDisplay:Ljava/lang/String;

    .line 540
    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1, "prompt"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 554
    const-string v0, "prompt must be null or non-empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    .line 555
    return-object p0
.end method

.method public setPromptValues(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/AuthorizationRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 588
    .local p1, "promptValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    .line 589
    return-object p0
.end method

.method public varargs setPromptValues([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1, "promptValues"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 569
    if-nez p1, :cond_0

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    .line 574
    .end local p0    # "this":Lnet/openid/appauth/AuthorizationRequest$Builder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lnet/openid/appauth/AuthorizationRequest$Builder;
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setPromptValues(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1, "redirectUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 618
    const-string v0, "redirect URI cannot be null or empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    .line 619
    return-object p0
.end method

.method public setResponseMode(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1, "responseMode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 766
    const-string v0, "responseMode must not be empty"

    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 767
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseMode:Ljava/lang/String;

    .line 768
    return-object p0
.end method

.method public setResponseType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 2
    .param p1, "responseType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 604
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "expected response type cannot be null or empty"

    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 606
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    .line 607
    return-object p0

    .line 604
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 632
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    .line 637
    :goto_0
    return-object p0

    .line 635
    :cond_0
    const-string v0, " +"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setScopes([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    goto :goto_0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/AuthorizationRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, "scopes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    .line 670
    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .param p1, "scopes"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 651
    if-nez p1, :cond_0

    .line 652
    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/String;

    .line 654
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 655
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 2
    .param p1, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 688
    if-eqz p1, :cond_0

    .line 689
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "state cannot be empty if defined"

    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 692
    :cond_0
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/String;

    .line 693
    return-object p0

    .line 689
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
