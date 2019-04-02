.class public Lnet/openid/appauth/CodeVerifierUtil;
.super Ljava/lang/Object;
.source "CodeVerifierUtil.java"


# static fields
.field public static final DEFAULT_CODE_VERIFIER_ENTROPY:I = 0x40

.field public static final MAX_CODE_VERIFIER_ENTROPY:I = 0x60

.field public static final MAX_CODE_VERIFIER_LENGTH:I = 0x80

.field public static final MIN_CODE_VERIFIER_ENTROPY:I = 0x20

.field public static final MIN_CODE_VERIFIER_LENGTH:I = 0x2b

.field private static final PKCE_BASE64_ENCODE_SETTINGS:I = 0xb

.field private static final REGEX_CODE_VERIFIER:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "^[0-9a-zA-Z\\-\\.\\_\\~]{43,128}$"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/CodeVerifierUtil;->REGEX_CODE_VERIFIER:Ljava/util/regex/Pattern;

    .line 85
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCodeVerifier(Ljava/lang/String;)V
    .locals 4
    .param p0, "codeVerifier"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    const/16 v0, 0x2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "codeVerifier length is shorter than allowed by the PKCE specification"

    invoke-static {v0, v3}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x80

    if-gt v0, v3, :cond_1

    :goto_1
    const-string v0, "codeVerifier length is longer than allowed by the PKCE specification"

    invoke-static {v1, v0}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 101
    sget-object v0, Lnet/openid/appauth/CodeVerifierUtil;->REGEX_CODE_VERIFIER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "codeVerifier string contains illegal characters"

    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 103
    return-void

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    :cond_1
    move v1, v2

    .line 99
    goto :goto_1
.end method

.method public static deriveCodeVerifierChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "codeVerifier"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 143
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 144
    .local v2, "sha256Digester":Ljava/security/MessageDigest;
    const-string v3, "ISO_8859_1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 146
    .local v0, "digestBytes":[B
    const/16 v3, 0xb

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 149
    .end local v0    # "digestBytes":[B
    .end local v2    # "sha256Digester":Ljava/security/MessageDigest;
    .end local p0    # "codeVerifier":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 147
    .restart local p0    # "codeVerifier":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "SHA-256 is not supported on this device! Using plain challenge"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lnet/openid/appauth/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "ISO-8859-1 encoding not supported on this device!"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lnet/openid/appauth/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "ISO-8859-1 encoding not supported"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static generateRandomCodeVerifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lnet/openid/appauth/CodeVerifierUtil;->generateRandomCodeVerifier(Ljava/security/SecureRandom;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateRandomCodeVerifier(Ljava/security/SecureRandom;I)Ljava/lang/String;
    .locals 5
    .param p0, "entropySource"    # Ljava/security/SecureRandom;
    .param p1, "entropyBytes"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    const-string v1, "entropySource cannot be null"

    invoke-static {p0, v1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/16 v1, 0x20

    if-gt v1, p1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "entropyBytes is less than the minimum permitted"

    invoke-static {v1, v4}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 128
    const/16 v1, 0x60

    if-gt p1, v1, :cond_1

    :goto_1
    const-string v1, "entropyBytes is greater than the maximum permitted"

    invoke-static {v2, v1}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 130
    new-array v0, p1, [B

    .line 131
    .local v0, "randomBytes":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 132
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "randomBytes":[B
    :cond_0
    move v1, v3

    .line 126
    goto :goto_0

    :cond_1
    move v2, v3

    .line 128
    goto :goto_1
.end method

.method public static getCodeVerifierChallengeMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 165
    const-string v1, "S256"
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-object v1

    .line 166
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 167
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "plain"

    goto :goto_0
.end method
