.class public Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;
.super Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public computeSize(Z)I
    .locals 2

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->isAssignedValue:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->fieldNumber:I

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeTag()I
    .locals 2

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->fieldNumber:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->isAssignedValue:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->fieldNumber:I

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_0
.end method
