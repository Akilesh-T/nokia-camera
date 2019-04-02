.class public Lcom/jmatio/types/MLCell;
.super Lcom/jmatio/types/MLArray;


# instance fields
.field private cells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jmatio/types/MLArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jmatio/types/MLCell;-><init>(Ljava/lang/String;[III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[III)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jmatio/types/MLArray;-><init>(Ljava/lang/String;[III)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jmatio/types/MLCell;->getM()I

    move-result v1

    invoke-virtual {p0}, Lcom/jmatio/types/MLCell;->getN()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jmatio/types/MLCell;->cells:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/jmatio/types/MLCell;->getM()I

    move-result v1

    invoke-virtual {p0}, Lcom/jmatio/types/MLCell;->getN()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jmatio/types/MLCell;->cells:Ljava/util/ArrayList;

    new-instance v2, Lcom/jmatio/types/MLEmptyArray;

    invoke-direct {v2}, Lcom/jmatio/types/MLEmptyArray;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cells()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jmatio/types/MLArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jmatio/types/MLCell;->cells:Ljava/util/ArrayList;

    return-object v0
.end method

.method public contentToString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jmatio/types/MLCell;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/jmatio/types/MLCell;->getM()I

    move-result v2

    if-ge v0, v2, :cond_1

    const-string v2, "\t"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/jmatio/types/MLCell;->getN()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/jmatio/types/MLCell;->get(II)Lcom/jmatio/types/MLArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/jmatio/types/MLArray;
    .locals 1

    iget-object v0, p0, Lcom/jmatio/types/MLCell;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLArray;

    return-object v0
.end method

.method public get(II)Lcom/jmatio/types/MLArray;
    .locals 2

    iget-object v0, p0, Lcom/jmatio/types/MLCell;->cells:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLCell;->getIndex(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLArray;

    return-object v0
.end method

.method public getIndex(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/jmatio/types/MLCell;->getM()I

    move-result v0

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method public set(Lcom/jmatio/types/MLArray;I)V
    .locals 1

    iget-object v0, p0, Lcom/jmatio/types/MLCell;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set(Lcom/jmatio/types/MLArray;II)V
    .locals 2

    iget-object v0, p0, Lcom/jmatio/types/MLCell;->cells:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3}, Lcom/jmatio/types/MLCell;->getIndex(II)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
