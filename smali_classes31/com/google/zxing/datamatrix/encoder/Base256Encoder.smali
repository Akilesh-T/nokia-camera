.class final Lcom/google/zxing/datamatrix/encoder/Base256Encoder;
.super Ljava/lang/Object;
.source "Base256Encoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static randomize255State(CI)C
    .locals 3
    .param p0, "ch"    # C
    .param p1, "codewordPosition"    # I

    .prologue
    .line 65
    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, 0x1

    .line 66
    .local v0, "pseudoRandom":I
    add-int v1, p0, v0

    .line 67
    .local v1, "tempVariable":I
    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 68
    int-to-char v2, v1

    .line 70
    :goto_0
    return v2

    :cond_0
    add-int/lit16 v2, v1, -0x100

    int-to-char v2, v2

    goto :goto_0
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 12
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 32
    .local v1, "c":C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v9

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v6

    .line 37
    .local v6, "newMode":I
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v9

    if-eq v6, v9, :cond_0

    .line 38
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 42
    .end local v1    # "c":C
    .end local v6    # "newMode":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 44
    .local v3, "dataCount":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v9

    add-int/2addr v9, v3

    add-int/lit8 v2, v9, 0x1

    .line 45
    .local v2, "currentSize":I
    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 46
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v9

    sub-int/2addr v9, v2

    if-lez v9, :cond_4

    move v5, v7

    .line 47
    .local v5, "mustPad":Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v5, :cond_3

    .line 48
    :cond_2
    const/16 v9, 0xf9

    if-gt v3, v9, :cond_5

    .line 49
    int-to-char v7, v3

    invoke-virtual {v0, v8, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 58
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .local v1, "c":I
    :goto_2
    if-ge v4, v1, :cond_7

    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 59
    invoke-static {v7, v8}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->randomize255State(CI)C

    move-result v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1    # "c":I
    .end local v4    # "i":I
    .end local v5    # "mustPad":Z
    :cond_4
    move v5, v8

    .line 46
    goto :goto_0

    .line 50
    .restart local v5    # "mustPad":Z
    :cond_5
    const/16 v9, 0x613

    if-gt v3, v9, :cond_6

    .line 51
    div-int/lit16 v9, v3, 0xfa

    add-int/lit16 v9, v9, 0xf9

    int-to-char v9, v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 52
    rem-int/lit16 v8, v3, 0xfa

    int-to-char v8, v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 54
    :cond_6
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Message length not in valid ranges: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 62
    .restart local v1    # "c":I
    .restart local v4    # "i":I
    :cond_7
    return-void
.end method

.method public getEncodingMode()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x5

    return v0
.end method
