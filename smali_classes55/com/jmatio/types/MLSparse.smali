.class public Lcom/jmatio/types/MLSparse;
.super Lcom/jmatio/types/MLNumericArray;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jmatio/types/MLSparse$IndexMN;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jmatio/types/MLNumericArray",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private imaginary:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Lcom/jmatio/types/MLSparse$IndexMN;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private indexSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/jmatio/types/MLSparse$IndexMN;",
            ">;"
        }
    .end annotation
.end field

.field nzmax:I

.field private real:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Lcom/jmatio/types/MLSparse$IndexMN;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[III)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/jmatio/types/MLNumericArray;-><init>(Ljava/lang/String;[III)V

    iput p4, p0, Lcom/jmatio/types/MLSparse;->nzmax:I

    return-void
.end method


# virtual methods
.method protected allocate()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/jmatio/types/MLSparse;->real:Ljava/util/SortedMap;

    invoke-virtual {p0}, Lcom/jmatio/types/MLSparse;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/jmatio/types/MLSparse;->imaginary:Ljava/util/SortedMap;

    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/jmatio/types/MLSparse;->indexSet:Ljava/util/SortedSet;

    return-void
.end method

.method public buldFromBytes([B)Ljava/lang/Double;
    .locals 3

    array-length v0, p1

    invoke-virtual {p0}, Lcom/jmatio/types/MLSparse;->getBytesAllocated()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To build from byte array I need array of size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jmatio/types/MLSparse;->getBytesAllocated()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buldFromBytes([B)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jmatio/types/MLSparse;->buldFromBytes([B)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public contentToString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jmatio/types/MLSparse;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/jmatio/types/MLSparse;->indexSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLSparse$IndexMN;

    const-string v3, "\t("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/jmatio/types/MLSparse$IndexMN;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/jmatio/types/MLSparse$IndexMN;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/jmatio/types/MLSparse$IndexMN;->m:I

    iget v5, v0, Lcom/jmatio/types/MLSparse$IndexMN;->n:I

    invoke-virtual {p0, v4, v5}, Lcom/jmatio/types/MLSparse;->getReal(II)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/jmatio/types/MLSparse;->isComplex()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/jmatio/types/MLSparse$IndexMN;->m:I

    iget v0, v0, Lcom/jmatio/types/MLSparse$IndexMN;->n:I

    invoke-virtual {p0, v4, v0}, Lcom/jmatio/types/MLSparse;->getImaginary(II)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createArray(II)[Ljava/lang/Double;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createArray(II)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLSparse;->createArray(II)[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public exportImaginary()[Ljava/lang/Double;
    .locals 6

    iget-object v0, p0, Lcom/jmatio/types/MLSparse;->indexSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Double;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jmatio/types/MLSparse;->indexSet:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLSparse$IndexMN;

    iget-object v4, p0, Lcom/jmatio/types/MLSparse;->imaginary:Ljava/util/SortedMap;

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jmatio/types/MLSparse;->imaginary:Ljava/util/SortedMap;

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    aput-object v0, v2, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public exportReal()[Ljava/lang/Double;
    .locals 6

    iget-object v0, p0, Lcom/jmatio/types/MLSparse;->indexSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Double;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jmatio/types/MLSparse;->indexSet:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLSparse$IndexMN;

    iget-object v4, p0, Lcom/jmatio/types/MLSparse;->real:Ljava/util/SortedMap;

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jmatio/types/MLSparse;->real:Ljava/util/SortedMap;

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    aput-object v0, v2, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public getByteArray(Ljava/lang/Double;)[B
    .locals 4

    invoke-virtual {p0}, Lcom/jmatio/types/MLSparse;->getBytesAllocated()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getByteArray(Ljava/lang/Number;)[B
    .locals 1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/jmatio/types/MLSparse;->getByteArray(Ljava/lang/Double;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesAllocated()I
    .locals 1

    const/16 v0, 0x200

    return v0
.end method

.method public getIR()[I
    .locals 5

    iget v0, p0, Lcom/jmatio/types/MLSparse;->nzmax:I

    new-array v3, v0, [I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jmatio/types/MLSparse;->indexSet:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLSparse$IndexMN;

    add-int/lit8 v2, v1, 0x1

    iget v0, v0, Lcom/jmatio/types/MLSparse$IndexMN;->m:I

    aput v0, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getImaginary(I)Ljava/lang/Double;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get Sparse array elements by index. Please use getImaginary(int index) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImaginary(II)Ljava/lang/Double;
    .locals 4

    new-instance v0, Lcom/jmatio/types/MLSparse$IndexMN;

    invoke-direct {v0, p0, p1, p2}, Lcom/jmatio/types/MLSparse$IndexMN;-><init>(Lcom/jmatio/types/MLSparse;II)V

    iget-object v1, p0, Lcom/jmatio/types/MLSparse;->imaginary:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jmatio/types/MLSparse;->imaginary:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0
.end method

.method public bridge synthetic getImaginary(I)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jmatio/types/MLSparse;->getImaginary(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImaginary(II)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLSparse;->getImaginary(II)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getJC()[I
    .locals 4

    invoke-virtual {p0}, Lcom/jmatio/types/MLSparse;->getN()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/jmatio/types/MLSparse;->indexSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLSparse$IndexMN;

    iget v0, v0, Lcom/jmatio/types/MLSparse$IndexMN;->n:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getMaxNZ()I
    .locals 1

    iget v0, p0, Lcom/jmatio/types/MLSparse;->nzmax:I

    return v0
.end method

.method public getReal(I)Ljava/lang/Double;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get Sparse array elements by index. Please use getReal(int index) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReal(II)Ljava/lang/Double;
    .locals 4

    new-instance v0, Lcom/jmatio/types/MLSparse$IndexMN;

    invoke-direct {v0, p0, p1, p2}, Lcom/jmatio/types/MLSparse$IndexMN;-><init>(Lcom/jmatio/types/MLSparse;II)V

    iget-object v1, p0, Lcom/jmatio/types/MLSparse;->real:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jmatio/types/MLSparse;->real:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0
.end method

.method public bridge synthetic getReal(I)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jmatio/types/MLSparse;->getReal(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReal(II)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLSparse;->getReal(II)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getStorageClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Double;

    return-object v0
.end method

.method public setImaginary(Ljava/lang/Double;I)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set Sparse array elements by index. Please use setImaginary(Double value, int m, int n) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setImaginary(Ljava/lang/Double;II)V
    .locals 2

    new-instance v0, Lcom/jmatio/types/MLSparse$IndexMN;

    invoke-direct {v0, p0, p2, p3}, Lcom/jmatio/types/MLSparse$IndexMN;-><init>(Lcom/jmatio/types/MLSparse;II)V

    iget-object v1, p0, Lcom/jmatio/types/MLSparse;->indexSet:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jmatio/types/MLSparse;->imaginary:Ljava/util/SortedMap;

    invoke-interface {v1, v0, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic setImaginary(Ljava/lang/Number;I)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLSparse;->setImaginary(Ljava/lang/Double;I)V

    return-void
.end method

.method public bridge synthetic setImaginary(Ljava/lang/Number;II)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jmatio/types/MLSparse;->setImaginary(Ljava/lang/Double;II)V

    return-void
.end method

.method public setReal(Ljava/lang/Double;I)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set Sparse array elements by index. Please use setReal(Double value, int m, int n) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReal(Ljava/lang/Double;II)V
    .locals 2

    new-instance v0, Lcom/jmatio/types/MLSparse$IndexMN;

    invoke-direct {v0, p0, p2, p3}, Lcom/jmatio/types/MLSparse$IndexMN;-><init>(Lcom/jmatio/types/MLSparse;II)V

    iget-object v1, p0, Lcom/jmatio/types/MLSparse;->indexSet:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jmatio/types/MLSparse;->real:Ljava/util/SortedMap;

    invoke-interface {v1, v0, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic setReal(Ljava/lang/Number;I)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLSparse;->setReal(Ljava/lang/Double;I)V

    return-void
.end method

.method public bridge synthetic setReal(Ljava/lang/Number;II)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jmatio/types/MLSparse;->setReal(Ljava/lang/Double;II)V

    return-void
.end method
