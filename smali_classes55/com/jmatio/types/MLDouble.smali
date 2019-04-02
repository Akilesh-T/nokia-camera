.class public Lcom/jmatio/types/MLDouble;
.super Lcom/jmatio/types/MLNumericArray;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jmatio/types/MLNumericArray",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;[DI)V
    .locals 1

    invoke-static {p2}, Lcom/jmatio/types/MLDouble;->castToDouble([D)[Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/jmatio/types/MLDouble;-><init>(Ljava/lang/String;[Ljava/lang/Double;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jmatio/types/MLNumericArray;-><init>(Ljava/lang/String;[III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jmatio/types/MLNumericArray;-><init>(Ljava/lang/String;[III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Double;I)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/jmatio/types/MLNumericArray;-><init>(Ljava/lang/String;I[Ljava/lang/Number;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[D)V
    .locals 2

    invoke-static {p2}, Lcom/jmatio/types/MLDouble;->double2DToDouble([[D)[Ljava/lang/Double;

    move-result-object v0

    array-length v1, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/jmatio/types/MLDouble;-><init>(Ljava/lang/String;[Ljava/lang/Double;I)V

    return-void
.end method

.method private static castToDouble([D)[Ljava/lang/Double;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Double;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static double2DToDouble([[D)[Ljava/lang/Double;
    .locals 8

    const/4 v1, 0x0

    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/Double;

    move v0, v1

    :goto_0
    aget-object v2, p0, v1

    array-length v2, v2

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_0

    array-length v4, p0

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    aget-object v5, p0, v2

    aget-wide v6, v5, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public buldFromBytes([B)Ljava/lang/Double;
    .locals 3

    array-length v0, p1

    invoke-virtual {p0}, Lcom/jmatio/types/MLDouble;->getBytesAllocated()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To build from byte array I need array of size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jmatio/types/MLDouble;->getBytesAllocated()I

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

    invoke-virtual {p0, p1}, Lcom/jmatio/types/MLDouble;->buldFromBytes([B)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public createArray(II)[Ljava/lang/Double;
    .locals 1

    mul-int v0, p1, p2

    new-array v0, v0, [Ljava/lang/Double;

    return-object v0
.end method

.method public bridge synthetic createArray(II)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLDouble;->createArray(II)[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getArray()[[D
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jmatio/types/MLDouble;->getM()I

    move-result v0

    new-array v4, v0, [[D

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/jmatio/types/MLDouble;->getM()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/jmatio/types/MLDouble;->getN()I

    move-result v0

    new-array v0, v0, [D

    aput-object v0, v4, v1

    move v3, v2

    :goto_1
    invoke-virtual {p0}, Lcom/jmatio/types/MLDouble;->getN()I

    move-result v0

    if-ge v3, v0, :cond_0

    aget-object v5, v4, v1

    invoke-virtual {p0, v1, v3}, Lcom/jmatio/types/MLDouble;->getReal(II)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v5, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getByteArray(Ljava/lang/Double;)[B
    .locals 4

    invoke-virtual {p0}, Lcom/jmatio/types/MLDouble;->getBytesAllocated()I

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

    invoke-virtual {p0, p1}, Lcom/jmatio/types/MLDouble;->getByteArray(Ljava/lang/Double;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesAllocated()I
    .locals 1

    const/16 v0, 0x8

    return v0
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
