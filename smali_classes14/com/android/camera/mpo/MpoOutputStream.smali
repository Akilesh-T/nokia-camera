.class Lcom/android/camera/mpo/MpoOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MpoOutputStream.java"


# static fields
.field private static final DC_CROP_INFO:Ljava/lang/String; = "Qualcomm Dual Camera Attributes"

.field private static final DC_CROP_INFO_BYTE_SIZE:I

.field private static final DEBUG:Z = true

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x3

.field private static final STATE_SKIP_CROP:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "MpoOutputStream"

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mCropInfo:Ljava/nio/ByteBuffer;

.field private mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

.field private mMpoData:Lcom/android/camera/mpo/MpoData;

.field private mMpoOffsetStart:I

.field private mSingleByteArray:[B

.field private mSize:I

.field private mSkipCropData:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "ou"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    .line 62
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    iput v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSingleByteArray:[B

    .line 55
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 56
    sget v0, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoOffsetStart:I

    .line 58
    iput v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 59
    iput-boolean v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 63
    return-void
.end method

.method private isDualCamCropInfo()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v3, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sget v4, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    if-eq v3, v4, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const-string v3, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 91
    iget-object v3, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-char v0, v3

    .line 93
    .local v0, "c":C
    const-string v3, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_0

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "requestByteCount"    # I
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v0, p2, v2

    .line 80
    .local v0, "byteNeeded":I
    if-le p5, v0, :cond_0

    move v1, v0

    .line 81
    .local v1, "byteToRead":I
    :goto_0
    invoke-virtual {p1, p3, p4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 82
    return v1

    .end local v1    # "byteToRead":I
    :cond_0
    move v1, p5

    .line 80
    goto :goto_0
.end method

.method private resetStates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 74
    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    .line 75
    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 76
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 77
    return-void
.end method

.method private updateIndexIfdOffsets(Lcom/android/camera/mpo/MpoIfdData;I)V
    .locals 7
    .param p1, "indexIfd"    # Lcom/android/camera/mpo/MpoIfdData;
    .param p2, "mpoOffset"    # I

    .prologue
    .line 309
    iget-object v4, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v4}, Lcom/android/camera/mpo/MpoData;->getPrimaryMpoImage()Lcom/android/camera/mpo/MpoImageData;

    move-result-object v4

    sget v5, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v5, v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/mpo/MpoTag;

    move-result-object v3

    .line 311
    .local v3, "mpEntryTag":Lcom/android/camera/mpo/MpoTag;
    invoke-virtual {v3}, Lcom/android/camera/mpo/MpoTag;->getMpEntryValue()Ljava/util/List;

    move-result-object v2

    .line 312
    .local v2, "mpEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/mpo/MpoTag$MpEntry;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 314
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/mpo/MpoTag$MpEntry;

    .line 315
    .local v0, "entry":Lcom/android/camera/mpo/MpoTag$MpEntry;
    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoTag$MpEntry;->getImageOffset()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-virtual {v0, v4}, Lcom/android/camera/mpo/MpoTag$MpEntry;->setImageOffset(I)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "entry":Lcom/android/camera/mpo/MpoTag$MpEntry;
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/camera/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 318
    return-void
.end method

.method private writeAllTags(Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 3
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getIndexIfdData()Lcom/android/camera/mpo/MpoIfdData;

    move-result-object v1

    .line 321
    .local v1, "indexIfd":Lcom/android/camera/mpo/MpoIfdData;
    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 323
    invoke-direct {p0, v1, p1}, Lcom/android/camera/mpo/MpoOutputStream;->writeIfd(Lcom/android/camera/mpo/MpoIfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getAttribIfdData()Lcom/android/camera/mpo/MpoIfdData;

    move-result-object v0

    .line 326
    .local v0, "attribIfd":Lcom/android/camera/mpo/MpoIfdData;
    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 327
    invoke-direct {p0, v0, p1}, Lcom/android/camera/mpo/MpoOutputStream;->writeIfd(Lcom/android/camera/mpo/MpoIfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 328
    :cond_1
    return-void
.end method

.method private writeIfd(Lcom/android/camera/mpo/MpoIfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 11
    .param p1, "ifd"    # Lcom/android/camera/mpo/MpoIfdData;
    .param p2, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v4, 0x0

    .line 330
    invoke-virtual {p1}, Lcom/android/camera/mpo/MpoIfdData;->getAllTags()[Lcom/android/camera/mpo/MpoTag;

    move-result-object v3

    .line 331
    .local v3, "tags":[Lcom/android/camera/mpo/MpoTag;
    array-length v5, v3

    int-to-short v5, v5

    invoke-virtual {p2, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 332
    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, v3, v5

    .line 333
    .local v2, "tag":Lcom/android/camera/mpo/MpoTag;
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getTagId()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 334
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getDataType()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 335
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 337
    const-string v7, "MpoOutputStream"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getDataSize()I

    move-result v7

    if-le v7, v10, :cond_1

    .line 340
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getOffset()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 332
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {v2, p2}, Lcom/android/camera/mpo/MpoOutputStream;->writeTagValue(Lcom/android/camera/mpo/MpoTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getDataSize()I

    move-result v7

    rsub-int/lit8 v1, v7, 0x4

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 344
    invoke-virtual {p2, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "tag":Lcom/android/camera/mpo/MpoTag;
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/mpo/MpoIfdData;->getOffsetToNextIfd()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 349
    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v2, v3, v4

    .line 350
    .restart local v2    # "tag":Lcom/android/camera/mpo/MpoTag;
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getDataSize()I

    move-result v6

    if-le v6, v10, :cond_3

    .line 351
    invoke-static {v2, p2}, Lcom/android/camera/mpo/MpoOutputStream;->writeTagValue(Lcom/android/camera/mpo/MpoTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 349
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 354
    .end local v2    # "tag":Lcom/android/camera/mpo/MpoTag;
    :cond_4
    return-void
.end method

.method private writeMpoData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    if-nez v2, :cond_0

    .line 306
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v2, "MpoOutputStream"

    const-string v3, "Writing mpo data..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->calculateAllIfdOffsets()I

    move-result v2

    add-int/lit8 v1, v2, 0x6

    .line 282
    .local v1, "exifSize":I
    const v2, 0xffff

    if-le v1, v2, :cond_1

    .line 283
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exif header is too large (>64Kb)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_1
    new-instance v0, Lcom/android/camera/exif/OrderedDataOutputStream;

    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 286
    .local v0, "dataOutputStream":Lcom/android/camera/exif/OrderedDataOutputStream;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 287
    const/16 v2, -0x1e

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 288
    int-to-short v2, v1

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 289
    const v2, 0x4d504600    # 2.18390528E8f

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 290
    iget v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoOffsetStart:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 291
    iget v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoOffsetStart:I

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_3

    .line 294
    const/16 v2, 0x4d4d

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 298
    :goto_1
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 299
    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 300
    const/16 v2, 0xe

    if-le v1, v2, :cond_4

    .line 301
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 302
    invoke-direct {p0, v0}, Lcom/android/camera/mpo/MpoOutputStream;->writeAllTags(Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 305
    :goto_2
    iget v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    goto :goto_0

    .line 296
    :cond_3
    const/16 v2, 0x4949

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    goto :goto_1

    .line 304
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    goto :goto_2
.end method

.method static writeTagValue(Lcom/android/camera/mpo/MpoTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 6
    .param p0, "tag"    # Lcom/android/camera/mpo/MpoTag;
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getDataType()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 391
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 358
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getStringByte()[B

    move-result-object v0

    .line 359
    .local v0, "buf":[B
    array-length v3, v0

    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 360
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v0, v3

    .line 361
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 364
    invoke-virtual {p1, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_0

    .line 369
    .end local v0    # "buf":[B
    :pswitch_2
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 370
    invoke-virtual {p0, v1}, Lcom/android/camera/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 375
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 376
    invoke-virtual {p0, v1}, Lcom/android/camera/mpo/MpoTag;->getRational(I)Lcom/android/camera/exif/Rational;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeRational(Lcom/android/camera/exif/Rational;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 381
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v3

    new-array v0, v3, [B

    .line 382
    .restart local v0    # "buf":[B
    invoke-virtual {p0, v0}, Lcom/android/camera/mpo/MpoTag;->getBytes([B)V

    .line 383
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 386
    .end local v0    # "buf":[B
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/camera/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected setMpoData(Lcom/android/camera/mpo/MpoData;)V
    .locals 1
    .param p1, "mpoData"    # Lcom/android/camera/mpo/MpoData;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    .line 70
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoData;->updateAllTags()V

    .line 71
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    return v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSingleByteArray:[B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 263
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/android/camera/mpo/MpoOutputStream;->write([B)V

    .line 264
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/mpo/MpoOutputStream;->write([BII)V

    .line 273
    return-void
.end method

.method public write([BII)V
    .locals 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    :goto_0
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    :cond_0
    if-lez p3, :cond_10

    .line 133
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    if-lez v0, :cond_1

    .line 134
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    if-le p3, v0, :cond_4

    iget v7, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    .line 135
    .local v7, "byteToProcess":I
    :goto_1
    sub-int/2addr p3, v7

    .line 136
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    .line 137
    add-int/2addr p2, v7

    .line 139
    .end local v7    # "byteToProcess":I
    :cond_1
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    if-lez v0, :cond_2

    .line 140
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    if-le p3, v0, :cond_5

    iget v7, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 141
    .restart local v7    # "byteToProcess":I
    :goto_2
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 143
    sub-int/2addr p3, v7

    .line 144
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 145
    add-int/2addr p2, v7

    .line 147
    .end local v7    # "byteToProcess":I
    :cond_2
    if-nez p3, :cond_6

    .line 255
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v7, p3

    .line 134
    goto :goto_1

    :cond_5
    move v7, p3

    .line 140
    goto :goto_2

    .line 150
    :cond_6
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 153
    .local v6, "byteRead":I
    add-int/2addr p2, v6

    .line 154
    sub-int/2addr p3, v6

    .line 155
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 158
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 159
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, -0x28

    if-eq v0, v1, :cond_7

    .line 160
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_7
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 163
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 165
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 170
    .end local v6    # "byteRead":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 172
    .restart local v6    # "byteRead":I
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 173
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 174
    .local v10, "tag":S
    const/16 v0, -0x27

    if-ne v10, v0, :cond_8

    .line 175
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 176
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 177
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 180
    .end local v10    # "tag":S
    :cond_8
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 183
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 184
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 185
    .local v8, "marker":S
    const/16 v0, -0x1f

    if-eq v8, v0, :cond_9

    const/16 v0, -0x20

    if-ne v8, v0, :cond_a

    .line 186
    :cond_9
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 187
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 188
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 189
    add-int/2addr p2, v6

    .line 190
    sub-int/2addr p3, v6

    .line 198
    :goto_4
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 192
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/mpo/MpoOutputStream;->writeMpoData()V

    .line 193
    iget-boolean v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    if-eqz v0, :cond_b

    .line 194
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    goto :goto_4

    .line 196
    :cond_b
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    goto :goto_4

    .line 201
    .end local v6    # "byteRead":I
    .end local v8    # "marker":S
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 203
    .restart local v6    # "byteRead":I
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 204
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 205
    .restart local v10    # "tag":S
    const/16 v0, -0x27

    if-ne v10, v0, :cond_c

    .line 206
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 207
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 208
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 211
    .end local v10    # "tag":S
    :cond_c
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 214
    add-int/2addr p2, v6

    .line 215
    sub-int/2addr p3, v6

    .line 216
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 217
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 218
    .restart local v8    # "marker":S
    invoke-static {v8}, Lcom/android/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v0

    if-nez v0, :cond_f

    .line 221
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    sget v2, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 222
    invoke-direct {p0}, Lcom/android/camera/mpo/MpoOutputStream;->isDualCamCropInfo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 224
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 225
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 226
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v9, v0, -0x2

    iput v9, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    .line 227
    .local v9, "sizeToClear":I
    :goto_5
    if-lez v9, :cond_d

    .line 228
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 229
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 230
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 232
    :cond_d
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 240
    .end local v9    # "sizeToClear":I
    :goto_6
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 247
    :goto_7
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 236
    :cond_e
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 237
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 238
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    goto :goto_6

    .line 243
    :cond_f
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 244
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 245
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    goto :goto_7

    .line 251
    .end local v6    # "byteRead":I
    .end local v8    # "marker":S
    :cond_10
    if-lez p3, :cond_3

    .line 252
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 253
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    goto/16 :goto_3

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeBuffer([B)V
    .locals 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 123
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 124
    return-void
.end method

.method writeMpoFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoData;->getPrimaryMpoImage()Lcom/android/camera/mpo/MpoImageData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    .line 102
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 103
    iput-boolean v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoImageData;->getJpegData()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/mpo/MpoOutputStream;->write([B)V

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoOutputStream;->flush()V

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 109
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/mpo/MpoImageData;

    .line 110
    .local v0, "image":Lcom/android/camera/mpo/MpoImageData;
    invoke-direct {p0}, Lcom/android/camera/mpo/MpoOutputStream;->resetStates()V

    .line 111
    iput-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    .line 112
    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoImageData;->isJPGFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getJpegData()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/mpo/MpoOutputStream;->write([B)V

    .line 116
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoOutputStream;->flush()V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getJpegData()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/mpo/MpoOutputStream;->writeBuffer([B)V

    goto :goto_1

    .line 118
    .end local v0    # "image":Lcom/android/camera/mpo/MpoImageData;
    :cond_2
    return-void
.end method
