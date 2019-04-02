.class public Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;
.super Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;


# instance fields
.field public value:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public computeSize(Z)I
    .locals 4

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->isAssignedValue:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->fieldNumber:I

    iget-wide v2, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    invoke-static {v0, v2, v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeTag()I
    .locals 2

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->fieldNumber:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    return v0
.end method

.method public setValue(J)V
    .locals 1

    .prologue
    .line 0
    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;->isAssignedValue:Z

    .line 0
    return-void
.end method

.method public write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->fieldNumber:I

    iget-wide v2, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    invoke-virtual {p1, v0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    goto :goto_0
.end method
