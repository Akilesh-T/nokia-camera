.class public Lcom/drew/metadata/Age;
.super Ljava/lang/Object;
.source "Age.java"


# instance fields
.field private final _days:I

.field private final _hours:I

.field private final _minutes:I

.field private final _months:I

.field private final _seconds:I

.field private final _years:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I
    .param p4, "hours"    # I
    .param p5, "minutes"    # I
    .param p6, "seconds"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/drew/metadata/Age;->_years:I

    .line 75
    iput p2, p0, Lcom/drew/metadata/Age;->_months:I

    .line 76
    iput p3, p0, Lcom/drew/metadata/Age;->_days:I

    .line 77
    iput p4, p0, Lcom/drew/metadata/Age;->_hours:I

    .line 78
    iput p5, p0, Lcom/drew/metadata/Age;->_minutes:I

    .line 79
    iput p6, p0, Lcom/drew/metadata/Age;->_seconds:I

    .line 80
    return-void
.end method

.method private static appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 2
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "num"    # I
    .param p2, "singularName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x20

    .line 132
    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 138
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static fromPanasonicString(Ljava/lang/String;)Lcom/drew/metadata/Age;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v9, 0x13

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v9, :cond_0

    const-string v0, "9999:99:99"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 68
    :goto_0
    return-object v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    const/4 v9, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, "years":I
    const/4 v0, 0x5

    const/4 v9, 0x7

    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 59
    .local v2, "months":I
    const/16 v0, 0x8

    const/16 v9, 0xa

    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 60
    .local v3, "days":I
    const/16 v0, 0xb

    const/16 v9, 0xd

    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 61
    .local v4, "hours":I
    const/16 v0, 0xe

    const/16 v9, 0x10

    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 62
    .local v5, "minutes":I
    const/16 v0, 0x11

    const/16 v9, 0x13

    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 64
    .local v6, "seconds":I
    new-instance v0, Lcom/drew/metadata/Age;

    invoke-direct/range {v0 .. v6}, Lcom/drew/metadata/Age;-><init>(IIIIII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v1    # "years":I
    .end local v2    # "months":I
    .end local v3    # "days":I
    .end local v4    # "hours":I
    .end local v5    # "minutes":I
    .end local v6    # "seconds":I
    :catch_0
    move-exception v7

    .local v7, "ignored":Ljava/lang/NumberFormatException;
    move-object v0, v8

    .line 68
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-ne p0, p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 145
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

    .line 147
    check-cast v0, Lcom/drew/metadata/Age;

    .line 149
    .local v0, "age":Lcom/drew/metadata/Age;
    iget v3, p0, Lcom/drew/metadata/Age;->_days:I

    iget v4, v0, Lcom/drew/metadata/Age;->_days:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 150
    :cond_4
    iget v3, p0, Lcom/drew/metadata/Age;->_hours:I

    iget v4, v0, Lcom/drew/metadata/Age;->_hours:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 151
    :cond_5
    iget v3, p0, Lcom/drew/metadata/Age;->_minutes:I

    iget v4, v0, Lcom/drew/metadata/Age;->_minutes:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 152
    :cond_6
    iget v3, p0, Lcom/drew/metadata/Age;->_months:I

    iget v4, v0, Lcom/drew/metadata/Age;->_months:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 153
    :cond_7
    iget v3, p0, Lcom/drew/metadata/Age;->_seconds:I

    iget v4, v0, Lcom/drew/metadata/Age;->_seconds:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 154
    :cond_8
    iget v3, p0, Lcom/drew/metadata/Age;->_years:I

    iget v4, v0, Lcom/drew/metadata/Age;->_years:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getDays()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/drew/metadata/Age;->_days:I

    return v0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/drew/metadata/Age;->_hours:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/drew/metadata/Age;->_minutes:I

    return v0
.end method

.method public getMonths()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/drew/metadata/Age;->_months:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/drew/metadata/Age;->_seconds:I

    return v0
.end method

.method public getYears()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/drew/metadata/Age;->_years:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 162
    iget v0, p0, Lcom/drew/metadata/Age;->_years:I

    .line 163
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/drew/metadata/Age;->_months:I

    add-int v0, v1, v2

    .line 164
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/drew/metadata/Age;->_days:I

    add-int v0, v1, v2

    .line 165
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/drew/metadata/Age;->_hours:I

    add-int v0, v1, v2

    .line 166
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/drew/metadata/Age;->_minutes:I

    add-int v0, v1, v2

    .line 167
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/drew/metadata/Age;->_seconds:I

    add-int v0, v1, v2

    .line 168
    return v0
.end method

.method public toFriendlyString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "result":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/drew/metadata/Age;->_years:I

    const-string v2, "year"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 122
    iget v1, p0, Lcom/drew/metadata/Age;->_months:I

    const-string v2, "month"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 123
    iget v1, p0, Lcom/drew/metadata/Age;->_days:I

    const-string v2, "day"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 124
    iget v1, p0, Lcom/drew/metadata/Age;->_hours:I

    const-string v2, "hour"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 125
    iget v1, p0, Lcom/drew/metadata/Age;->_minutes:I

    const-string v2, "minute"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 126
    iget v1, p0, Lcom/drew/metadata/Age;->_seconds:I

    const-string v2, "second"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    const-string v0, "%04d:%02d:%02d %02d:%02d:%02d"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/drew/metadata/Age;->_years:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/drew/metadata/Age;->_months:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/drew/metadata/Age;->_days:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/drew/metadata/Age;->_hours:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/drew/metadata/Age;->_minutes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/drew/metadata/Age;->_seconds:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
