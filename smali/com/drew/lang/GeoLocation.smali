.class public final Lcom/drew/lang/GeoLocation;
.super Ljava/lang/Object;
.source "GeoLocation.java"


# instance fields
.field private final _latitude:D

.field private final _longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/drew/lang/GeoLocation;->_latitude:D

    .line 50
    iput-wide p3, p0, Lcom/drew/lang/GeoLocation;->_longitude:D

    .line 51
    return-void
.end method

.method public static decimalToDegreesMinutesSeconds(D)[D
    .locals 12
    .param p0, "decimal"    # D
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 96
    double-to-int v0, p0

    .line 97
    .local v0, "d":I
    rem-double v6, p0, v8

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 98
    .local v2, "m":D
    rem-double v6, v2, v8

    mul-double v4, v6, v10

    .line 99
    .local v4, "s":D
    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v6, 0x0

    int-to-double v8, v0

    aput-wide v8, v1, v6

    const/4 v6, 0x1

    double-to-int v7, v2

    int-to-double v8, v7

    aput-wide v8, v1, v6

    const/4 v6, 0x2

    aput-wide v4, v1, v6

    return-object v1
.end method

.method public static decimalToDegreesMinutesSecondsString(D)Ljava/lang/String;
    .locals 10
    .param p0, "decimal"    # D
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    invoke-static {p0, p1}, Lcom/drew/lang/GeoLocation;->decimalToDegreesMinutesSeconds(D)[D

    move-result-object v0

    .line 85
    .local v0, "dms":[D
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "format":Ljava/text/DecimalFormat;
    const-string v2, "%s\u00b0 %s\' %s\""

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aget-wide v4, v0, v6

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aget-wide v4, v0, v7

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aget-wide v4, v0, v8

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static degreesMinutesSecondsToDecimal(Lcom/drew/lang/Rational;Lcom/drew/lang/Rational;Lcom/drew/lang/Rational;Z)Ljava/lang/Double;
    .locals 8
    .param p0, "degs"    # Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "mins"    # Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "secs"    # Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "isNegative"    # Z
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-virtual {p2}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v6

    add-double v0, v2, v4

    .line 113
    .local v0, "decimal":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const/4 v2, 0x0

    .line 119
    :goto_0
    return-object v2

    .line 116
    :cond_0
    if-eqz p3, :cond_1

    .line 117
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v2

    .line 119
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    if-ne p0, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 127
    check-cast v0, Lcom/drew/lang/GeoLocation;

    .line 128
    .local v0, "that":Lcom/drew/lang/GeoLocation;
    iget-wide v4, v0, Lcom/drew/lang/GeoLocation;->_latitude:D

    iget-wide v6, p0, Lcom/drew/lang/GeoLocation;->_latitude:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 129
    :cond_4
    iget-wide v4, v0, Lcom/drew/lang/GeoLocation;->_longitude:D

    iget-wide v6, p0, Lcom/drew/lang/GeoLocation;->_longitude:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/drew/lang/GeoLocation;->_latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/drew/lang/GeoLocation;->_longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/16 v10, 0x20

    const-wide/16 v8, 0x0

    .line 138
    iget-wide v6, p0, Lcom/drew/lang/GeoLocation;->_latitude:D

    cmpl-double v1, v6, v8

    if-eqz v1, :cond_0

    iget-wide v6, p0, Lcom/drew/lang/GeoLocation;->_latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 139
    .local v2, "temp":J
    :goto_0
    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v0, v6

    .line 140
    .local v0, "result":I
    iget-wide v6, p0, Lcom/drew/lang/GeoLocation;->_longitude:D

    cmpl-double v1, v6, v8

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/drew/lang/GeoLocation;->_longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 141
    :goto_1
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v10

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 142
    return v0

    .end local v0    # "result":I
    .end local v2    # "temp":J
    :cond_0
    move-wide v2, v4

    .line 138
    goto :goto_0

    .restart local v0    # "result":I
    .restart local v2    # "temp":J
    :cond_1
    move-wide v2, v4

    .line 140
    goto :goto_1
.end method

.method public isZero()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 74
    iget-wide v0, p0, Lcom/drew/lang/GeoLocation;->_latitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/drew/lang/GeoLocation;->_longitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toDMSString()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/drew/lang/GeoLocation;->_latitude:D

    invoke-static {v2, v3}, Lcom/drew/lang/GeoLocation;->decimalToDegreesMinutesSecondsString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/drew/lang/GeoLocation;->_longitude:D

    invoke-static {v2, v3}, Lcom/drew/lang/GeoLocation;->decimalToDegreesMinutesSecondsString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/drew/lang/GeoLocation;->_latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/drew/lang/GeoLocation;->_longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
