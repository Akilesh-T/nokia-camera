.class public final Lcom/drew/metadata/StringValue;
.super Ljava/lang/Object;
.source "StringValue.java"


# instance fields
.field private final _bytes:[B
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private final _charset:Ljava/nio/charset/Charset;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 0
    .param p1, "bytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/drew/metadata/StringValue;->_bytes:[B

    .line 43
    iput-object p2, p0, Lcom/drew/metadata/StringValue;->_charset:Ljava/nio/charset/Charset;

    .line 44
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/drew/metadata/StringValue;->_bytes:[B

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/drew/metadata/StringValue;->_charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/drew/metadata/StringValue;->_charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/drew/metadata/StringValue;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/drew/metadata/StringValue;->_bytes:[B

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/drew/metadata/StringValue;->_bytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
