.class public Lcom/jmatio/io/MatFileIncrementalWriter;
.super Ljava/lang/Object;


# instance fields
.field private channel:Ljava/nio/channels/WritableByteChannel;

.field private headerWritten:Z

.field private isStillValid:Z

.field private varNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jmatio/io/MatFileIncrementalWriter;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/jmatio/io/MatFileIncrementalWriter;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    iput-boolean v1, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->headerWritten:Z

    iput-boolean v1, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->isStillValid:Z

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->varNames:Ljava/util/Set;

    iput-object p1, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->isStillValid:Z

    return-void
.end method

.method private writeDimensions(Ljava/io/DataOutputStream;Lcom/jmatio/types/MLArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->getDimensions()[I

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/jmatio/io/OSArrayTag;-><init>(I[B)V

    invoke-virtual {v0, p1}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method private writeFlags(Ljava/io/DataOutputStream;Lcom/jmatio/types/MLArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->isSparse()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p2, Lcom/jmatio/types/MLSparse;

    invoke-virtual {p2}, Lcom/jmatio/types/MLSparse;->getMaxNZ()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    new-instance v1, Lcom/jmatio/io/OSArrayTag;

    const/4 v2, 0x6

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jmatio/io/OSArrayTag;-><init>(I[B)V

    invoke-virtual {v1, p1}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method private writeHeader(Ljava/nio/channels/WritableByteChannel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/jmatio/io/MatFileHeader;->createHeader()Lcom/jmatio/io/MatFileHeader;

    move-result-object v1

    const/16 v2, 0x74

    new-array v2, v2, [C

    invoke-virtual {v1}, Lcom/jmatio/io/MatFileHeader;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1}, Lcom/jmatio/io/MatFileHeader;->getEndianIndicator()[B

    move-result-object v3

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    array-length v5, v3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    aget-char v5, v2, v0

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Lcom/jmatio/io/MatFileHeader;->getVersion()I

    move-result v0

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-interface {p1, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->headerWritten:Z

    return-void
.end method

.method private writeMatrix(Ljava/io/DataOutputStream;Lcom/jmatio/types/MLArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v10, 0x9

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v3, p2}, Lcom/jmatio/io/MatFileIncrementalWriter;->writeFlags(Ljava/io/DataOutputStream;Lcom/jmatio/types/MLArray;)V

    invoke-direct {p0, v3, p2}, Lcom/jmatio/io/MatFileIncrementalWriter;->writeDimensions(Ljava/io/DataOutputStream;Lcom/jmatio/types/MLArray;)V

    invoke-direct {p0, v3, p2}, Lcom/jmatio/io/MatFileIncrementalWriter;->writeName(Ljava/io/DataOutputStream;Lcom/jmatio/types/MLArray;)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/jmatio/io/MatlabIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write matrix of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/jmatio/types/MLArray;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jmatio/io/MatlabIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast p2, Lcom/jmatio/types/MLChar;

    invoke-virtual {p2}, Lcom/jmatio/types/MLChar;->exportChar()[Ljava/lang/Character;

    move-result-object v6

    move v0, v1

    :goto_0
    array-length v1, v6

    if-ge v0, v1, :cond_0

    aget-object v1, v6, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    const/16 v1, 0x10

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/jmatio/io/OSArrayTag;-><init>(I[B)V

    invoke-virtual {v0, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    :cond_1
    :goto_1
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void

    :pswitch_2
    new-instance v1, Lcom/jmatio/io/OSArrayTag;

    move-object v0, p2

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v1, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    check-cast p2, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {p2}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v0, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    goto :goto_1

    :pswitch_3
    new-instance v1, Lcom/jmatio/io/OSArrayTag;

    move-object v0, p2

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v1, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    check-cast p2, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {p2}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v0, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    goto :goto_1

    :pswitch_4
    new-instance v1, Lcom/jmatio/io/OSArrayTag;

    move-object v0, p2

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v1, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    check-cast p2, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {p2}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v0, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    goto :goto_1

    :pswitch_5
    new-instance v1, Lcom/jmatio/io/OSArrayTag;

    move-object v0, p2

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v1, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    check-cast p2, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {p2}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v0, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    goto/16 :goto_1

    :pswitch_6
    new-instance v1, Lcom/jmatio/io/OSArrayTag;

    const/16 v4, 0xc

    move-object v0, p2

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v1, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    const/16 v1, 0xc

    check-cast p2, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {p2}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v0, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    goto/16 :goto_1

    :pswitch_7
    new-instance v1, Lcom/jmatio/io/OSArrayTag;

    const/16 v4, 0xd

    move-object v0, p2

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v1, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    const/16 v1, 0xd

    check-cast p2, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {p2}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v0, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    goto/16 :goto_1

    :pswitch_8
    const v0, 0x40005

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object v0, p2

    check-cast v0, Lcom/jmatio/types/MLStructure;

    invoke-virtual {v0}, Lcom/jmatio/types/MLStructure;->getMaxFieldLenth()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance v1, Lcom/jmatio/io/OSArrayTag;

    move-object v0, p2

    check-cast v0, Lcom/jmatio/types/MLStructure;

    invoke-virtual {v0}, Lcom/jmatio/types/MLStructure;->getKeySetToByteArray()[B

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/jmatio/io/OSArrayTag;-><init>(I[B)V

    invoke-virtual {v1, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    check-cast p2, Lcom/jmatio/types/MLStructure;

    invoke-virtual {p2}, Lcom/jmatio/types/MLStructure;->getAllFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLArray;

    invoke-direct {p0, v3, v0}, Lcom/jmatio/io/MatFileIncrementalWriter;->writeMatrix(Ljava/io/DataOutputStream;Lcom/jmatio/types/MLArray;)V

    goto :goto_2

    :pswitch_9
    check-cast p2, Lcom/jmatio/types/MLCell;

    invoke-virtual {p2}, Lcom/jmatio/types/MLCell;->cells()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLArray;

    invoke-direct {p0, v3, v0}, Lcom/jmatio/io/MatFileIncrementalWriter;->writeMatrix(Ljava/io/DataOutputStream;Lcom/jmatio/types/MLArray;)V

    goto :goto_3

    :pswitch_a
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, p2

    check-cast v0, Lcom/jmatio/types/MLSparse;

    invoke-virtual {v0}, Lcom/jmatio/types/MLSparse;->getIR()[I

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_4
    if-ge v0, v7, :cond_2

    aget v8, v6, v0

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    const/4 v5, 0x5

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v5, v4}, Lcom/jmatio/io/OSArrayTag;-><init>(I[B)V

    invoke-virtual {v0, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, p2

    check-cast v0, Lcom/jmatio/types/MLSparse;

    invoke-virtual {v0}, Lcom/jmatio/types/MLSparse;->getJC()[I

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_5
    if-ge v0, v7, :cond_3

    aget v8, v6, v0

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3
    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    const/4 v5, 0x5

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v5, v4}, Lcom/jmatio/io/OSArrayTag;-><init>(I[B)V

    invoke-virtual {v0, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, p2

    check-cast v0, Lcom/jmatio/types/MLSparse;

    invoke-virtual {v0}, Lcom/jmatio/types/MLSparse;->exportReal()[Ljava/lang/Double;

    move-result-object v6

    move v0, v1

    :goto_6
    array-length v7, v6

    if-ge v0, v7, :cond_4

    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/io/DataOutputStream;->writeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4
    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v10, v4}, Lcom/jmatio/io/OSArrayTag;-><init>(I[B)V

    invoke-virtual {v0, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast p2, Lcom/jmatio/types/MLSparse;

    invoke-virtual {p2}, Lcom/jmatio/types/MLSparse;->exportImaginary()[Ljava/lang/Double;

    move-result-object v5

    :goto_7
    array-length v6, v5

    if-ge v1, v6, :cond_5

    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_5
    new-instance v1, Lcom/jmatio/io/OSArrayTag;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/jmatio/io/OSArrayTag;-><init>(I[B)V

    invoke-virtual {v1, v3}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private writeName(Ljava/io/DataOutputStream;Lcom/jmatio/types/MLArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Lcom/jmatio/types/MLArray;->getNameToByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v0, Lcom/jmatio/io/OSArrayTag;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/jmatio/io/OSArrayTag;-><init>(I[B)V

    invoke-virtual {v0, p1}, Lcom/jmatio/io/OSArrayTag;->writeTo(Ljava/io/DataOutputStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(Lcom/jmatio/types/MLArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/jmatio/types/MLArray;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->varNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " specified more than once for file input."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->headerWritten:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-direct {p0, v0}, Lcom/jmatio/io/MatFileIncrementalWriter;->writeHeader(Ljava/nio/channels/WritableByteChannel;)V

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v1, p1}, Lcom/jmatio/io/MatFileIncrementalWriter;->writeMatrix(Ljava/io/DataOutputStream;Lcom/jmatio/types/MLArray;)V

    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1}, Ljava/util/zip/Deflater;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v4, v2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized write(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/jmatio/types/MLArray;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLArray;

    invoke-virtual {p0, v0}, Lcom/jmatio/io/MatFileIncrementalWriter;->write(Lcom/jmatio/types/MLArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/jmatio/io/MatFileIncrementalWriter;->isStillValid:Z

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void
.end method
