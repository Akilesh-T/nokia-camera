.class public Lcom/github/faucamp/simplertmp/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Crypto"


# instance fields
.field private hmacSHA256:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_0
    const-string v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/github/faucamp/simplertmp/Crypto;->hmacSHA256:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "Crypto"

    const-string v2, "Security exception when getting HMAC"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 31
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 32
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "Crypto"

    const-string v2, "HMAC SHA256 does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public calculateHmacSHA256([B[B)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "key"    # [B

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, "output":[B
    :try_start_0
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/Crypto;->hmacSHA256:Ljavax/crypto/Mac;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "HmacSHA256"

    invoke-direct {v3, p2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 48
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/Crypto;->hmacSHA256:Ljavax/crypto/Mac;

    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "Crypto"

    const-string v3, "Invalid key"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public calculateHmacSHA256([B[BI)[B
    .locals 6
    .param p1, "input"    # [B
    .param p2, "key"    # [B
    .param p3, "length"    # I

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, "output":[B
    :try_start_0
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/Crypto;->hmacSHA256:Ljavax/crypto/Mac;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v4, 0x0

    const-string v5, "HmacSHA256"

    invoke-direct {v3, p2, v4, p3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 67
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/Crypto;->hmacSHA256:Ljavax/crypto/Mac;

    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "Crypto"

    const-string v3, "Invalid key"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
