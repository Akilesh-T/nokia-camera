.class public Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;
.super Ljava/lang/Object;
.source "HuffmanTablesDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HuffmanTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;
    }
.end annotation


# instance fields
.field private final lengthBytes:[B

.field private final tableClass:Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;

.field private final tableDestinationId:I

.field private final tableLength:I

.field private final valueBytes:[B


# direct methods
.method public constructor <init>(Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;I[B[B)V
    .locals 1
    .param p1, "tableClass"    # Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "tableDestinationId"    # I
    .param p3, "lBytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "vBytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->tableClass:Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;

    .line 243
    iput p2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->tableDestinationId:I

    .line 244
    iput-object p3, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->lengthBytes:[B

    .line 245
    iput-object p4, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->valueBytes:[B

    .line 246
    array-length v0, p4

    add-int/lit8 v0, v0, 0x11

    iput v0, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->tableLength:I

    .line 247
    return-void
.end method


# virtual methods
.method public getLengthBytes()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    iget-object v1, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->lengthBytes:[B

    if-nez v1, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 281
    :goto_0
    return-object v0

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->lengthBytes:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 280
    .local v0, "result":[B
    iget-object v1, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->lengthBytes:[B

    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->lengthBytes:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getTableClass()Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->tableClass:Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;

    return-object v0
.end method

.method public getTableDestinationId()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->tableDestinationId:I

    return v0
.end method

.method public getTableLength()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->tableLength:I

    return v0
.end method

.method public getValueBytes()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    iget-object v1, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->valueBytes:[B

    if-nez v1, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->valueBytes:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 292
    .local v0, "result":[B
    iget-object v1, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->valueBytes:[B

    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->valueBytes:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public isOptimized()Z
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->isTypical()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypical()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 320
    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->tableClass:Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;

    sget-object v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;->DC:Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;

    if-ne v2, v3, :cond_3

    .line 321
    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->lengthBytes:[B

    sget-object v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_LUMINANCE_DC_LENGTHS:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->valueBytes:[B

    sget-object v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_LUMINANCE_DC_VALUES:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->lengthBytes:[B

    sget-object v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_CHROMINANCE_DC_LENGTHS:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->valueBytes:[B

    sget-object v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_CHROMINANCE_DC_VALUES:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 333
    :cond_2
    :goto_0
    return v0

    .line 326
    :cond_3
    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->tableClass:Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;

    sget-object v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;->AC:Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;

    if-ne v2, v3, :cond_2

    .line 327
    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->lengthBytes:[B

    sget-object v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_LUMINANCE_AC_LENGTHS:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->valueBytes:[B

    sget-object v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_LUMINANCE_AC_VALUES:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->lengthBytes:[B

    sget-object v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_CHROMINANCE_AC_LENGTHS:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->valueBytes:[B

    sget-object v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_CHROMINANCE_AC_VALUES:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method
