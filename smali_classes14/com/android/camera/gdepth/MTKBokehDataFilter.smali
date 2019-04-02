.class public Lcom/android/camera/gdepth/MTKBokehDataFilter;
.super Ljava/lang/Object;
.source "MTKBokehDataFilter.java"


# static fields
.field private static final L_DEPTH_HEAD:I = 0x4

.field private static final M_APP1:I = 0xe1

.field private static final M_APP15:I = 0xef

.field private static final M_EOI:I = 0xd9

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final TYPE_DEPTH:Ljava/lang/String; = "44455054484246"

.field private static final TYPE_IMAGE:Ljava/lang/String; = "434C52494D4147"


# instance fields
.field datatype:Ljava/lang/String;

.field private hasAPP15Marker:Z

.field private isParseByEOI:Z

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mDepthData:Ljava/nio/ByteBuffer;

.field private mImageData:Ljava/nio/ByteBuffer;

.field private mMixdata:[B

.field private mState:I

.field private out:Ljava/io/ByteArrayOutputStream;

.field parseImagelength:I

.field parsedepthlength:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MTKBokehDataFilter"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 6
    .param p1, "mMixdata"    # [B
    .param p2, "type"    # Z

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->isParseByEOI:Z

    .line 30
    iput-boolean v3, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->hasAPP15Marker:Z

    .line 167
    iput v3, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToSkip:I

    .line 168
    iput v3, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToCopy:I

    .line 169
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->out:Ljava/io/ByteArrayOutputStream;

    .line 173
    const v2, 0xffff

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    .line 174
    iput v3, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mState:I

    .line 175
    const-string v2, ""

    iput-object v2, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->datatype:Ljava/lang/String;

    .line 176
    iput v3, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->parseImagelength:I

    .line 177
    iput v3, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->parsedepthlength:I

    .line 33
    sget-object v2, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMixdata.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 35
    array-length v2, p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mDepthData:Ljava/nio/ByteBuffer;

    .line 36
    array-length v2, p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mImageData:Ljava/nio/ByteBuffer;

    .line 37
    iput-object p1, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mMixdata:[B

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    .local v0, "starttime":J
    iget-boolean v2, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->isParseByEOI:Z

    if-eqz v2, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/gdepth/MTKBokehDataFilter;->splitMixDataByEOI([B)V

    .line 43
    :cond_0
    sget-object v2, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splitDatacosttime "

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

    .line 45
    return-void
.end method

.method private parsesingleSession([BIIJ)V
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "sessionlength"    # I
    .param p3, "offset"    # I
    .param p4, "starttime"    # J

    .prologue
    const/4 v6, 0x7

    .line 271
    array-length v1, p1

    .line 272
    .local v1, "length":I
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 273
    const/4 v5, 0x4

    invoke-direct {p0, v5, p1, p3, v1}, Lcom/android/camera/gdepth/MTKBokehDataFilter;->requestByteToBuffer(I[BII)I

    .line 274
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 275
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 276
    .local v4, "totallength":I
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 277
    add-int/lit8 v5, p3, 0x4

    invoke-direct {p0, v6, p1, v5, v1}, Lcom/android/camera/gdepth/MTKBokehDataFilter;->requestByteToBuffer(I[BII)I

    .line 278
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 279
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 280
    .local v3, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 281
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->datatype:Ljava/lang/String;

    .line 285
    const/4 v5, 0x1

    add-int/lit8 v6, p3, 0xb

    invoke-direct {p0, v5, p1, v6, v1}, Lcom/android/camera/gdepth/MTKBokehDataFilter;->requestByteToBuffer(I[BII)I

    .line 286
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 287
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v2, v5, 0xff

    .line 288
    .local v2, "num":I
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 289
    add-int/lit8 v5, p2, -0xe

    add-int/lit8 v6, p3, 0xc

    invoke-direct {p0, v5, p1, v6, v1}, Lcom/android/camera/gdepth/MTKBokehDataFilter;->requestByteToBuffer(I[BII)I

    .line 290
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 291
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->datatype:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "44455054484246"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 292
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mDepthData:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 293
    iget v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->parsedepthlength:I

    add-int/lit8 v6, p2, -0xe

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->parsedepthlength:I

    .line 294
    iget v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->parsedepthlength:I

    if-ne v4, v5, :cond_1

    .line 295
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mDepthData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 296
    sget-object v5, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "depth parse success"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 308
    return-void

    .line 298
    :cond_2
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->datatype:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "434C52494D4147"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mImageData:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 300
    iget v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->parseImagelength:I

    add-int/lit8 v6, p2, -0xe

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->parseImagelength:I

    .line 301
    iget v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->parseImagelength:I

    if-ne v4, v5, :cond_1

    .line 302
    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mImageData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 303
    sget-object v5, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "image parse success"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 3
    .param p1, "requestByteCount"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v0, p1, v2

    .line 266
    .local v0, "byteNeeded":I
    if-le p4, v0, :cond_0

    move v1, v0

    .line 267
    .local v1, "byteToRead":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 268
    return v1

    .end local v1    # "byteToRead":I
    :cond_0
    move v1, p4

    .line 266
    goto :goto_0
.end method

.method private splitMixDataByEOI([B)V
    .locals 27
    .param p1, "mMixdata"    # [B

    .prologue
    .line 49
    sget-object v24, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v25, "splitMixDataByEOI start"

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    const-string v3, ""

    .line 51
    .local v3, "datatype":Ljava/lang/String;
    const/16 v17, 0x0

    .line 52
    .local v17, "parseImagelength":I
    const/16 v18, 0x0

    .line 53
    .local v18, "parsedepthlength":I
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 54
    .local v7, "is":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v24

    const/16 v25, 0xff

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v24

    const/16 v25, 0xd8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 130
    :cond_0
    return-void

    .line 88
    .local v2, "c":I
    .local v5, "i":I
    .local v9, "lh":I
    .local v10, "ll":I
    .local v11, "lm":I
    .local v12, "ln":I
    .local v13, "lo":I
    .local v14, "lp":I
    .local v15, "marker":I
    .local v19, "sessionlength":I
    .local v22, "stringBuffer":Ljava/lang/StringBuffer;
    .local v23, "totallength":I
    :cond_1
    sget-object v24, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sessionlength = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    sget-object v24, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "totallength = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    sget-object v24, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Hextype = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    sget-object v24, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "imagetype = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v16

    .line 98
    .local v16, "numCount":I
    sget-object v24, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "numCount ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "44455054484246"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 100
    add-int/lit8 v24, v19, -0xe

    move/from16 v0, v24

    new-array v4, v0, [B

    .line 101
    .local v4, "depthData":[B
    const/16 v24, 0x0

    add-int/lit8 v25, v19, -0xe

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v4, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mDepthData:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 103
    sget-object v24, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "depth_sessionlength = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v19, -0xe

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    add-int/lit8 v24, v19, -0xe

    add-int v18, v18, v24

    .line 105
    move/from16 v0, v23

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mDepthData:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 107
    sget-object v24, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v25, "depth parse success"

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    .end local v2    # "c":I
    .end local v4    # "depthData":[B
    .end local v5    # "i":I
    .end local v9    # "lh":I
    .end local v10    # "ll":I
    .end local v11    # "lm":I
    .end local v12    # "ln":I
    .end local v13    # "lo":I
    .end local v14    # "lp":I
    .end local v15    # "marker":I
    .end local v16    # "numCount":I
    .end local v19    # "sessionlength":I
    .end local v22    # "stringBuffer":Ljava/lang/StringBuffer;
    .end local v23    # "totallength":I
    :cond_2
    :goto_0
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .restart local v2    # "c":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v2, v0, :cond_0

    .line 59
    const/16 v24, 0xff

    move/from16 v0, v24

    if-ne v2, v0, :cond_0

    .line 63
    :cond_3
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    const/16 v24, 0xff

    move/from16 v0, v24

    if-eq v2, v0, :cond_3

    .line 65
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v2, v0, :cond_0

    .line 68
    move v15, v2

    .line 70
    .restart local v15    # "marker":I
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    .line 71
    .restart local v9    # "lh":I
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    .line 72
    .restart local v10    # "ll":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v9, v0, :cond_0

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v10, v0, :cond_0

    .line 76
    const/16 v24, 0xef

    move/from16 v0, v24

    if-ne v15, v0, :cond_5

    .line 77
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/gdepth/MTKBokehDataFilter;->hasAPP15Marker:Z

    .line 78
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    .line 79
    .restart local v11    # "lm":I
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    .line 80
    .restart local v12    # "ln":I
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    .line 81
    .restart local v13    # "lo":I
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    .line 82
    .restart local v14    # "lp":I
    shl-int/lit8 v24, v9, 0x8

    or-int v19, v24, v10

    .line 83
    .restart local v19    # "sessionlength":I
    shl-int/lit8 v24, v11, 0x18

    shl-int/lit8 v25, v12, 0x10

    or-int v24, v24, v25

    shl-int/lit8 v25, v13, 0x8

    or-int v24, v24, v25

    or-int v23, v24, v14

    .line 84
    .restart local v23    # "totallength":I
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .restart local v22    # "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ge v5, v0, :cond_1

    .line 86
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 109
    .restart local v16    # "numCount":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "434C52494D4147"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 111
    .local v20, "starttime":J
    add-int/lit8 v24, v19, -0xe

    move/from16 v0, v24

    new-array v6, v0, [B

    .line 112
    .local v6, "imageData":[B
    const/16 v24, 0x0

    add-int/lit8 v25, v19, -0xe

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v6, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mImageData:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 114
    sget-object v24, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "image_sessionlength = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v19, -0xe

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    add-int/lit8 v24, v19, -0xe

    add-int v17, v17, v24

    .line 116
    move/from16 v0, v23

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mImageData:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 118
    sget-object v24, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v25, "image parse success"

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v5    # "i":I
    .end local v6    # "imageData":[B
    .end local v11    # "lm":I
    .end local v12    # "ln":I
    .end local v13    # "lo":I
    .end local v14    # "lp":I
    .end local v16    # "numCount":I
    .end local v19    # "sessionlength":I
    .end local v20    # "starttime":J
    .end local v22    # "stringBuffer":Ljava/lang/StringBuffer;
    .end local v23    # "totallength":I
    :cond_5
    const/16 v24, 0xda

    move/from16 v0, v24

    if-eq v15, v0, :cond_0

    .line 126
    shl-int/lit8 v24, v9, 0x8

    or-int v8, v24, v10

    .line 127
    .local v8, "length":I
    add-int/lit8 v24, v8, -0x2

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/io/ByteArrayInputStream;->skip(J)J

    goto/16 :goto_0
.end method


# virtual methods
.method public getClearData()[B
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mImageData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 145
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mImageData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 146
    iget-boolean v1, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->hasAPP15Marker:Z

    if-eqz v1, :cond_0

    .end local v0    # "bytes":[B
    :goto_0
    return-object v0

    .restart local v0    # "bytes":[B
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDepthData()[B
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x4

    .line 150
    iget-object v6, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mDepthData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v0, v6, [B

    .line 151
    .local v0, "bytes":[B
    iget-object v6, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mDepthData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 152
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 153
    .local v2, "head":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0, v10, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 155
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const v7, 0xffffff

    and-int v3, v6, v7

    .line 156
    .local v3, "headlength":I
    sget-object v6, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getDepthData]length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    if-nez v3, :cond_0

    .line 158
    sget-object v6, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "depth header is 0,so depthdata = null"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-object v5

    .line 161
    :cond_0
    array-length v6, v0

    add-int/lit8 v4, v6, -0x4

    .line 162
    .local v4, "length":I
    new-array v1, v4, [B

    .line 163
    .local v1, "depthmap":[B
    invoke-static {v0, v9, v1, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget-boolean v6, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->hasAPP15Marker:Z

    if-eqz v6, :cond_1

    .end local v1    # "depthmap":[B
    :goto_1
    move-object v5, v1

    goto :goto_0

    .restart local v1    # "depthmap":[B
    :cond_1
    move-object v1, v5

    goto :goto_1
.end method

.method public getPrimaryData()[B
    .locals 8

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 134
    .local v2, "starttime":J
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mMixdata:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mMixdata:[B

    array-length v5, v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/camera/gdepth/MTKBokehDataFilter;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    sget-object v1, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPrimaryData costtime  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    iget-boolean v1, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->hasAPP15Marker:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :goto_1
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mMixdata:[B

    goto :goto_1
.end method

.method public write([BII)V
    .locals 18
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 181
    .local v8, "starttime":J
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToSkip:I

    if-gtz v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToCopy:I

    if-gtz v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mState:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_c

    :cond_0
    if-lez p3, :cond_c

    .line 183
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToSkip:I

    if-lez v13, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToSkip:I

    move/from16 v0, p3

    if-le v0, v13, :cond_4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToSkip:I

    .line 185
    .local v5, "byteToProcess":I
    :goto_1
    sub-int p3, p3, v5

    .line 186
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToSkip:I

    sub-int/2addr v13, v5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToSkip:I

    .line 187
    add-int p2, p2, v5

    .line 189
    .end local v5    # "byteToProcess":I
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToCopy:I

    if-lez v13, :cond_2

    .line 190
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToCopy:I

    move/from16 v0, p3

    if-le v0, v13, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToCopy:I

    .line 191
    .restart local v5    # "byteToProcess":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->out:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 192
    sub-int p3, p3, v5

    .line 193
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToCopy:I

    sub-int/2addr v13, v5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToCopy:I

    .line 194
    add-int p2, p2, v5

    .line 196
    .end local v5    # "byteToProcess":I
    :cond_2
    if-nez p3, :cond_6

    .line 262
    :cond_3
    :goto_3
    return-void

    :cond_4
    move/from16 v5, p3

    .line 184
    goto :goto_1

    :cond_5
    move/from16 v5, p3

    .line 190
    goto :goto_2

    .line 199
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mState:I

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    const/4 v13, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/camera/gdepth/MTKBokehDataFilter;->requestByteToBuffer(I[BII)I

    move-result v4

    .line 202
    .local v4, "byteRead":I
    add-int p2, p2, v4

    .line 203
    sub-int p3, p3, v4

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v14, :cond_3

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    const/16 v14, -0x28

    if-eq v13, v14, :cond_7

    .line 209
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 211
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->out:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x2

    invoke-virtual/range {v13 .. v16}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 212
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mState:I

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 218
    .end local v4    # "byteRead":I
    :pswitch_1
    const/4 v13, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/camera/gdepth/MTKBokehDataFilter;->requestByteToBuffer(I[BII)I

    move-result v4

    .line 219
    .restart local v4    # "byteRead":I
    add-int p2, p2, v4

    .line 220
    sub-int p3, p3, v4

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    .line 224
    .local v12, "tag":S
    const/16 v13, -0x27

    if-ne v12, v13, :cond_8

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->out:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x2

    invoke-virtual/range {v13 .. v16}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 229
    .end local v12    # "tag":S
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    const/4 v14, 0x4

    if-lt v13, v14, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 234
    .local v6, "marker":S
    const/16 v13, -0x1f

    if-ne v6, v13, :cond_9

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    const v14, 0xffff

    and-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToSkip:I

    .line 236
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mState:I

    .line 253
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 237
    :cond_9
    const/16 v13, -0x11

    if-ne v6, v13, :cond_a

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    const v14, 0xffff

    and-int v7, v13, v14

    .line 239
    .local v7, "sessionlength":I
    add-int/lit8 v13, v7, -0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToSkip:I

    .line 243
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mState:I

    goto :goto_4

    .line 244
    .end local v7    # "sessionlength":I
    :cond_a
    invoke-static {v6}, Lcom/android/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v13

    if-nez v13, :cond_b

    .line 245
    sget-object v13, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "JpegHeader.isSofMarker = false"

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->out:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    invoke-virtual/range {v13 .. v16}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    const v14, 0xffff

    and-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mByteToCopy:I

    goto :goto_4

    .line 250
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->out:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    invoke-virtual/range {v13 .. v16}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 251
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->mState:I

    goto :goto_4

    .line 256
    .end local v4    # "byteRead":I
    .end local v6    # "marker":S
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 257
    .local v10, "starttime1":J
    if-lez p3, :cond_d

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/gdepth/MTKBokehDataFilter;->out:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 260
    :cond_d
    sget-object v13, Lcom/android/camera/gdepth/MTKBokehDataFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cost time primary = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
