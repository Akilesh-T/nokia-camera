.class public Lcom/github/faucamp/simplertmp/amf/AmfDecoder;
.super Ljava/lang/Object;
.source "AmfDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFrom(Ljava/io/InputStream;)Lcom/github/faucamp/simplertmp/amf/AmfData;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v2, v3

    .line 15
    .local v2, "amfTypeByte":B
    invoke-static {v2}, Lcom/github/faucamp/simplertmp/amf/AmfType;->valueOf(B)Lcom/github/faucamp/simplertmp/amf/AmfType;

    move-result-object v1

    .line 18
    .local v1, "amfType":Lcom/github/faucamp/simplertmp/amf/AmfType;
    sget-object v3, Lcom/github/faucamp/simplertmp/amf/AmfDecoder$1;->$SwitchMap$com$github$faucamp$simplertmp$amf$AmfType:[I

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/amf/AmfType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 42
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown/unimplemented AMF data type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 20
    :pswitch_0
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfNumber;-><init>()V

    .line 45
    .local v0, "amfData":Lcom/github/faucamp/simplertmp/amf/AmfData;
    :goto_0
    invoke-interface {v0, p0}, Lcom/github/faucamp/simplertmp/amf/AmfData;->readFrom(Ljava/io/InputStream;)V

    .line 46
    .end local v0    # "amfData":Lcom/github/faucamp/simplertmp/amf/AmfData;
    :goto_1
    return-object v0

    .line 23
    :pswitch_1
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfBoolean;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfBoolean;-><init>()V

    .line 24
    .restart local v0    # "amfData":Lcom/github/faucamp/simplertmp/amf/AmfData;
    goto :goto_0

    .line 26
    .end local v0    # "amfData":Lcom/github/faucamp/simplertmp/amf/AmfData;
    :pswitch_2
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfString;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfString;-><init>()V

    .line 27
    .restart local v0    # "amfData":Lcom/github/faucamp/simplertmp/amf/AmfData;
    goto :goto_0

    .line 29
    .end local v0    # "amfData":Lcom/github/faucamp/simplertmp/amf/AmfData;
    :pswitch_3
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfObject;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfObject;-><init>()V

    .line 30
    .restart local v0    # "amfData":Lcom/github/faucamp/simplertmp/amf/AmfData;
    goto :goto_0

    .line 32
    .end local v0    # "amfData":Lcom/github/faucamp/simplertmp/amf/AmfData;
    :pswitch_4
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    goto :goto_1

    .line 34
    :pswitch_5
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfUndefined;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfUndefined;-><init>()V

    goto :goto_1

    .line 36
    :pswitch_6
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfMap;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfMap;-><init>()V

    .line 37
    .restart local v0    # "amfData":Lcom/github/faucamp/simplertmp/amf/AmfData;
    goto :goto_0

    .line 39
    .end local v0    # "amfData":Lcom/github/faucamp/simplertmp/amf/AmfData;
    :pswitch_7
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfArray;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfArray;-><init>()V

    .line 40
    .restart local v0    # "amfData":Lcom/github/faucamp/simplertmp/amf/AmfData;
    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
