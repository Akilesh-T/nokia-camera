.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;
.super Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
.source "UserControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private eventData:[I

.field private type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 159
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_0_FULL:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    const/4 v2, 0x2

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->USER_CONTROL_MESSAGE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    invoke-direct {v0, v1, v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;)V

    invoke-direct {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;)V
    .locals 1
    .param p1, "replyToPing"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;

    .prologue
    .line 164
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;->PONG_REPLY:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    invoke-direct {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;)V

    .line 165
    iget-object v0, p1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->eventData:[I

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->eventData:[I

    .line 166
    return-void
.end method


# virtual methods
.method public getEventData()[I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->eventData:[I

    return-object v0
.end method

.method public getFirstEventData()I
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->eventData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getType()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    return-object v0
.end method

.method public readBody(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt16(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;->valueOf(I)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    move-result-object v1

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    .line 214
    const/4 v0, 0x2

    .line 216
    .local v0, "bytesRead":I
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    sget-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;->SET_BUFFER_LENGTH:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    if-ne v1, v2, :cond_0

    .line 217
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->setEventData(II)V

    .line 218
    add-int/lit8 v0, v0, 0x8

    .line 224
    :goto_0
    sget-boolean v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->header:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->getPacketLength()I

    move-result v1

    if-eq v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 220
    :cond_0
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->setEventData(I)V

    .line 221
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method

.method public setEventData(I)V
    .locals 2
    .param p1, "eventData"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;->SET_BUFFER_LENGTH:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    if-ne v0, v1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SET_BUFFER_LENGTH requires two event data values; use setEventData(int, int) instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->eventData:[I

    .line 200
    return-void
.end method

.method public setEventData(II)V
    .locals 3
    .param p1, "streamId"    # I
    .param p2, "bufferLength"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;->SET_BUFFER_LENGTH:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    if-eq v0, v1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User control type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires only one event data value; use setEventData(int) instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->eventData:[I

    .line 208
    return-void
.end method

.method public setType(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTMP User Control (type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->eventData:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 230
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;->getIntValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt16(Ljava/io/OutputStream;I)V

    .line 232
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->eventData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 233
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->type:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;->SET_BUFFER_LENGTH:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->eventData:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 236
    :cond_0
    return-void
.end method
