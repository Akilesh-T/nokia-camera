.class public final Lcom/sina/sinalivesdk/util/b;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v3

    const/16 v1, 0x31

    aput-char v1, v0, v4

    const/16 v1, 0x32

    aput-char v1, v0, v5

    const/16 v1, 0x33

    aput-char v1, v0, v6

    const/16 v1, 0x34

    aput-char v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v3

    const/16 v1, 0x31

    aput-char v1, v0, v4

    const/16 v1, 0x32

    aput-char v1, v0, v5

    const/16 v1, 0x33

    aput-char v1, v0, v6

    const/16 v1, 0x34

    aput-char v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x46

    aput-char v2, v0, v1

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA1"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
