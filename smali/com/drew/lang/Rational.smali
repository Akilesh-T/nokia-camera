.class public Lcom/drew/lang/Rational;
.super Ljava/lang/Number;
.source "Rational.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/drew/lang/Rational;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x71654dfd870ea02L


# instance fields
.field private final _denominator:J

.field private final _numerator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/drew/lang/Rational;->_numerator:J

    .line 57
    iput-wide p3, p0, Lcom/drew/lang/Rational;->_denominator:J

    .line 58
    return-void
.end method

.method private static GCD(JJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 308
    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    .line 309
    neg-long p0, p0

    .line 310
    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    .line 311
    neg-long p2, p2

    .line 313
    :cond_1
    :goto_0
    cmp-long v0, p0, v2

    if-eqz v0, :cond_3

    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    .line 315
    cmp-long v0, p0, p2

    if-lez v0, :cond_2

    .line 316
    rem-long/2addr p0, p2

    goto :goto_0

    .line 318
    :cond_2
    rem-long/2addr p2, p0

    goto :goto_0

    .line 321
    :cond_3
    cmp-long v0, p0, v2

    if-nez v0, :cond_4

    .end local p2    # "b":J
    :goto_1
    return-wide p2

    .restart local p2    # "b":J
    :cond_4
    move-wide p2, p0

    goto :goto_1
.end method


# virtual methods
.method public final byteValue()B
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Lcom/drew/lang/Rational;)I
    .locals 4
    .param p1, "that"    # Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Lcom/drew/lang/Rational;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/drew/lang/Rational;->compareTo(Lcom/drew/lang/Rational;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 4

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/drew/lang/Rational;->_denominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public equals(Lcom/drew/lang/Rational;)Z
    .locals 4
    .param p1, "other"    # Lcom/drew/lang/Rational;

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 275
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/drew/lang/Rational;

    if-nez v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 277
    check-cast v0, Lcom/drew/lang/Rational;

    .line 278
    .local v0, "that":Lcom/drew/lang/Rational;
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public equalsExact(Lcom/drew/lang/Rational;)Z
    .locals 4
    .param p1, "other"    # Lcom/drew/lang/Rational;

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 4

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/drew/lang/Rational;->_denominator:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getDenominator()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    return-wide v0
.end method

.method public final getNumerator()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    return-wide v0
.end method

.method public getReciprocal()Lcom/drew/lang/Rational;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lcom/drew/lang/Rational;

    iget-wide v2, p0, Lcom/drew/lang/Rational;->_denominator:J

    iget-wide v4, p0, Lcom/drew/lang/Rational;->_numerator:J

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    return-object v0
.end method

.method public getSimplifiedInstance()Lcom/drew/lang/Rational;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 301
    iget-wide v2, p0, Lcom/drew/lang/Rational;->_numerator:J

    iget-wide v4, p0, Lcom/drew/lang/Rational;->_denominator:J

    invoke-static {v2, v3, v4, v5}, Lcom/drew/lang/Rational;->GCD(JJ)J

    move-result-wide v0

    .line 303
    .local v0, "gcd":J
    new-instance v2, Lcom/drew/lang/Rational;

    iget-wide v4, p0, Lcom/drew/lang/Rational;->_numerator:J

    div-long/2addr v4, v0

    iget-wide v6, p0, Lcom/drew/lang/Rational;->_denominator:J

    div-long/2addr v6, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/drew/lang/Rational;-><init>(JJ)V

    return-object v2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x17

    iget-wide v2, p0, Lcom/drew/lang/Rational;->_numerator:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final intValue()I
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public isInteger()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 173
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    iget-wide v2, p0, Lcom/drew/lang/Rational;->_denominator:J

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 181
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final longValue()J
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public final shortValue()S
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toSimpleString(Z)Ljava/lang/String;
    .locals 12
    .param p1, "allowDecimal"    # Z
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 200
    iget-wide v4, p0, Lcom/drew/lang/Rational;->_denominator:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/drew/lang/Rational;->_numerator:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->isInteger()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_2
    iget-wide v4, p0, Lcom/drew/lang/Rational;->_numerator:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/drew/lang/Rational;->_denominator:J

    iget-wide v6, p0, Lcom/drew/lang/Rational;->_numerator:J

    rem-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    .line 206
    iget-wide v4, p0, Lcom/drew/lang/Rational;->_denominator:J

    iget-wide v6, p0, Lcom/drew/lang/Rational;->_numerator:J

    div-long v2, v4, v6

    .line 207
    .local v2, "newDenominator":J
    new-instance v4, Lcom/drew/lang/Rational;

    invoke-direct {v4, v10, v11, v2, v3}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v4, p1}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 209
    .end local v2    # "newDenominator":J
    :cond_3
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->getSimplifiedInstance()Lcom/drew/lang/Rational;

    move-result-object v1

    .line 210
    .local v1, "simplifiedInstance":Lcom/drew/lang/Rational;
    if-eqz p1, :cond_4

    .line 211
    invoke-virtual {v1}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "doubleString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_0

    .line 216
    .end local v0    # "doubleString":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/drew/lang/Rational;->_numerator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/drew/lang/Rational;->_denominator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
