.class public final Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
.super Ljava/lang/Object;
.source "JniInputBundle.java"


# static fields
.field private static final STRING_TERMINATOR:[B


# instance fields
.field private final mBuffer:Ljava/io/ByteArrayOutputStream;

.field private final mWriter:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->STRING_TERMINATOR:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mBuffer:Ljava/io/ByteArrayOutputStream;

    .line 23
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    .line 24
    return-void
.end method


# virtual methods
.method public marshall()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 83
    return-object v0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeFloat(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeInts([I)V
    .locals 3
    .param p1, "values"    # [I

    .prologue
    .line 35
    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 36
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 37
    .local v0, "value":I
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "value":I
    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 66
    .local v0, "array":[B
    array-length v2, v0

    sget-object v3, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->STRING_TERMINATOR:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 69
    iget-object v2, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    sget-object v3, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->STRING_TERMINATOR:[B

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeStrings(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 59
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method
