.class Lcom/jmatio/io/MatTag;
.super Ljava/lang/Object;


# instance fields
.field protected size:I

.field protected type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jmatio/io/MatTag;->type:I

    iput p2, p0, Lcom/jmatio/io/MatTag;->size:I

    return-void
.end method


# virtual methods
.method protected getPadding(IZ)I
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/jmatio/io/MatTag;->sizeOf()I

    move-result v1

    div-int v1, p1, v1

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/jmatio/io/MatTag;->sizeOf()I

    move-result v3

    div-int/2addr v2, v3

    rem-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/jmatio/io/MatTag;->sizeOf()I

    move-result v2

    mul-int/2addr v1, v2

    if-eqz v1, :cond_0

    rsub-int/lit8 v0, v1, 0x8

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/jmatio/io/MatTag;->sizeOf()I

    move-result v1

    div-int v1, p1, v1

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/jmatio/io/MatTag;->sizeOf()I

    move-result v3

    div-int/2addr v2, v3

    rem-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/jmatio/io/MatTag;->sizeOf()I

    move-result v2

    mul-int/2addr v1, v2

    if-eqz v1, :cond_0

    rsub-int/lit8 v0, v1, 0x4

    goto :goto_0
.end method

.method public sizeOf()I
    .locals 1

    iget v0, p0, Lcom/jmatio/io/MatTag;->type:I

    invoke-static {v0}, Lcom/jmatio/common/MatDataTypes;->sizeOf(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jmatio/io/MatTag;->type:I

    invoke-static {v1}, Lcom/jmatio/common/MatDataTypes;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jmatio/io/MatTag;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
