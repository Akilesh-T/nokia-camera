.class public Lcom/jmatio/types/MLSingle;
.super Lcom/jmatio/types/MLNumericArray;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jmatio/types/MLNumericArray",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;[III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jmatio/types/MLNumericArray;-><init>(Ljava/lang/String;[III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Float;I)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/jmatio/types/MLNumericArray;-><init>(Ljava/lang/String;I[Ljava/lang/Number;I)V

    return-void
.end method


# virtual methods
.method public buldFromBytes([B)Ljava/lang/Float;
    .locals 3

    array-length v0, p1

    invoke-virtual {p0}, Lcom/jmatio/types/MLSingle;->getBytesAllocated()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To build from byte array I need array of size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jmatio/types/MLSingle;->getBytesAllocated()I

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

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buldFromBytes([B)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jmatio/types/MLSingle;->buldFromBytes([B)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public createArray(II)[Ljava/lang/Float;
    .locals 1

    mul-int v0, p1, p2

    new-array v0, v0, [Ljava/lang/Float;

    return-object v0
.end method

.method public bridge synthetic createArray(II)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLSingle;->createArray(II)[Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getByteArray(Ljava/lang/Float;)[B
    .locals 2

    invoke-virtual {p0}, Lcom/jmatio/types/MLSingle;->getBytesAllocated()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getByteArray(Ljava/lang/Number;)[B
    .locals 1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/jmatio/types/MLSingle;->getByteArray(Ljava/lang/Float;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesAllocated()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getStorageClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Float;

    return-object v0
.end method
