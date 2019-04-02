.class Lnet/openid/appauth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final INITIAL_READ_BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 35
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v4, 0x400

    new-array v1, v4, [C

    .line 36
    .local v1, "buffer":[C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .local v2, "readCount":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 39
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
