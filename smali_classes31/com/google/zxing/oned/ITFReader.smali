.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.78f

.field private static final N:I = 0x1

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 54
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 65
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 66
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    .line 54
    :array_0
    .array-data 4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 66
    :array_2
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    .line 71
    :array_3
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .locals 7
    .param p0, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 334
    const v1, 0x3ec28f5c    # 0.38f

    .line 335
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 336
    .local v0, "bestMatch":I
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v3, v6

    .line 337
    .local v3, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 338
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v6, v2

    .line 339
    .local v4, "pattern":[I
    const v6, 0x3f47ae14    # 0.78f

    invoke-static {p0, v4, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v5

    .line 340
    .local v5, "variance":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    .line 341
    move v1, v5

    .line 342
    move v0, v2

    .line 337
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v4    # "pattern":[I
    .end local v5    # "variance":F
    :cond_1
    if-ltz v0, :cond_2

    .line 346
    return v0

    .line 348
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 6
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 261
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v1

    .line 262
    .local v1, "endStart":I
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {p1, v1, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    .line 267
    .local v0, "endPattern":[I
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 272
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 273
    .local v2, "temp":I
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/4 v5, 0x1

    aget v5, v0, v5

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 274
    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    sub-int/2addr v4, v2

    aput v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 276
    return-object v0

    .line 279
    .end local v0    # "endPattern":[I
    .end local v1    # "endStart":I
    .end local v2    # "temp":I
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw v3
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .locals 10
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "payloadStart"    # I
    .param p2, "payloadEnd"    # I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x5

    .line 150
    new-array v3, v9, [I

    .line 151
    .local v3, "counterDigitPair":[I
    new-array v1, v8, [I

    .line 152
    .local v1, "counterBlack":[I
    new-array v4, v8, [I

    .line 154
    .local v4, "counterWhite":[I
    :cond_0
    if-ge p1, p2, :cond_2

    .line 157
    invoke-static {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 159
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    if-ge v5, v8, :cond_1

    .line 160
    mul-int/lit8 v6, v5, 0x2

    .line 161
    .local v6, "twoK":I
    aget v7, v3, v6

    aput v7, v1, v5

    .line 162
    add-int/lit8 v7, v6, 0x1

    aget v7, v3, v7

    aput v7, v4, v5

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 165
    .end local v6    # "twoK":I
    :cond_1
    invoke-static {v1}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v0

    .line 166
    .local v0, "bestMatch":I
    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v0

    .line 168
    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_0

    aget v2, v3, v7

    .line 171
    .local v2, "counterDigit":I
    add-int/2addr p1, v2

    .line 170
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 174
    .end local v0    # "bestMatch":I
    .end local v2    # "counterDigit":I
    .end local v5    # "k":I
    :cond_2
    return-void
.end method

.method private decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 5
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 185
    .local v0, "endStart":I
    sget-object v2, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 190
    .local v1, "startPattern":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    aget v3, v1, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 192
    aget v2, v1, v4

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 194
    return-object v1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 12
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 295
    array-length v3, p2

    .line 296
    .local v3, "patternLength":I
    new-array v1, v3, [I

    .line 297
    .local v1, "counters":[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 298
    .local v5, "width":I
    const/4 v2, 0x0

    .line 300
    .local v2, "isWhite":Z
    const/4 v0, 0x0

    .line 301
    .local v0, "counterPosition":I
    move v4, p1

    .line 302
    .local v4, "patternStart":I
    move v6, p1

    .local v6, "x":I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 303
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_0

    .line 304
    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    .line 302
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 306
    :cond_0
    add-int/lit8 v9, v3, -0x1

    if-ne v0, v9, :cond_2

    .line 307
    const v9, 0x3f47ae14    # 0.78f

    invoke-static {v1, p2, v9}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v9

    const v10, 0x3ec28f5c    # 0.38f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 308
    new-array v9, v11, [I

    aput v4, v9, v8

    aput v6, v9, v7

    return-object v9

    .line 310
    :cond_1
    aget v9, v1, v8

    aget v10, v1, v7

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 311
    add-int/lit8 v9, v3, -0x2

    invoke-static {v1, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    add-int/lit8 v9, v3, -0x2

    aput v8, v1, v9

    .line 313
    add-int/lit8 v9, v3, -0x1

    aput v8, v1, v9

    .line 314
    add-int/lit8 v0, v0, -0x1

    .line 318
    :goto_2
    aput v7, v1, v0

    .line 319
    if-nez v2, :cond_3

    move v2, v7

    :goto_3
    goto :goto_1

    .line 316
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v8

    .line 319
    goto :goto_3

    .line 322
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 3
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 240
    .local v1, "width":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 241
    .local v0, "endStart":I
    if-ne v0, v1, :cond_0

    .line 242
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 245
    :cond_0
    return v0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 3
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startPattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 214
    iget v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v1, v2, 0xa

    .line 217
    .local v1, "quietCount":I
    if-ge v1, p2, :cond_0

    .line 219
    :goto_0
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_1
    if-lez v1, :cond_1

    if-ltz v0, :cond_1

    .line 220
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    add-int/lit8 v1, v1, -0x1

    .line 219
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    move v1, p2

    .line 217
    goto :goto_0

    .line 225
    .restart local v0    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 227
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 229
    :cond_2
    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 18
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v10

    .line 90
    .local v10, "startRange":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v4

    .line 92
    .local v4, "endRange":[I
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v11, 0x14

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    .local v8, "result":Ljava/lang/StringBuilder;
    const/4 v11, 0x1

    aget v11, v10, v11

    const/4 v12, 0x0

    aget v12, v4, v12

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12, v8}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 94
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 97
    .local v3, "allowedLengths":[I
    if-eqz p3, :cond_0

    .line 98
    sget-object v11, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v3, v11

    check-cast v3, [I

    .line 101
    :cond_0
    if-nez v3, :cond_1

    .line 102
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 107
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 108
    .local v5, "length":I
    const/4 v6, 0x0

    .line 109
    .local v6, "lengthOK":Z
    const/4 v7, 0x0

    .line 110
    .local v7, "maxAllowedLength":I
    array-length v12, v3

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_2

    aget v2, v3, v11

    .line 111
    .local v2, "allowedLength":I
    if-ne v5, v2, :cond_4

    .line 112
    const/4 v6, 0x1

    .line 119
    .end local v2    # "allowedLength":I
    :cond_2
    if-nez v6, :cond_3

    if-le v5, v7, :cond_3

    .line 120
    const/4 v6, 0x1

    .line 122
    :cond_3
    if-nez v6, :cond_6

    .line 123
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v11

    throw v11

    .line 115
    .restart local v2    # "allowedLength":I
    :cond_4
    if-le v2, v7, :cond_5

    .line 116
    move v7, v2

    .line 110
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "allowedLength":I
    :cond_6
    new-instance v11, Lcom/google/zxing/Result;

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/ResultPoint;

    const/4 v14, 0x0

    new-instance v15, Lcom/google/zxing/ResultPoint;

    const/16 v16, 0x1

    aget v16, v10, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Lcom/google/zxing/ResultPoint;

    const/16 v16, 0x0

    aget v16, v4, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v15, v13, v14

    sget-object v14, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v11, v9, v12, v13, v14}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v11
.end method
