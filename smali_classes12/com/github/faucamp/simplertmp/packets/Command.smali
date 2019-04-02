.class public Lcom/github/faucamp/simplertmp/packets/Command;
.super Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;
.source "Command.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Command"


# instance fields
.field private commandName:Ljava/lang/String;

.field private transactionId:I


# direct methods
.method public constructor <init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "transactionId"    # I

    .prologue
    .line 39
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_0_FULL:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    const/4 v2, 0x3

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->COMMAND_AMF0:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;ILcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)V

    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 40
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/packets/Command;->commandName:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/github/faucamp/simplertmp/packets/Command;->transactionId:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V
    .locals 4
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "transactionId"    # I
    .param p3, "channelInfo"    # Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    .prologue
    .line 33
    new-instance v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->COMMAND_AMF0:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-virtual {p3, v0}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->canReusePrevHeaderTx(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_1_RELATIVE_LARGE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    :goto_0
    const/4 v2, 0x3

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->COMMAND_AMF0:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-direct {v1, v0, v2, v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;ILcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)V

    invoke-direct {p0, v1}, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 34
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/packets/Command;->commandName:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/github/faucamp/simplertmp/packets/Command;->transactionId:I

    .line 36
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_0_FULL:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    goto :goto_0
.end method


# virtual methods
.method protected array()[B
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/Command;->commandName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/Command;->transactionId:I

    return v0
.end method

.method public readBody(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-static {p1, v4}, Lcom/github/faucamp/simplertmp/amf/AmfString;->readStringFrom(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/faucamp/simplertmp/packets/Command;->commandName:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->readNumberFrom(Ljava/io/InputStream;)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/github/faucamp/simplertmp/packets/Command;->transactionId:I

    .line 65
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/packets/Command;->commandName:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/github/faucamp/simplertmp/amf/AmfString;->sizeOf(Ljava/lang/String;Z)I

    move-result v1

    add-int/lit8 v0, v1, 0x9

    .line 66
    .local v0, "bytesRead":I
    invoke-virtual {p0, p1, v0}, Lcom/github/faucamp/simplertmp/packets/Command;->readVariableData(Ljava/io/InputStream;I)V

    .line 67
    return-void
.end method

.method public setCommandName(Ljava/lang/String;)V
    .locals 0
    .param p1, "commandName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/packets/Command;->commandName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTransactionId(I)V
    .locals 0
    .param p1, "transactionId"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/Command;->transactionId:I

    .line 58
    return-void
.end method

.method protected size()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTMP Command (command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/faucamp/simplertmp/packets/Command;->commandName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transaction ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/faucamp/simplertmp/packets/Command;->transactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeBody(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/Command;->commandName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/github/faucamp/simplertmp/amf/AmfString;->writeStringTo(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 72
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/Command;->transactionId:I

    int-to-double v0, v0

    invoke-static {p1, v0, v1}, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->writeNumberTo(Ljava/io/OutputStream;D)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/github/faucamp/simplertmp/packets/Command;->writeVariableData(Ljava/io/OutputStream;)V

    .line 75
    return-void
.end method
