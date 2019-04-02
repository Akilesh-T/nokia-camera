.class public Lcom/pedro/rtsp/utils/AuthUtil;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# static fields
.field private static hexArray:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pedro/rtsp/utils/AuthUtil;->hexArray:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 26
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 28
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 29
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 30
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/pedro/rtsp/utils/AuthUtil;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 31
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/pedro/rtsp/utils/AuthUtil;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static getMd5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "buffer"    # Ljava/lang/String;

    .prologue
    .line 18
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 19
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/pedro/rtsp/utils/AuthUtil;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 22
    .end local v0    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    .line 20
    :catch_0
    move-exception v1

    .line 22
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 20
    :catch_1
    move-exception v1

    goto :goto_1
.end method
