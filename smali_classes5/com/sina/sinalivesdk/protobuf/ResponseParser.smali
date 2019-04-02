.class public Lcom/sina/sinalivesdk/protobuf/ResponseParser;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJosnString(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->needUnzip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v1

    const-string v2, "ResponseParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parseData, size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", zipped:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseArray(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;I)[Ljava/lang/Object;
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    add-int v4, v2, p1

    if-ge v3, v4, :cond_1

    invoke-static {p0, v0}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseValue(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readTag()I

    move-result v6

    invoke-static {v6}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->getTagWireType(I)I

    move-result v7

    invoke-static {v6}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    add-int v3, v2, p1

    if-ge v0, v3, :cond_1

    invoke-static {p0, v4, v5}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseStructInArray(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static parseBody(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/protobuf/CodedInputStream;",
            "Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->isPipeLine()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->needUnzip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseZippedKVPair(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseKVPair(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->needUnzip()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseZippedKVPair(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseKVPair(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseHeader(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;
    .locals 2

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseKVPair(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method private static parseKVPair(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/protobuf/CodedInputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    add-int v4, v2, v1

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readTag()I

    move-result v3

    invoke-static {v3}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    invoke-static {v3}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v4}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseValue(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static parseStructInArray(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/protobuf/CodedInputStream;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseValue(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static parseValue(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;I)Ljava/lang/Object;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid proto buffer, invalid wire type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseKVPair(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseArray(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readFixed16()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static parseZippedKVPair(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/protobuf/CodedInputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v2

    const-string v3, "ResponseParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parseData, size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", zipped:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/sina/sinalivesdk/protobuf/CodedInputStream;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readTag()I

    move-result v2

    invoke-static {v2}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    invoke-static {v2}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v3}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseValue(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
