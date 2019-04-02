.class public Lcom/sina/sinalivesdk/protobuf/RequestSet;
.super Ljava/lang/Object;


# instance fields
.field protected listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/sinalivesdk/protobuf/RequestField",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public computeSize()I
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestField;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getFieldNumber()I

    move-result v3

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v3, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_3
    instance-of v4, v0, Lcom/sina/sinalivesdk/protobuf/RequestSet;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestSet;

    invoke-static {v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->computeSize()I

    move-result v0

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_4
    instance-of v4, v0, [B

    if-eqz v4, :cond_5

    check-cast v0, [B

    invoke-static {v3, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_5
    instance-of v4, v0, [I

    if-eqz v4, :cond_6

    check-cast v0, [I

    invoke-static {v3, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32ArraySize(I[I)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    instance-of v4, v0, [J

    if-eqz v4, :cond_7

    check-cast v0, [J

    invoke-static {v3, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt64ArraySize(I[J)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_7
    instance-of v4, v0, [Ljava/lang/String;

    if-eqz v4, :cond_8

    check-cast v0, [Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeStringArraySize(I[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_8
    instance-of v4, v0, [Lcom/sina/sinalivesdk/protobuf/RequestSet;

    if-eqz v4, :cond_c

    check-cast v0, [Lcom/sina/sinalivesdk/protobuf/RequestSet;

    invoke-static {v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    add-int v6, v1, v3

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->getFieldCount()I

    move-result v7

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    invoke-static {v7}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_9

    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->getTag(I)I

    move-result v4

    invoke-static {v4}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_1

    :cond_9
    array-length v4, v0

    move v3, v1

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_a

    aget-object v7, v0, v1

    invoke-virtual {v7}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->computeSizeInArray()I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    invoke-static {v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v6

    add-int/2addr v0, v3

    :goto_3
    move v1, v0

    goto/16 :goto_0

    :cond_b
    return v1

    :cond_c
    move v0, v1

    goto :goto_3
.end method

.method public computeSizeInArray()I
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestField;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getFieldNumber()I

    move-result v3

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_3
    instance-of v4, v0, Lcom/sina/sinalivesdk/protobuf/RequestSet;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestSet;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->computeSize()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_4
    instance-of v4, v0, [B

    if-eqz v4, :cond_5

    check-cast v0, [B

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_5
    instance-of v4, v0, [I

    if-eqz v4, :cond_6

    check-cast v0, [I

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32ArraySizeNoTag([I)I

    move-result v0

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_6
    instance-of v4, v0, [J

    if-eqz v4, :cond_7

    check-cast v0, [J

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt64ArraySizeNoTag([J)I

    move-result v0

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_7
    instance-of v4, v0, [Ljava/lang/String;

    if-eqz v4, :cond_8

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeStringArraySizeNoTag([Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_8
    instance-of v4, v0, [Lcom/sina/sinalivesdk/protobuf/RequestSet;

    if-eqz v4, :cond_c

    check-cast v0, [Lcom/sina/sinalivesdk/protobuf/RequestSet;

    invoke-static {v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    add-int v6, v1, v3

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->getFieldCount()I

    move-result v7

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    invoke-static {v7}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_9

    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->getTag(I)I

    move-result v4

    invoke-static {v4}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_1

    :cond_9
    array-length v4, v0

    move v3, v1

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_a

    aget-object v7, v0, v1

    invoke-virtual {v7}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->computeSizeInArray()I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    invoke-static {v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v6

    add-int/2addr v0, v3

    :goto_3
    move v1, v0

    goto/16 :goto_0

    :cond_b
    return v1

    :cond_c
    move v0, v1

    goto :goto_3
.end method

.method public contains(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestField;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getFieldNumber()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/sina/sinalivesdk/protobuf/RequestField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sina/sinalivesdk/protobuf/RequestField",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestField;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getFieldNumber()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFieldCount()I
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/ByteArrayOutputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;)V

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->flush()V

    return-object v0
.end method

.method public getTag(I)I
    .locals 7

    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestField;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getFieldNumber()I

    move-result v2

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    invoke-static {v2, v5}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-static {v2, v5}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    goto :goto_0

    :cond_3
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_4

    invoke-static {v2, v5}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    goto :goto_0

    :cond_4
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-static {v2, v6}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    goto :goto_0

    :cond_5
    instance-of v3, v0, Lcom/sina/sinalivesdk/protobuf/RequestSet;

    if-eqz v3, :cond_6

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    goto :goto_0

    :cond_6
    instance-of v3, v0, [B

    if-eqz v3, :cond_7

    invoke-static {v2, v6}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    goto :goto_0

    :cond_7
    instance-of v3, v0, [I

    if-eqz v3, :cond_8

    invoke-static {v2, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    goto :goto_0

    :cond_8
    instance-of v3, v0, [J

    if-eqz v3, :cond_9

    invoke-static {v2, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    goto :goto_0

    :cond_9
    instance-of v3, v0, [Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-static {v2, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    goto :goto_0

    :cond_a
    instance-of v0, v0, [Lcom/sina/sinalivesdk/protobuf/RequestSet;

    if-eqz v0, :cond_b

    invoke-static {v2, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    goto :goto_0

    :cond_b
    move v0, v1

    goto :goto_0
.end method

.method public put(Lcom/sina/sinalivesdk/protobuf/RequestField;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/protobuf/RequestField",
            "<*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestField;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getFieldNumber()I

    move-result v2

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getFieldNumber()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/protobuf/RequestField;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/protobuf/RequestField;->setData(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestField;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, [B

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  ,  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;)V
    .locals 6

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestField;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getFieldNumber()I

    move-result v2

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    goto :goto_0

    :cond_1
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32(II)V

    goto :goto_0

    :cond_2
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    goto :goto_0

    :cond_3
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of v3, v0, Lcom/sina/sinalivesdk/protobuf/RequestSet;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestSet;

    invoke-virtual {p1, v2, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStruct(ILcom/sina/sinalivesdk/protobuf/RequestSet;)V

    goto :goto_0

    :cond_5
    instance-of v3, v0, [B

    if-eqz v3, :cond_6

    check-cast v0, [B

    invoke-virtual {p1, v2, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    goto :goto_0

    :cond_6
    instance-of v3, v0, [I

    if-eqz v3, :cond_7

    check-cast v0, [I

    invoke-virtual {p1, v2, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32Array(I[I)V

    goto :goto_0

    :cond_7
    instance-of v3, v0, [J

    if-eqz v3, :cond_8

    check-cast v0, [J

    invoke-virtual {p1, v2, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt64Array(I[J)V

    goto :goto_0

    :cond_8
    instance-of v3, v0, [Ljava/lang/String;

    if-eqz v3, :cond_9

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStringArray(I[Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    instance-of v3, v0, [Lcom/sina/sinalivesdk/protobuf/RequestSet;

    if-eqz v3, :cond_0

    check-cast v0, [Lcom/sina/sinalivesdk/protobuf/RequestSet;

    invoke-virtual {p1, v2, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStructArray(I[Lcom/sina/sinalivesdk/protobuf/RequestSet;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public writeInArray(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;)V
    .locals 4

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/RequestSet;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestField;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/protobuf/RequestField;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    goto :goto_0

    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    goto :goto_0

    :cond_3
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of v2, v0, Lcom/sina/sinalivesdk/protobuf/RequestSet;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/RequestSet;

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStructNoTag(Lcom/sina/sinalivesdk/protobuf/RequestSet;)V

    goto :goto_0

    :cond_5
    instance-of v2, v0, [B

    if-eqz v2, :cond_6

    check-cast v0, [B

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    goto :goto_0

    :cond_6
    instance-of v2, v0, [I

    if-eqz v2, :cond_7

    check-cast v0, [I

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32ArrayNoTag([I)V

    goto :goto_0

    :cond_7
    instance-of v2, v0, [J

    if-eqz v2, :cond_8

    check-cast v0, [J

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt64ArrayNoTag([J)V

    goto :goto_0

    :cond_8
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_9

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStringArrayNoTag([Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    instance-of v2, v0, [Lcom/sina/sinalivesdk/protobuf/RequestSet;

    if-eqz v2, :cond_0

    check-cast v0, [Lcom/sina/sinalivesdk/protobuf/RequestSet;

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStructArrayNoTag([Lcom/sina/sinalivesdk/protobuf/RequestSet;)V

    goto :goto_0

    :cond_a
    return-void
.end method
