.class public abstract Lcom/jmatio/types/MLNumericArray;
.super Lcom/jmatio/types/MLArray;

# interfaces
.implements Lcom/jmatio/types/GenericArrayCreator;
.implements Lcom/jmatio/types/ByteStorageSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Lcom/jmatio/types/MLArray;",
        "Lcom/jmatio/types/GenericArrayCreator",
        "<TT;>;",
        "Lcom/jmatio/types/ByteStorageSupport",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private bytes:[B

.field private imaginary:Ljava/nio/ByteBuffer;

.field private real:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/Number;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[TT;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p4, v1, v0

    const/4 v2, 0x1

    array-length v3, p3

    div-int/2addr v3, p4

    aput v3, v1, v2

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/jmatio/types/MLNumericArray;-><init>(Ljava/lang/String;[III)V

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    aget-object v1, p3, v0

    invoke-virtual {p0, v1, v0}, Lcom/jmatio/types/MLNumericArray;->set(Ljava/lang/Number;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jmatio/types/MLArray;-><init>(Ljava/lang/String;[III)V

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->allocate()V

    return-void
.end method

.method private static directByteBufferEquals(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-eq v4, v5, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getByteOffset(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->getBytesAllocated()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected _get(Ljava/nio/ByteBuffer;I)Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I)TT;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/jmatio/types/MLNumericArray;->getByteOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->bytes:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jmatio/types/MLNumericArray;->bytes:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->bytes:[B

    invoke-virtual {p0, v0}, Lcom/jmatio/types/MLNumericArray;->buldFromBytes([B)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method protected _set(Ljava/nio/ByteBuffer;Ljava/lang/Number;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/jmatio/types/MLNumericArray;->getByteOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Lcom/jmatio/types/MLNumericArray;->getByteArray(Ljava/lang/Number;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected allocate()V
    .locals 2

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->getBytesAllocated()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->getBytesAllocated()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jmatio/types/MLNumericArray;->imaginary:Ljava/nio/ByteBuffer;

    :cond_0
    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->getBytesAllocated()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jmatio/types/MLNumericArray;->bytes:[B

    return-void
.end method

.method public contentToString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jmatio/types/MLNumericArray;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->getSize()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    const-string v0, "Cannot display variables with more than 1000 elements."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->getM()I

    move-result v2

    if-ge v0, v2, :cond_3

    const-string v2, "\t"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->getN()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v0, v2}, Lcom/jmatio/types/MLNumericArray;->getReal(II)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->isComplex()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0, v2}, Lcom/jmatio/types/MLNumericArray;->getImaginary(II)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->imaginary:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/jmatio/types/MLNumericArray;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    move-object v0, p1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    iget-object v0, v0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/jmatio/types/MLNumericArray;->directByteBufferEquals(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jmatio/types/MLNumericArray;->dims:[I

    move-object v0, p1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    iget-object v0, v0, Lcom/jmatio/types/MLNumericArray;->dims:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->isComplex()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jmatio/types/MLNumericArray;->imaginary:Ljava/nio/ByteBuffer;

    check-cast p1, Lcom/jmatio/types/MLNumericArray;

    iget-object v2, p1, Lcom/jmatio/types/MLNumericArray;->imaginary:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lcom/jmatio/types/MLNumericArray;->directByteBufferEquals(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use this method for Complex matrices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, p1}, Lcom/jmatio/types/MLNumericArray;->_get(Ljava/nio/ByteBuffer;I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public get(II)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use this method for Complex matrices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLNumericArray;->getReal(II)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getImaginary(I)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->imaginary:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, p1}, Lcom/jmatio/types/MLNumericArray;->_get(Ljava/nio/ByteBuffer;I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getImaginary(II)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLNumericArray;->getIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jmatio/types/MLNumericArray;->getImaginary(I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getImaginaryByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->imaginary:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getReal(I)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, p1}, Lcom/jmatio/types/MLNumericArray;->_get(Ljava/nio/ByteBuffer;I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getReal(II)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLNumericArray;->getIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jmatio/types/MLNumericArray;->getReal(I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getRealByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public putImaginaryByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->isComplex()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Array is not complex"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->imaginary:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->imaginary:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putRealByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public set(Ljava/lang/Number;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use this method for Complex matrices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLNumericArray;->setReal(Ljava/lang/Number;I)V

    return-void
.end method

.method public set(Ljava/lang/Number;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use this method for Complex matrices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jmatio/types/MLNumericArray;->setReal(Ljava/lang/Number;II)V

    return-void
.end method

.method public set([Ljava/lang/Number;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use this method for Complex matrices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jmatio/types/MLNumericArray;->setReal([Ljava/lang/Number;)V

    return-void
.end method

.method public setImaginary(Ljava/lang/Number;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->imaginary:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/jmatio/types/MLNumericArray;->_set(Ljava/nio/ByteBuffer;Ljava/lang/Number;I)V

    :cond_0
    return-void
.end method

.method public setImaginary(Ljava/lang/Number;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/jmatio/types/MLNumericArray;->getIndex(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/jmatio/types/MLNumericArray;->setImaginary(Ljava/lang/Number;I)V

    return-void
.end method

.method public setReal(Ljava/lang/Number;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/jmatio/types/MLNumericArray;->_set(Ljava/nio/ByteBuffer;Ljava/lang/Number;I)V

    return-void
.end method

.method public setReal(Ljava/lang/Number;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/jmatio/types/MLNumericArray;->getIndex(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/jmatio/types/MLNumericArray;->setReal(Ljava/lang/Number;I)V

    return-void
.end method

.method public setReal([Ljava/lang/Number;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p1

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->getSize()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Matrix dimensions do not match. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jmatio/types/MLNumericArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/jmatio/types/MLNumericArray;->real:Ljava/nio/ByteBuffer;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
