.class public Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;
.super Ljava/lang/Object;
.source "LocalSender.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/sender/Sender;


# static fields
.field private static mBuffer:Ljava/io/BufferedOutputStream;


# instance fields
.field private mOutStream:Ljava/io/FileOutputStream;

.field private mTestFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "type"    # I

    .prologue
    .line 46
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mBuffer:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mBuffer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 49
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mBuffer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "sdcardPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/SopCast.flv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mTestFile:Ljava/io/File;

    .line 31
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mTestFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mTestFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 36
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mTestFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 37
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mTestFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mOutStream:Ljava/io/FileOutputStream;

    .line 38
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mOutStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mBuffer:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mBuffer:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mBuffer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mBuffer:Ljava/io/BufferedOutputStream;

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mOutStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 69
    :try_start_1
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :goto_1
    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mBuffer:Ljava/io/BufferedOutputStream;

    .line 75
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/local/LocalSender;->mOutStream:Ljava/io/FileOutputStream;

    .line 77
    :cond_1
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
