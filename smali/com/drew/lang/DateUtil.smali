.class public Lcom/drew/lang/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static _daysInMonth365:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/drew/lang/DateUtil;->_daysInMonth365:[I

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidDate(III)Z
    .locals 5
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 12
    if-lt p0, v2, :cond_0

    const/16 v4, 0x270f

    if-gt p0, v4, :cond_0

    if-ltz p1, :cond_0

    const/16 v4, 0xb

    if-le p1, v4, :cond_2

    :cond_0
    move v2, v3

    .line 23
    :cond_1
    :goto_0
    return v2

    .line 15
    :cond_2
    sget-object v4, Lcom/drew/lang/DateUtil;->_daysInMonth365:[I

    aget v0, v4, p1

    .line 16
    .local v0, "daysInMonth":I
    if-ne p1, v2, :cond_4

    .line 18
    rem-int/lit8 v4, p0, 0x4

    if-nez v4, :cond_6

    rem-int/lit8 v4, p0, 0x64

    if-nez v4, :cond_3

    rem-int/lit16 v4, p0, 0x190

    if-nez v4, :cond_6

    :cond_3
    move v1, v2

    .line 19
    .local v1, "isLeapYear":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 23
    .end local v1    # "isLeapYear":Z
    :cond_4
    if-lt p2, v2, :cond_5

    if-le p2, v0, :cond_1

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    move v1, v3

    .line 18
    goto :goto_1
.end method

.method public static isValidTime(III)Z
    .locals 2
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .prologue
    const/16 v1, 0x3c

    .line 28
    if-ltz p0, :cond_0

    const/16 v0, 0x18

    if-ge p0, v0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
