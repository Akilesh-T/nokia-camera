.class public Lcom/jmatio/types/MLChar;
.super Lcom/jmatio/types/MLArray;

# interfaces
.implements Lcom/jmatio/types/GenericArrayCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jmatio/types/MLArray;",
        "Lcom/jmatio/types/GenericArrayCreator",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field chars:[Ljava/lang/Character;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jmatio/types/MLChar;-><init>(Ljava/lang/String;[III)V

    invoke-virtual {p0, p2}, Lcom/jmatio/types/MLChar;->set(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[III)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jmatio/types/MLArray;-><init>(Ljava/lang/String;[III)V

    invoke-virtual {p0}, Lcom/jmatio/types/MLChar;->getM()I

    move-result v0

    invoke-virtual {p0}, Lcom/jmatio/types/MLChar;->getN()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jmatio/types/MLChar;->createArray(II)[Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/jmatio/types/MLChar;->chars:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [I

    array-length v0, p2

    aput v0, v2, v1

    const/4 v3, 0x1

    array-length v0, p2

    if-lez v0, :cond_0

    invoke-static {p2}, Lcom/jmatio/types/MLChar;->getMaxLength([Ljava/lang/String;)I

    move-result v0

    :goto_0
    aput v0, v2, v3

    const/4 v0, 0x4

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/jmatio/types/MLChar;-><init>(Ljava/lang/String;[III)V

    :goto_1
    array-length v0, p2

    if-ge v1, v0, :cond_1

    aget-object v0, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/jmatio/types/MLChar;->set(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [I

    array-length v2, p2

    aput v2, v1, v0

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x4

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/jmatio/types/MLChar;-><init>(Ljava/lang/String;[III)V

    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    invoke-virtual {p0, v3, v1}, Lcom/jmatio/types/MLChar;->set(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getMaxLength([Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public contentToString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jmatio/types/MLChar;->name:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/jmatio/types/MLChar;->getM()I

    move-result v2

    if-ge v0, v2, :cond_1

    const-string v2, "\t"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/jmatio/types/MLChar;->getN()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/jmatio/types/MLChar;->getChar(II)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-string v2, "\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createArray(II)[Ljava/lang/Character;
    .locals 1

    mul-int v0, p1, p2

    new-array v0, v0, [Ljava/lang/Character;

    return-object v0
.end method

.method public bridge synthetic createArray(II)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLChar;->createArray(II)[Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/jmatio/types/MLChar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jmatio/types/MLChar;->chars:[Ljava/lang/Character;

    check-cast p1, Lcom/jmatio/types/MLChar;

    iget-object v1, p1, Lcom/jmatio/types/MLChar;->chars:[Ljava/lang/Character;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exportChar()[Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, Lcom/jmatio/types/MLChar;->chars:[Ljava/lang/Character;

    return-object v0
.end method

.method public getChar(II)Ljava/lang/Character;
    .locals 2

    iget-object v0, p0, Lcom/jmatio/types/MLChar;->chars:[Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Lcom/jmatio/types/MLChar;->getIndex(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/jmatio/types/MLChar;->getN()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/jmatio/types/MLChar;->getChar(II)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/jmatio/types/MLChar;->getN()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    aget-char v2, v1, v0

    invoke-virtual {p0, v2, v0}, Lcom/jmatio/types/MLChar;->setChar(CI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/jmatio/types/MLChar;->getM()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/jmatio/types/MLChar;->getN()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int v3, v1, v0

    add-int/2addr v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/jmatio/types/MLChar;->setChar(CI)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    mul-int v3, v1, v0

    add-int/2addr v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/jmatio/types/MLChar;->setChar(CI)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setChar(CI)V
    .locals 2

    iget-object v0, p0, Lcom/jmatio/types/MLChar;->chars:[Ljava/lang/Character;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, p2

    return-void
.end method
