.class public final Lcom/qualcomm/qti/snpe/internal/TensorUtil;
.super Ljava/lang/Object;
.source "TensorUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static assertShape(Ljava/lang/String;[I[I)V
    .locals 4
    .param p0, "tensor"    # Ljava/lang/String;
    .param p1, "expected"    # [I
    .param p2, "actual"    # [I

    .prologue
    .line 36
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 37
    new-instance v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has unexpected shape! Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 42
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_1

    .line 43
    new-instance v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has unexpected dimension ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")! Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method

.method public static position([I[I)I
    .locals 6
    .param p0, "shape"    # [I
    .param p1, "position"    # [I

    .prologue
    .line 21
    array-length v4, p0

    new-array v1, v4, [I

    .line 22
    .local v1, "lowerDimSizes":[I
    const/4 v3, 0x1

    .line 23
    .local v3, "size":I
    array-length v4, p0

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 24
    aput v3, v1, v0

    .line 25
    aget v4, p0, v0

    mul-int/2addr v3, v4

    .line 23
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    .local v2, "positionIndex":I
    const/4 v0, 0x0

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 30
    aget v4, p1, v0

    aget v5, v1, v0

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    :cond_1
    return v2
.end method

.method public static sizeOf([I)I
    .locals 4
    .param p0, "shape"    # [I

    .prologue
    .line 13
    const/4 v1, 0x1

    .line 14
    .local v1, "size":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 15
    .local v0, "dimension":I
    mul-int/2addr v1, v0

    .line 14
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    .end local v0    # "dimension":I
    :cond_0
    return v1
.end method
