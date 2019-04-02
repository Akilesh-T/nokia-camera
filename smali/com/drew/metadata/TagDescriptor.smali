.class public Lcom/drew/metadata/TagDescriptor;
.super Ljava/lang/Object;
.source "TagDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/drew/metadata/Directory;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final _directory:Lcom/drew/metadata/Directory;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/drew/metadata/TagDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/drew/metadata/TagDescriptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    .local p1, "directory":Lcom/drew/metadata/Directory;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    .line 53
    return-void
.end method

.method public static convertBytesToVersionString([II)Ljava/lang/String;
    .locals 5
    .param p0, "components"    # [I
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "majorDigits"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v3, 0x0

    .line 123
    :goto_0
    return-object v3

    .line 112
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v2, "version":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 114
    if-ne v1, p1, :cond_1

    .line 115
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :cond_1
    aget v3, p0, v1

    int-to-char v0, v3

    .line 117
    .local v0, "c":C
    if-ge v0, v4, :cond_2

    .line 118
    add-int/lit8 v3, v0, 0x30

    int-to-char v0, v3

    .line 119
    :cond_2
    if-nez v1, :cond_3

    if-ne v0, v4, :cond_3

    .line 113
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 123
    .end local v0    # "c":C
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected static getFStopDescription(D)Ljava/lang/String;
    .locals 4
    .param p0, "fStop"    # D
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 306
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "format":Ljava/text/DecimalFormat;
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static getFocalLengthDescription(D)Ljava/lang/String;
    .locals 4
    .param p0, "mm"    # D
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "format":Ljava/text/DecimalFormat;
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected get7BitStringFromBytes(I)Ljava/lang/String;
    .locals 6
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    iget-object v4, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v4, p1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v0

    .line 256
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 257
    const/4 v4, 0x0

    .line 268
    :goto_0
    return-object v4

    .line 259
    :cond_0
    array-length v3, v0

    .line 260
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 261
    aget-byte v4, v0, v2

    and-int/lit16 v1, v4, 0xff

    .line 262
    .local v1, "i":I
    if-eqz v1, :cond_1

    const/16 v4, 0x7f

    if-le v1, v4, :cond_3

    .line 263
    :cond_1
    move v3, v2

    .line 268
    .end local v1    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    .line 260
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected varargs getBitFlagDescription(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p1, "tagType"    # I
    .param p2, "labels"    # [Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 224
    iget-object v8, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v8, p1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v5

    .line 226
    .local v5, "value":Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 227
    const/4 v6, 0x0

    .line 248
    :goto_0
    return-object v6

    .line 229
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 232
    .local v0, "bitIndex":I
    :goto_1
    array-length v8, p2

    if-le v8, v0, :cond_6

    .line 233
    aget-object v2, p2, v0

    .line 234
    .local v2, "labelObj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 235
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_1

    move v1, v6

    .line 236
    .local v1, "isBitSet":Z
    :goto_2
    instance-of v8, v2, [Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 237
    check-cast v2, [Ljava/lang/String;

    .end local v2    # "labelObj":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, [Ljava/lang/String;

    .line 238
    .local v3, "labelPair":[Ljava/lang/String;
    sget-boolean v8, Lcom/drew/metadata/TagDescriptor;->$assertionsDisabled:Z

    if-nez v8, :cond_2

    array-length v8, v3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .end local v1    # "isBitSet":Z
    .end local v3    # "labelPair":[Ljava/lang/String;
    .restart local v2    # "labelObj":Ljava/lang/Object;
    :cond_1
    move v1, v7

    .line 235
    goto :goto_2

    .line 239
    .end local v2    # "labelObj":Ljava/lang/Object;
    .restart local v1    # "isBitSet":Z
    .restart local v3    # "labelPair":[Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_4

    move v8, v6

    :goto_3
    aget-object v8, v3, v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v1    # "isBitSet":Z
    .end local v3    # "labelPair":[Ljava/lang/String;
    :cond_3
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    shr-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 245
    add-int/lit8 v0, v0, 0x1

    .line 246
    goto :goto_1

    .restart local v1    # "isBitSet":Z
    .restart local v3    # "labelPair":[Ljava/lang/String;
    :cond_4
    move v8, v7

    .line 239
    goto :goto_3

    .line 240
    .end local v3    # "labelPair":[Ljava/lang/String;
    .restart local v2    # "labelObj":Ljava/lang/Object;
    :cond_5
    if-eqz v1, :cond_3

    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 241
    check-cast v2, Ljava/lang/String;

    .end local v2    # "labelObj":Ljava/lang/Object;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 248
    .end local v1    # "isBitSet":Z
    :cond_6
    const-string v6, ", "

    invoke-static {v4, v6}, Lcom/drew/lang/StringUtil;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method protected getByteLengthDescription(I)Ljava/lang/String;
    .locals 6
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    const/4 v5, 0x1

    .line 157
    iget-object v1, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v0

    .line 158
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 159
    const/4 v1, 0x0

    .line 160
    :goto_0
    return-object v1

    :cond_0
    const-string v2, "(%d byte%s)"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    array-length v1, v0

    if-ne v1, v5, :cond_1

    const-string v1, ""

    :goto_1
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "s"

    goto :goto_1
.end method

.method protected getDecimalRational(II)Ljava/lang/String;
    .locals 6
    .param p1, "tagType"    # I
    .param p2, "decimalPlaces"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 176
    .local v0, "value":Lcom/drew/lang/Rational;
    if-nez v0, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 6
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    iget-object v2, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, "object":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 90
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 74
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "length":I
    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 77
    const-string v2, "[%d values]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 81
    .end local v0    # "length":I
    :cond_1
    instance-of v2, v1, Ljava/util/Date;

    if-eqz v2, :cond_2

    .line 84
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM dd HH:mm:ss Z yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/util/Date;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "([0-9]{2} [^ ]+)$"

    const-string v4, ":$1"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 90
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getEpochTimeDescription(I)Ljava/lang/String;
    .locals 4
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 213
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 215
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getFormattedFloat(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tagType"    # I
    .param p2, "format"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->getFloatObject(I)Ljava/lang/Float;

    move-result-object v0

    .line 194
    .local v0, "value":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 195
    const/4 v1, 0x0

    .line 196
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getFormattedInt(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tagType"    # I
    .param p2, "format"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 185
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 187
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getFormattedString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tagType"    # I
    .param p2, "format"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 205
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected varargs getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tagType"    # I
    .param p2, "baseIndex"    # I
    .param p3, "descriptions"    # [Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    iget-object v3, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v3, p1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 143
    .local v2, "index":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 144
    const/4 v1, 0x0

    .line 151
    :cond_0
    :goto_0
    return-object v1

    .line 145
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v3, p2

    .line 146
    .local v0, "arrayIndex":I
    if-ltz v0, :cond_2

    array-length v3, p3

    if-ge v0, v3, :cond_2

    .line 147
    aget-object v1, p3, v0

    .line 148
    .local v1, "description":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 151
    .end local v1    # "description":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected varargs getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .param p2, "descriptions"    # [Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/drew/metadata/TagDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLensSpecificationDescription(I)Ljava/lang/String;
    .locals 10
    .param p1, "tag"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    const/16 v9, 0x2d

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 322
    iget-object v3, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v3, p1}, Lcom/drew/metadata/Directory;->getRationalArray(I)[Lcom/drew/lang/Rational;

    move-result-object v2

    .line 324
    .local v2, "values":[Lcom/drew/lang/Rational;
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v7

    invoke-virtual {v3}, Lcom/drew/lang/Rational;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v2, v6

    invoke-virtual {v3}, Lcom/drew/lang/Rational;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    :cond_0
    const/4 v3, 0x0

    .line 346
    :goto_0
    return-object v3

    .line 327
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v1, "sb":Ljava/lang/StringBuilder;
    aget-object v3, v2, v7

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/drew/lang/Rational;->equals(Lcom/drew/lang/Rational;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    aget-object v3, v2, v7

    invoke-virtual {v3, v5}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :goto_1
    aget-object v3, v2, v6

    invoke-virtual {v3}, Lcom/drew/lang/Rational;->isZero()Z

    move-result v3

    if-nez v3, :cond_2

    .line 335
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.0"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "format":Ljava/text/DecimalFormat;
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 340
    aget-object v3, v2, v6

    aget-object v4, v2, v8

    invoke-virtual {v3, v4}, Lcom/drew/lang/Rational;->equals(Lcom/drew/lang/Rational;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 341
    aget-object v3, v2, v6

    invoke-virtual {v3}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/drew/metadata/TagDescriptor;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .end local v0    # "format":Ljava/text/DecimalFormat;
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 332
    :cond_3
    aget-object v3, v2, v7

    invoke-virtual {v3, v5}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v5

    invoke-virtual {v4, v5}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 343
    .restart local v0    # "format":Ljava/text/DecimalFormat;
    :cond_4
    const-string v3, "f/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-virtual {v4}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v8

    invoke-virtual {v4}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method protected getLightSourceDescription(S)Ljava/lang/String;
    .locals 1
    .param p1, "wbtype"    # S
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    sparse-switch p1, :sswitch_data_0

    .line 464
    invoke-virtual {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 419
    :sswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 421
    :sswitch_1
    const-string v0, "Daylight"

    goto :goto_0

    .line 423
    :sswitch_2
    const-string v0, "Fluorescent"

    goto :goto_0

    .line 425
    :sswitch_3
    const-string v0, "Tungsten (Incandescent)"

    goto :goto_0

    .line 427
    :sswitch_4
    const-string v0, "Flash"

    goto :goto_0

    .line 429
    :sswitch_5
    const-string v0, "Fine Weather"

    goto :goto_0

    .line 431
    :sswitch_6
    const-string v0, "Cloudy"

    goto :goto_0

    .line 433
    :sswitch_7
    const-string v0, "Shade"

    goto :goto_0

    .line 435
    :sswitch_8
    const-string v0, "Daylight Fluorescent"

    goto :goto_0

    .line 437
    :sswitch_9
    const-string v0, "Day White Fluorescent"

    goto :goto_0

    .line 439
    :sswitch_a
    const-string v0, "Cool White Fluorescent"

    goto :goto_0

    .line 441
    :sswitch_b
    const-string v0, "White Fluorescent"

    goto :goto_0

    .line 443
    :sswitch_c
    const-string v0, "Warm White Fluorescent"

    goto :goto_0

    .line 445
    :sswitch_d
    const-string v0, "Standard Light A"

    goto :goto_0

    .line 447
    :sswitch_e
    const-string v0, "Standard Light B"

    goto :goto_0

    .line 449
    :sswitch_f
    const-string v0, "Standard Light C"

    goto :goto_0

    .line 451
    :sswitch_10
    const-string v0, "D55"

    goto :goto_0

    .line 453
    :sswitch_11
    const-string v0, "D65"

    goto :goto_0

    .line 455
    :sswitch_12
    const-string v0, "D75"

    goto :goto_0

    .line 457
    :sswitch_13
    const-string v0, "D50"

    goto :goto_0

    .line 459
    :sswitch_14
    const-string v0, "ISO Studio Tungsten"

    goto :goto_0

    .line 461
    :sswitch_15
    const-string v0, "Other"

    goto :goto_0

    .line 416
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_d
        0x12 -> :sswitch_e
        0x13 -> :sswitch_f
        0x14 -> :sswitch_10
        0x15 -> :sswitch_11
        0x16 -> :sswitch_12
        0x17 -> :sswitch_13
        0x18 -> :sswitch_14
        0xff -> :sswitch_15
    .end sparse-switch
.end method

.method protected getOrientationDescription(I)Ljava/lang/String;
    .locals 4
    .param p1, "tag"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    const/4 v3, 0x1

    .line 352
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Top, left side (Horizontal / normal)"

    aput-object v2, v0, v1

    const-string v1, "Top, right side (Mirror horizontal)"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "Bottom, right side (Rotate 180)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Bottom, left side (Mirror vertical)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Left side, top (Mirror horizontal and rotate 270 CW)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Right side, top (Rotate 90 CW)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Right side, bottom (Mirror horizontal and rotate 90 CW)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Left side, bottom (Rotate 270 CW)"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v3, v0}, Lcom/drew/metadata/TagDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRationalOrDoubleString(I)Ljava/lang/String;
    .locals 4
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    iget-object v3, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v3, p1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v2

    .line 290
    .local v2, "rational":Lcom/drew/lang/Rational;
    if-eqz v2, :cond_0

    .line 291
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v3

    .line 300
    :goto_0
    return-object v3

    .line 293
    :cond_0
    iget-object v3, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v3, p1}, Lcom/drew/metadata/Directory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v0

    .line 294
    .local v0, "d":Ljava/lang/Double;
    if-eqz v0, :cond_1

    .line 296
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "0.###"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, "format":Ljava/text/DecimalFormat;
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 300
    .end local v1    # "format":Ljava/text/DecimalFormat;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getShutterSpeedDescription(I)Ljava/lang/String;
    .locals 12
    .param p1, "tag"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 376
    iget-object v6, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v6, p1}, Lcom/drew/metadata/Directory;->getFloatObject(I)Ljava/lang/Float;

    move-result-object v1

    .line 377
    .local v1, "apexValue":Ljava/lang/Float;
    if-nez v1, :cond_0

    .line 378
    const/4 v6, 0x0

    .line 388
    :goto_0
    return-object v6

    .line 379
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 380
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 381
    .local v0, "apexPower":F
    float-to-double v6, v0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 382
    .local v2, "apexPower10":J
    long-to-float v6, v2

    const/high16 v7, 0x41200000    # 10.0f

    div-float v4, v6, v7

    .line 383
    .local v4, "fApexPower":F
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "0.##"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 384
    .local v5, "format":Ljava/text/DecimalFormat;
    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v8, v4

    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 387
    .end local v0    # "apexPower":F
    .end local v2    # "apexPower10":J
    .end local v4    # "fApexPower":F
    .end local v5    # "format":Ljava/text/DecimalFormat;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 388
    .local v0, "apexPower":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method protected getSimpleRational(I)Ljava/lang/String;
    .locals 2
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 167
    .local v0, "value":Lcom/drew/lang/Rational;
    if-nez v0, :cond_0

    .line 168
    const/4 v1, 0x0

    .line 169
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .param p1, "tag"    # I
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    const/4 v2, 0x0

    .line 274
    iget-object v3, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v3, p1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v1

    .line 276
    .local v1, "values":[B
    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-object v2

    .line 280
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method protected getVersionBytesDescription(II)Ljava/lang/String;
    .locals 2
    .param p1, "tagType"    # I
    .param p2, "majorDigits"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/drew/metadata/TagDescriptor;, "Lcom/drew/metadata/TagDescriptor<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    .line 130
    .local v0, "values":[I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p2}, Lcom/drew/metadata/TagDescriptor;->convertBytesToVersionString([II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
