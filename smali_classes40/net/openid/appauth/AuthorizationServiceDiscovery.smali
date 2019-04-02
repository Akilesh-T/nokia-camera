.class public Lnet/openid/appauth/AuthorizationServiceDiscovery;
.super Ljava/lang/Object;
.source "AuthorizationServiceDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
    }
.end annotation


# static fields
.field static final ACR_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CLAIMS_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CLAIMS_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CLAIMS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CLAIM_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DISPLAY_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final GRANT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ID_TOKEN_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ID_TOKEN_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ISSUER:Lnet/openid/appauth/JsonUtil$StringField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final JWKS_URI:Lnet/openid/appauth/JsonUtil$UriField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MANDATORY_METADATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final OP_POLICY_URI:Lnet/openid/appauth/JsonUtil$UriField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final OP_TOS_URI:Lnet/openid/appauth/JsonUtil$UriField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_OBJECT_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_OBJECT_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_OBJECT_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_URI_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUIRE_REQUEST_URI_REGISTRATION:Lnet/openid/appauth/JsonUtil$BooleanField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final RESPONSE_MODES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final RESPONSE_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SCOPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SERVICE_DOCUMENTATION:Lnet/openid/appauth/JsonUtil$UriField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SUBJECT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TOKEN_ENDPOINT_AUTH_METHODS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TOKEN_ENDPOINT_AUTH_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final UI_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final USERINFO_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final USERINFO_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final USERINFO_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final USERINFO_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final docJson:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const-string v0, "issuer"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->str(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ISSUER:Lnet/openid/appauth/JsonUtil$StringField;

    .line 49
    const-string v0, "authorization_endpoint"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 52
    const-string v0, "token_endpoint"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 55
    const-string v0, "userinfo_endpoint"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 58
    const-string v0, "jwks_uri"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->JWKS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    .line 61
    const-string v0, "registration_endpoint"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 64
    const-string v0, "scopes_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SCOPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 67
    const-string v0, "response_types_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 70
    const-string v0, "response_modes_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_MODES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 73
    const-string v0, "grant_types_supported"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "authorization_code"

    aput-object v2, v1, v3

    const-string v2, "implicit"

    aput-object v2, v1, v4

    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->GRANT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 77
    const-string v0, "acr_values_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ACR_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 80
    const-string v0, "subject_types_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SUBJECT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 83
    const-string v0, "id_token_signing_alg_values_supported"

    .line 84
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 87
    const-string v0, "id_token_encryption_enc_values_supported"

    .line 88
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 91
    const-string v0, "id_token_encryption_enc_values_supported"

    .line 92
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 95
    const-string v0, "userinfo_signing_alg_values_supported"

    .line 96
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 99
    const-string v0, "userinfo_encryption_alg_values_supported"

    .line 100
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 103
    const-string v0, "userinfo_encryption_enc_values_supported"

    .line 104
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 107
    const-string v0, "request_object_signing_alg_values_supported"

    .line 108
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 111
    const-string v0, "request_object_encryption_alg_values_supported"

    .line 112
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 115
    const-string v0, "request_object_encryption_enc_values_supported"

    .line 116
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 119
    const-string v0, "token_endpoint_auth_methods_supported"

    const-string v1, "client_secret_basic"

    .line 121
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_METHODS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 124
    const-string v0, "token_endpoint_auth_signing_alg_values_supported"

    .line 125
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 128
    const-string v0, "display_values_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->DISPLAY_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 131
    const-string v0, "claim_types_supported"

    const-string v1, "normal"

    .line 132
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIM_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 135
    const-string v0, "claims_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 138
    const-string v0, "service_documentation"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SERVICE_DOCUMENTATION:Lnet/openid/appauth/JsonUtil$UriField;

    .line 141
    const-string v0, "claims_locales_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 144
    const-string v0, "ui_locales_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->UI_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 147
    const-string v0, "claims_parameter_supported"

    .line 148
    invoke-static {v0, v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    .line 151
    const-string v0, "request_parameter_supported"

    .line 152
    invoke-static {v0, v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    .line 155
    const-string v0, "request_uri_parameter_supported"

    .line 156
    invoke-static {v0, v4}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_URI_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    .line 159
    const-string v0, "require_request_uri_registration"

    .line 160
    invoke-static {v0, v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUIRE_REQUEST_URI_REGISTRATION:Lnet/openid/appauth/JsonUtil$BooleanField;

    .line 163
    const-string v0, "op_policy_uri"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_POLICY_URI:Lnet/openid/appauth/JsonUtil$UriField;

    .line 166
    const-string v0, "op_tos_uri"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_TOS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    .line 171
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ISSUER:Lnet/openid/appauth/JsonUtil$StringField;

    iget-object v1, v1, Lnet/openid/appauth/JsonUtil$StringField;->key:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    iget-object v1, v1, Lnet/openid/appauth/JsonUtil$UriField;->key:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->JWKS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    iget-object v1, v1, Lnet/openid/appauth/JsonUtil$UriField;->key:Ljava/lang/String;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    iget-object v2, v2, Lnet/openid/appauth/JsonUtil$StringListField;->key:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SUBJECT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    iget-object v2, v2, Lnet/openid/appauth/JsonUtil$StringListField;->key:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    iget-object v2, v2, Lnet/openid/appauth/JsonUtil$StringListField;->key:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->MANDATORY_METADATA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "discoveryDoc"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    .line 194
    sget-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->MANDATORY_METADATA:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, "mandatory":Ljava/lang/String;
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 196
    :cond_1
    new-instance v1, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;

    invoke-direct {v1, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v0    # "mandatory":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 627
    new-instance v0, Lnet/openid/appauth/JsonUtil$BooleanField;

    invoke-direct {v0, p0, p1}, Lnet/openid/appauth/JsonUtil$BooleanField;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/openid/appauth/JsonUtil$Field",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "field":Lnet/openid/appauth/JsonUtil$Field;, "Lnet/openid/appauth/JsonUtil$Field<TT;>;"
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lnet/openid/appauth/JsonUtil;->get(Lorg/json/JSONObject;Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/openid/appauth/JsonUtil$ListField",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "field":Lnet/openid/appauth/JsonUtil$ListField;, "Lnet/openid/appauth/JsonUtil$ListField<TT;>;"
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lnet/openid/appauth/JsonUtil;->get(Lorg/json/JSONObject;Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static str(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringField;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 599
    new-instance v0, Lnet/openid/appauth/JsonUtil$StringField;

    invoke-direct {v0, p0}, Lnet/openid/appauth/JsonUtil$StringField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 613
    new-instance v0, Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {v0, p0}, Lnet/openid/appauth/JsonUtil$StringListField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/JsonUtil$StringListField;"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, "defaults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {v0, p0, p1}, Lnet/openid/appauth/JsonUtil$StringListField;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private static uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 606
    new-instance v0, Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {v0, p0}, Lnet/openid/appauth/JsonUtil$UriField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAcrValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ACR_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationEndpoint()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 257
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getClaimTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIM_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClaimsLocalesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClaimsSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayValuesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->DISPLAY_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGrantTypesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->GRANT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdTokenEncryptionAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdTokenEncryptionEncodingValuesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdTokenSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 246
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ISSUER:Lnet/openid/appauth/JsonUtil$StringField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getJwksUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 289
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->JWKS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getOpPolicyUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 584
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_POLICY_URI:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getOpTosUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 592
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_TOS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getRegistrationEndpoint()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 300
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getRequestObjectEncryptionAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestObjectEncryptionEncodingValuesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestObjectSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseModesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_MODES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScopesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SCOPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServiceDocumentation()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 514
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SERVICE_DOCUMENTATION:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getSubjectTypesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SUBJECT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTokenEndpoint()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getTokenEndpointAuthMethodsSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_METHODS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTokenEndpointAuthSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUiLocalesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->UI_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserinfoEncryptionAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserinfoEncryptionEncodingValuesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserinfoEndpoint()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 279
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getUserinfoSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isClaimsParameterSupported()Z
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRequestParameterSupported()Z
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRequestUriParameterSupported()Z
    .locals 1

    .prologue
    .line 566
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_URI_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public requireRequestUriRegistration()Z
    .locals 1

    .prologue
    .line 576
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUIRE_REQUEST_URI_REGISTRATION:Lnet/openid/appauth/JsonUtil$BooleanField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
