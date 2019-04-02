.class public Lcom/android/camera/effect/download/HMACSHA1;
.super Ljava/lang/Object;
.source "HMACSHA1.java"


# static fields
.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final MAC_NAME:Ljava/lang/String; = "HmacSHA1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HmacSHA1Encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "encryptText"    # Ljava/lang/String;
    .param p1, "encryptKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 40
    .local v0, "data":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "HmacSHA1"

    invoke-direct {v2, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 42
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 44
    .local v1, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 46
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 48
    .local v3, "text":[B
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    return-object v4
.end method
