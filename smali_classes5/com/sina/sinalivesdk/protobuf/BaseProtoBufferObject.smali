.class public abstract Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/protobuf/IProtoBufferNode;


# instance fields
.field public fieldName:Ljava/lang/String;

.field public fieldNumber:I

.field public isAssignedValue:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;->fieldNumber:I

    iput-object p2, p0, Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;->fieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public computeSize(Z)I
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;->isAssignedValue:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;->fieldNumber:I

    invoke-static {v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;->getFields()[Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;

    move-result-object v5

    array-length v6, v5

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    invoke-static {v6}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v1, v2

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v3, v5, v2

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;->makeTag()I

    move-result v3

    invoke-static {v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    array-length v2, v5

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;->computeSize(Z)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v4

    :cond_2
    return v0
.end method

.method protected abstract getFields()[Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;
.end method

.method protected setValue()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;->isAssignedValue:Z

    return-void
.end method

.method public write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;->isAssignedValue:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;->getFields()[Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/sina/sinalivesdk/protobuf/BaseProtoBufferObject;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
