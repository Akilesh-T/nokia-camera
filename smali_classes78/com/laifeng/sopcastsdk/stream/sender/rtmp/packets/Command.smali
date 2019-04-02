.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;
.super Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;
.source "Command.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Command"


# instance fields
.field private commandName:Ljava/lang/String;

.field private transactionId:I


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "transactionId"    # I

    .prologue
    .line 33
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_0_FULL:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    const/4 v2, 0x3

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->COMMAND_AMF0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    invoke-direct {v0, v1, v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;)V

    invoke-direct {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 34
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->commandName:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->transactionId:I

    .line 36
    return-void
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->commandName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->transactionId:I

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

    .line 57
    invoke-static {p1, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->readStringFrom(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->commandName:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;->readNumberFrom(Ljava/io/InputStream;)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->transactionId:I

    .line 59
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->commandName:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->sizeOf(Ljava/lang/String;Z)I

    move-result v1

    add-int/lit8 v0, v1, 0x9

    .line 60
    .local v0, "bytesRead":I
    invoke-virtual {p0, p1, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->readVariableData(Ljava/io/InputStream;I)V

    .line 61
    return-void
.end method

.method public setCommandName(Ljava/lang/String;)V
    .locals 0
    .param p1, "commandName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->commandName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTransactionId(I)V
    .locals 0
    .param p1, "transactionId"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->transactionId:I

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTMP Command (command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->commandName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transaction ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->transactionId:I

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
    .line 65
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->commandName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->writeStringTo(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 66
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->transactionId:I

    int-to-double v0, v0

    invoke-static {p1, v0, v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;->writeNumberTo(Ljava/io/OutputStream;D)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->writeVariableData(Ljava/io/OutputStream;)V

    .line 69
    return-void
.end method
