.class public Lcom/adobe/xmp/impl/Latin1Converter;
.super Ljava/lang/Object;


# static fields
.field private static final STATE_START:I = 0x0

.field private static final STATE_UTF8CHAR:I = 0xb


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/adobe/xmp/impl/ByteBuffer;
    .locals 12

    const/16 v11, 0x80

    const/16 v5, 0xb

    const/16 v10, 0x8

    const/4 v1, 0x0

    const-string v0, "UTF-8"

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-array v9, v10, [B

    new-instance v7, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-direct {v7, v0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(I)V

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->charAt(I)I

    move-result v8

    packed-switch v2, :pswitch_data_0

    const/16 v6, 0x7f

    if-ge v8, v6, :cond_0

    int-to-byte v6, v8

    invoke-virtual {v7, v6}, Lcom/adobe/xmp/impl/ByteBuffer;->append(B)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0xc0

    if-lt v8, v6, :cond_2

    const/4 v3, -0x1

    move v2, v8

    :goto_2
    if-ge v3, v10, :cond_1

    and-int/lit16 v6, v2, 0x80

    if-ne v6, v11, :cond_1

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v4, 0x1

    int-to-byte v6, v8

    aput-byte v6, v9, v4

    move v4, v2

    move v2, v5

    goto :goto_1

    :cond_2
    int-to-byte v6, v8

    invoke-static {v6}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    goto :goto_1

    :pswitch_0
    if-lez v3, :cond_3

    and-int/lit16 v6, v8, 0xc0

    if-ne v6, v11, :cond_3

    add-int/lit8 v6, v4, 0x1

    int-to-byte v8, v8

    aput-byte v8, v9, v4

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_7

    invoke-virtual {v7, v9, v1, v6}, Lcom/adobe/xmp/impl/ByteBuffer;->append([BII)V

    move v2, v1

    move v4, v1

    goto :goto_1

    :cond_3
    aget-byte v2, v9, v1

    invoke-static {v2}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    sub-int/2addr v0, v4

    move v2, v1

    move v4, v1

    goto :goto_1

    :cond_4
    if-ne v2, v5, :cond_5

    :goto_3
    if-ge v1, v4, :cond_5

    aget-byte v0, v9, v1

    invoke-static {v0}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move-object p0, v7

    :cond_6
    return-object p0

    :cond_7
    move v4, v6

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToUTF8(B)[B
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    const-string v2, "cp1252"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    new-array v0, v4, [B

    aput-byte p0, v0, v3

    goto :goto_0
.end method
