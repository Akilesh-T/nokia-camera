.class public Lnet/openid/appauth/AuthorizationRequest;
.super Ljava/lang/Object;
.source "AuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationRequest$Builder;,
        Lnet/openid/appauth/AuthorizationRequest$Prompt;,
        Lnet/openid/appauth/AuthorizationRequest$Display;
    }
.end annotation


# static fields
.field private static final BUILT_IN_PARAMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODE_CHALLENGE_METHOD_PLAIN:Ljava/lang/String; = "plain"

.field public static final CODE_CHALLENGE_METHOD_S256:Ljava/lang/String; = "S256"

.field private static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additionalParameters"

.field private static final KEY_CLIENT_ID:Ljava/lang/String; = "clientId"

.field private static final KEY_CODE_VERIFIER:Ljava/lang/String; = "codeVerifier"

.field private static final KEY_CODE_VERIFIER_CHALLENGE:Ljava/lang/String; = "codeVerifierChallenge"

.field private static final KEY_CODE_VERIFIER_CHALLENGE_METHOD:Ljava/lang/String; = "codeVerifierChallengeMethod"

.field private static final KEY_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEY_DISPLAY:Ljava/lang/String; = "display"

.field private static final KEY_PROMPT:Ljava/lang/String; = "prompt"

.field private static final KEY_REDIRECT_URI:Ljava/lang/String; = "redirectUri"

.field private static final KEY_RESPONSE_MODE:Ljava/lang/String; = "responseMode"

.field private static final KEY_RESPONSE_TYPE:Ljava/lang/String; = "responseType"

.field private static final KEY_SCOPE:Ljava/lang/String; = "scope"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field static final PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_CODE_CHALLENGE:Ljava/lang/String; = "code_challenge"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_CODE_CHALLENGE_METHOD:Ljava/lang/String; = "code_challenge_method"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_DISPLAY:Ljava/lang/String; = "display"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_PROMPT:Ljava/lang/String; = "prompt"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_RESPONSE_MODE:Ljava/lang/String; = "response_mode"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_RESPONSE_TYPE:Ljava/lang/String; = "response_type"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_SCOPE:Ljava/lang/String; = "scope"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_STATE:Ljava/lang/String; = "state"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final RESPONSE_MODE_FRAGMENT:Ljava/lang/String; = "fragment"

.field public static final RESPONSE_MODE_QUERY:Ljava/lang/String; = "query"

.field public static final RESPONSE_TYPE_CODE:Ljava/lang/String; = "code"

.field public static final RESPONSE_TYPE_TOKEN:Ljava/lang/String; = "token"

.field public static final SCOPE_ADDRESS:Ljava/lang/String; = "address"

.field public static final SCOPE_EMAIL:Ljava/lang/String; = "email"

.field public static final SCOPE_OPENID:Ljava/lang/String; = "openid"

.field public static final SCOPE_PHONE:Ljava/lang/String; = "phone"

.field public static final SCOPE_PROFILE:Ljava/lang/String; = "profile"

.field private static final STATE_LENGTH:I = 0x10


# instance fields
.field public final additionalParameters:Ljava/util/Map;
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

.field public final clientId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final codeVerifier:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final codeVerifierChallenge:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final codeVerifierChallengeMethod:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final display:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final prompt:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final redirectUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final responseMode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final responseType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final scope:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final state:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 264
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "client_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "code_challenge"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "code_challenge_method"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "prompt"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "redirect_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "response_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "response_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "scope"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "state"

    aput-object v2, v0, v1

    invoke-static {v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->builtInParams([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    .param p5, "display"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "prompt"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "codeVerifier"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "codeVerifierChallenge"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "codeVerifierChallengeMethod"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "responseMode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 824
    .local p13, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 827
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    .line 828
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    .line 829
    iput-object p4, p0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 830
    iput-object p13, p0, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    .line 833
    iput-object p5, p0, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    .line 834
    iput-object p6, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    .line 835
    iput-object p7, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    .line 836
    iput-object p8, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    .line 837
    iput-object p9, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    .line 838
    iput-object p10, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    .line 839
    iput-object p11, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    .line 840
    iput-object p12, p0, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    .line 841
    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/AuthorizationRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/net/Uri;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Ljava/lang/String;
    .param p11, "x10"    # Ljava/lang/String;
    .param p12, "x11"    # Ljava/lang/String;
    .param p13, "x12"    # Ljava/util/Map;
    .param p14, "x13"    # Lnet/openid/appauth/AuthorizationRequest$1;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p13}, Lnet/openid/appauth/AuthorizationRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lnet/openid/appauth/AuthorizationRequest;->generateRandomState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lnet/openid/appauth/AuthorizationRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest;
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 927
    const-string v0, "json string cannot be null"

    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationRequest;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 938
    const-string v1, "json cannot be null"

    invoke-static {p0, v1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    new-instance v1, Lnet/openid/appauth/AuthorizationRequest$Builder;

    const-string v2, "configuration"

    .line 940
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v2

    const-string v3, "clientId"

    .line 941
    invoke-static {p0, v3}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "responseType"

    .line 942
    invoke-static {p0, v4}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "redirectUri"

    .line 943
    invoke-static {p0, v5}, Lnet/openid/appauth/JsonUtil;->getUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/openid/appauth/AuthorizationRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "display"

    .line 944
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setDisplay(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v1

    const-string v2, "state"

    .line 945
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v1

    const-string v2, "codeVerifier"

    .line 947
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "codeVerifierChallenge"

    .line 948
    invoke-static {p0, v3}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "codeVerifierChallengeMethod"

    .line 949
    invoke-static {p0, v4}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 946
    invoke-virtual {v1, v2, v3, v4}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setCodeVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v1

    const-string v2, "responseMode"

    .line 950
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setResponseMode(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v1

    const-string v2, "additionalParameters"

    .line 951
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v0

    .line 953
    .local v0, "builder":Lnet/openid/appauth/AuthorizationRequest$Builder;
    const-string v1, "scope"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    const-string v1, "scope"

    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 956
    :cond_0
    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->build()Lnet/openid/appauth/AuthorizationRequest;

    move-result-object v1

    return-object v1
.end method

.method private static generateRandomState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 960
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 961
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 962
    .local v0, "random":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 963
    const/16 v2, 0xb

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getPromptValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getScopeSet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 895
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 896
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "configuration"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-virtual {v2}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 897
    const-string v1, "clientId"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v1, "responseType"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v1, "redirectUri"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v1, "display"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v1, "scope"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v1, "state"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v1, "codeVerifier"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v1, "codeVerifierChallenge"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v1, "codeVerifierChallengeMethod"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v1, "responseMode"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v1, "additionalParameters"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    .line 909
    invoke-static {v2}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 908
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 910
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationRequest;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 867
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v2, v2, Lnet/openid/appauth/AuthorizationServiceConfiguration;->authorizationEndpoint:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "redirect_uri"

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 868
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "client_id"

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    .line 869
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "response_type"

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    .line 870
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 872
    .local v1, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v2, "display"

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lnet/openid/appauth/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    const-string v2, "prompt"

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lnet/openid/appauth/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 874
    const-string v2, "state"

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lnet/openid/appauth/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 875
    const-string v2, "scope"

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lnet/openid/appauth/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 876
    const-string v2, "response_mode"

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lnet/openid/appauth/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 878
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 879
    const-string v2, "code_challenge"

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "code_challenge_method"

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    .line 880
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 883
    :cond_0
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 884
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 887
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method
