.class public Lcom/android/camera/gdepth/GdpethDataFilter;
.super Ljava/lang/Object;
.source "GdpethDataFilter.java"


# static fields
.field private static final BOKEHTYPE:I = 0x1

.field private static final BOKELENGTH:I = 0x4

.field private static final H_LENGTH:I = 0x5a

.field private static final L_LENGTH:I = 0xa5

.field private static final M_APP1:I = 0xe1

.field private static final M_EOI:I = 0xd9

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private endmarkerlength:I

.field private isParseByEOI:Z

.field private mDepthData:[B

.field private mDepthlength:I

.field private mMixdata:[B

.field private mPrimaryData:[B

.field private type:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "GdpethDataFilter"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 6
    .param p1, "mMixdata"    # [B
    .param p2, "type"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->isParseByEOI:Z

    .line 29
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->endmarkerlength:I

    .line 33
    iput-object p1, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mMixdata:[B

    .line 34
    iput-boolean p2, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->type:Z

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 36
    .local v0, "starttime":J
    iget-boolean v2, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->isParseByEOI:Z

    if-eqz v2, :cond_0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/gdepth/GdpethDataFilter;->splitMixDataByEOI([B)V

    .line 41
    :goto_0
    sget-object v2, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDepthDatacosttime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    return-void

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/gdepth/GdpethDataFilter;->splitMixData([B)V

    goto :goto_0
.end method

.method public static bytesToInt([BI)I
    .locals 3
    .param p0, "src"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 131
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 135
    .local v0, "value":I
    return v0
.end method

.method private checkDepthDataLength(II)Z
    .locals 2
    .param p1, "jpeglength"    # I
    .param p2, "depthlength"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mMixdata:[B

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/gdepth/GdpethDataFilter;->bytesToInt([BI)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkEndDataisNull([B)Z
    .locals 8
    .param p1, "bytes"    # [B

    .prologue
    const/16 v7, 0xff

    const/16 v6, 0xd9

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v7, :cond_1

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v6, :cond_1

    .line 144
    iput v2, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->endmarkerlength:I

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_4

    .line 149
    if-ge v0, v5, :cond_2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa5

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 150
    goto :goto_0

    .line 151
    :cond_2
    if-lt v0, v5, :cond_3

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 152
    goto :goto_0

    .line 148
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_4
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v7, :cond_0

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v6, :cond_0

    move v1, v2

    .line 156
    goto :goto_0
.end method

.method private splitMixData([B)V
    .locals 7
    .param p1, "mMixdata"    # [B

    .prologue
    const/4 v3, 0x0

    .line 101
    sget-object v4, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "splitMixData start"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    array-length v2, p1

    .line 103
    .local v2, "totallength":I
    const/4 v4, 0x6

    new-array v0, v4, [B

    .line 104
    .local v0, "bytes":[B
    add-int/lit8 v4, v2, -0x6

    array-length v5, v0

    invoke-static {p1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-direct {p0, v0}, Lcom/android/camera/gdepth/GdpethDataFilter;->checkEndDataisNull([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    sget-object v4, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "no depth data :The end  bytes is A5A55A5A or FFD9"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget v4, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->endmarkerlength:I

    sub-int v4, v2, v4

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mPrimaryData:[B

    .line 108
    iget-object v4, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mPrimaryData:[B

    iget-object v5, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mPrimaryData:[B

    array-length v5, v5

    invoke-static {p1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    add-int/lit8 v4, v2, -0x4

    invoke-static {p1, v4}, Lcom/android/camera/gdepth/GdpethDataFilter;->bytesToInt([BI)I

    move-result v1

    .line 112
    .local v1, "jpeglength":I
    sget-object v4, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jpeglength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    if-lez v1, :cond_0

    .line 114
    sget-object v4, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "split depthdata and bokehdata"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mPrimaryData:[B

    .line 116
    iget-object v4, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mPrimaryData:[B

    iget-object v5, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mPrimaryData:[B

    array-length v5, v5

    invoke-static {p1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    sub-int v4, v2, v1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x8

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mDepthData:[B

    .line 118
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mDepthData:[B

    iget-object v6, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mDepthData:[B

    array-length v6, v6

    invoke-static {p1, v4, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    sget-object v4, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDepthData.length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mDepthData:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mDepthData:[B

    array-length v4, v4

    invoke-direct {p0, v1, v4}, Lcom/android/camera/gdepth/GdpethDataFilter;->checkDepthDataLength(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 121
    sget-object v4, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "the length is wrong"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    :goto_1
    aget-byte v4, p1, v1

    const/16 v5, 0x11

    if-eq v4, v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->type:Z

    goto :goto_0

    .line 123
    :cond_3
    sget-object v4, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "the length is right"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private splitMixDataByEOI([B)V
    .locals 14
    .param p1, "mMixdata"    # [B

    .prologue
    .line 47
    sget-object v12, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v13, "splitMixDataByEOI start"

    invoke-static {v12, v13}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 49
    .local v2, "is":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    const/16 v13, 0xff

    if-ne v12, v13, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    const/16 v13, 0xd8

    if-eq v12, v13, :cond_2

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    .local v1, "c":I
    .local v4, "lh":I
    .local v6, "ll":I
    .local v11, "marker":I
    :cond_1
    shl-int/lit8 v12, v4, 0x8

    or-int v3, v12, v6

    .line 96
    .local v3, "length":I
    add-int/lit8 v12, v3, -0x2

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 53
    .end local v1    # "c":I
    .end local v3    # "length":I
    .end local v4    # "lh":I
    .end local v6    # "ll":I
    .end local v11    # "marker":I
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .restart local v1    # "c":I
    const/4 v12, -0x1

    if-eq v1, v12, :cond_0

    .line 54
    const/16 v12, 0xff

    if-ne v1, v12, :cond_0

    .line 58
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    const/16 v12, 0xff

    if-eq v1, v12, :cond_3

    .line 60
    const/4 v12, -0x1

    if-eq v1, v12, :cond_0

    .line 63
    move v11, v1

    .line 65
    .restart local v11    # "marker":I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 66
    .restart local v4    # "lh":I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .line 67
    .restart local v6    # "ll":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_0

    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    .line 70
    const/16 v12, 0xda

    if-ne v11, v12, :cond_1

    .line 71
    shl-int/lit8 v12, v4, 0x8

    or-int v0, v12, v6

    .line 72
    .local v0, "SOSlength":I
    add-int/lit8 v12, v0, -0x2

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 73
    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    const/4 v12, -0x1

    if-eq v1, v12, :cond_2

    .line 74
    const/16 v12, 0xff

    if-ne v1, v12, :cond_4

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    const/16 v13, 0xd9

    if-ne v12, v13, :cond_4

    .line 75
    sget-object v12, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v13, "read_EOI_start"

    invoke-static {v12, v13}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    .line 77
    .local v10, "lt":I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 78
    .local v5, "lk":I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 79
    .local v7, "lm":I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 80
    .local v8, "ln":I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    .line 81
    .local v9, "lo":I
    const/4 v12, -0x1

    if-eq v10, v12, :cond_0

    const/4 v12, -0x1

    if-eq v5, v12, :cond_0

    const/4 v12, -0x1

    if-eq v7, v12, :cond_0

    const/4 v12, -0x1

    if-eq v8, v12, :cond_0

    const/4 v12, -0x1

    if-eq v9, v12, :cond_0

    .line 84
    shl-int/lit8 v12, v9, 0x18

    shl-int/lit8 v13, v8, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v7, 0x8

    or-int/2addr v12, v13

    or-int v3, v12, v5

    .line 85
    .restart local v3    # "length":I
    const/16 v12, 0x11

    if-eq v10, v12, :cond_5

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->type:Z

    .line 86
    iput v3, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mDepthlength:I

    .line 87
    new-array v12, v3, [B

    iput-object v12, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mDepthData:[B

    .line 88
    iget-object v12, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mDepthData:[B

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    goto/16 :goto_0

    .line 85
    :cond_5
    const/4 v12, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getBokehType()Z
    .locals 3

    .prologue
    .line 177
    sget-object v0, Lcom/android/camera/gdepth/GdpethDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BokehType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->type:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-boolean v0, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->type:Z

    return v0
.end method

.method public getDepthData()[B
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mDepthData:[B

    return-object v0
.end method

.method public getPrimaryData()[B
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->isParseByEOI:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/gdepth/GdpethDataFilter;->getPrimaryDataByEOI()[B

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mPrimaryData:[B

    goto :goto_0
.end method

.method public getPrimaryDataByEOI()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    iget v1, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mDepthlength:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mMixdata:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mDepthlength:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v1, -0x4

    .line 163
    .local v0, "capacity":I
    :goto_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mPrimaryData:[B

    .line 164
    iget-object v1, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mMixdata:[B

    iget-object v2, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mPrimaryData:[B

    iget-object v3, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mPrimaryData:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v1, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mPrimaryData:[B

    return-object v1

    .line 162
    .end local v0    # "capacity":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/gdepth/GdpethDataFilter;->mMixdata:[B

    array-length v0, v1

    goto :goto_0
.end method
