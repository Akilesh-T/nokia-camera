.class public final Lcom/drew/metadata/iptc/Iso2022Converter;
.super Ljava/lang/Object;
.source "Iso2022Converter.java"


# static fields
.field private static final DOT:I = 0xe280a2

.field private static final ESC:B = 0x1bt

.field private static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field private static final LATIN_CAPITAL_A:B = 0x41t

.field private static final LATIN_CAPITAL_G:B = 0x47t

.field private static final PERCENT_SIGN:B = 0x25t

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertISO2022CharsetToJavaCharset([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v6, 0x1b

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 51
    array-length v0, p0

    if-le v0, v2, :cond_0

    aget-byte v0, p0, v3

    if-ne v0, v6, :cond_0

    aget-byte v0, p0, v4

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    aget-byte v0, p0, v2

    const/16 v1, 0x47

    if-ne v0, v1, :cond_0

    .line 52
    const-string v0, "UTF-8"

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    array-length v0, p0

    if-le v0, v5, :cond_1

    aget-byte v0, p0, v3

    if-ne v0, v6, :cond_1

    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const v1, 0xe280a2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_1

    .line 55
    const-string v0, "ISO-8859-1"

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static guessCharSet([B)Ljava/nio/charset/Charset;
    .locals 9
    .param p0, "bytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 83
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "UTF-8"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "file.encoding"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "ISO-8859-1"

    aput-object v8, v4, v7

    .line 85
    .local v4, "encodings":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    .line 87
    .local v3, "encoding":Ljava/lang/String;
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 88
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 91
    .local v2, "cs":Ljava/nio/charset/CharsetDecoder;
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    .end local v2    # "cs":Ljava/nio/charset/CharsetDecoder;
    .end local v3    # "encoding":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 93
    .restart local v1    # "charset":Ljava/nio/charset/Charset;
    .restart local v2    # "cs":Ljava/nio/charset/CharsetDecoder;
    .restart local v3    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    .end local v2    # "cs":Ljava/nio/charset/CharsetDecoder;
    .end local v3    # "encoding":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method
