.class Lcom/jmatio/types/MLSparse$IndexMN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jmatio/types/MLSparse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexMN"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/jmatio/types/MLSparse$IndexMN;",
        ">;"
    }
.end annotation


# instance fields
.field m:I

.field n:I

.field final synthetic this$0:Lcom/jmatio/types/MLSparse;


# direct methods
.method public constructor <init>(Lcom/jmatio/types/MLSparse;II)V
    .locals 0

    iput-object p1, p0, Lcom/jmatio/types/MLSparse$IndexMN;->this$0:Lcom/jmatio/types/MLSparse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/jmatio/types/MLSparse$IndexMN;->m:I

    iput p3, p0, Lcom/jmatio/types/MLSparse$IndexMN;->n:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/jmatio/types/MLSparse$IndexMN;)I
    .locals 4

    iget-object v0, p0, Lcom/jmatio/types/MLSparse$IndexMN;->this$0:Lcom/jmatio/types/MLSparse;

    iget v1, p0, Lcom/jmatio/types/MLSparse$IndexMN;->m:I

    iget v2, p0, Lcom/jmatio/types/MLSparse$IndexMN;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/jmatio/types/MLSparse;->getIndex(II)I

    move-result v0

    iget-object v1, p0, Lcom/jmatio/types/MLSparse$IndexMN;->this$0:Lcom/jmatio/types/MLSparse;

    iget v2, p1, Lcom/jmatio/types/MLSparse$IndexMN;->m:I

    iget v3, p1, Lcom/jmatio/types/MLSparse$IndexMN;->n:I

    invoke-virtual {v1, v2, v3}, Lcom/jmatio/types/MLSparse;->getIndex(II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/jmatio/types/MLSparse$IndexMN;

    invoke-virtual {p0, p1}, Lcom/jmatio/types/MLSparse$IndexMN;->compareTo(Lcom/jmatio/types/MLSparse$IndexMN;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/jmatio/types/MLSparse$IndexMN;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/jmatio/types/MLSparse$IndexMN;->m:I

    move-object v0, p1

    check-cast v0, Lcom/jmatio/types/MLSparse$IndexMN;

    iget v0, v0, Lcom/jmatio/types/MLSparse$IndexMN;->m:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/jmatio/types/MLSparse$IndexMN;->n:I

    check-cast p1, Lcom/jmatio/types/MLSparse$IndexMN;

    iget v1, p1, Lcom/jmatio/types/MLSparse$IndexMN;->n:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jmatio/types/MLSparse$IndexMN;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jmatio/types/MLSparse$IndexMN;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
