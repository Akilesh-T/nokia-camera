.class public Lcom/pedro/encoder/utils/gl/gif/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BYTES_PER_INTEGER:I = 0x4

.field private static final DISPOSAL_BACKGROUND:I = 0x2

.field private static final DISPOSAL_NONE:I = 0x1

.field private static final DISPOSAL_PREVIOUS:I = 0x3

.field private static final DISPOSAL_UNSPECIFIED:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field static final LOOP_FOREVER:I = -0x1

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field static final STATUS_FORMAT_ERROR:I = 0x1

.field static final STATUS_OK:I = 0x0

.field static final STATUS_OPEN_ERROR:I = 0x2

.field static final STATUS_PARTIAL_DECODE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final WORK_BUFFER_SIZE:I = 0x4000


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

.field private block:[B

.field private downsampledHeight:I

.field private downsampledWidth:I

.field private framePointer:I

.field private header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

.field private isFirstFrameTransparent:Z

.field private loopIndex:I

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/pedro/encoder/utils/gl/gif/GifHeaderParser;

.field private final pct:[I

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private sampleSize:I

.field private savePrevious:Z

.field private status:I

.field private suffix:[B

.field private workBuffer:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private workBufferPosition:I

.field private workBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/pedro/encoder/utils/gl/gif/SimpleBitmapProvider;

    invoke-direct {v0}, Lcom/pedro/encoder/utils/gl/gif/SimpleBitmapProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;-><init>(Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->pct:[I

    .line 118
    iput v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferSize:I

    .line 119
    iput v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    .line 199
    iput-object p1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    .line 200
    new-instance v0, Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    invoke-direct {v0}, Lcom/pedro/encoder/utils/gl/gif/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    .line 201
    return-void
.end method

.method public constructor <init>(Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;Lcom/pedro/encoder/utils/gl/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "provider"    # Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;
    .param p2, "gifHeader"    # Lcom/pedro/encoder/utils/gl/gif/GifHeader;
    .param p3, "rawData"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;-><init>(Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;Lcom/pedro/encoder/utils/gl/gif/GifHeader;Ljava/nio/ByteBuffer;I)V

    .line 190
    return-void
.end method

.method public constructor <init>(Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;Lcom/pedro/encoder/utils/gl/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "provider"    # Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;
    .param p2, "gifHeader"    # Lcom/pedro/encoder/utils/gl/gif/GifHeader;
    .param p3, "rawData"    # Ljava/nio/ByteBuffer;
    .param p4, "sampleSize"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;-><init>(Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;)V

    .line 195
    invoke-virtual {p0, p2, p3, p4}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->setData(Lcom/pedro/encoder/utils/gl/gif/GifHeader;Ljava/nio/ByteBuffer;I)V

    .line 196
    return-void
.end method

.method private averageColorsNear(III)I
    .locals 10
    .param p1, "positionInMainPixels"    # I
    .param p2, "maxPositionInMainPixels"    # I
    .param p3, "currentFrameIw"    # I

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "alphaSum":I
    const/4 v6, 0x0

    .line 677
    .local v6, "redSum":I
    const/4 v4, 0x0

    .line 678
    .local v4, "greenSum":I
    const/4 v1, 0x0

    .line 680
    .local v1, "blueSum":I
    const/4 v7, 0x0

    .line 682
    .local v7, "totalAdded":I
    move v5, p1

    .line 684
    .local v5, "i":I
    :goto_0
    iget v8, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    add-int/2addr v8, p1

    if-ge v5, v8, :cond_1

    iget-object v8, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    array-length v8, v8

    if-ge v5, v8, :cond_1

    if-ge v5, p2, :cond_1

    .line 685
    iget-object v8, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    aget-byte v8, v8, v5

    and-int/lit16 v3, v8, 0xff

    .line 686
    .local v3, "currentColorIndex":I
    iget-object v8, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->act:[I

    aget v2, v8, v3

    .line 687
    .local v2, "currentColor":I
    if-eqz v2, :cond_0

    .line 688
    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v0, v8

    .line 689
    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 690
    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 691
    and-int/lit16 v8, v2, 0xff

    add-int/2addr v1, v8

    .line 692
    add-int/lit8 v7, v7, 0x1

    .line 684
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 696
    .end local v2    # "currentColor":I
    .end local v3    # "currentColorIndex":I
    :cond_1
    add-int v5, p1, p3

    .line 698
    :goto_1
    add-int v8, p1, p3

    iget v9, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    add-int/2addr v8, v9

    if-ge v5, v8, :cond_3

    iget-object v8, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    array-length v8, v8

    if-ge v5, v8, :cond_3

    if-ge v5, p2, :cond_3

    .line 699
    iget-object v8, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    aget-byte v8, v8, v5

    and-int/lit16 v3, v8, 0xff

    .line 700
    .restart local v3    # "currentColorIndex":I
    iget-object v8, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->act:[I

    aget v2, v8, v3

    .line 701
    .restart local v2    # "currentColor":I
    if-eqz v2, :cond_2

    .line 702
    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v0, v8

    .line 703
    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 704
    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 705
    and-int/lit16 v8, v2, 0xff

    add-int/2addr v1, v8

    .line 706
    add-int/lit8 v7, v7, 0x1

    .line 698
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 709
    .end local v2    # "currentColor":I
    .end local v3    # "currentColorIndex":I
    :cond_3
    if-nez v7, :cond_4

    .line 710
    const/4 v8, 0x0

    .line 712
    :goto_2
    return v8

    :cond_4
    div-int v8, v0, v7

    shl-int/lit8 v8, v8, 0x18

    div-int v9, v6, v7

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    div-int v9, v4, v7

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    div-int v9, v1, v7

    or-int/2addr v8, v9

    goto :goto_2
.end method

.method private decodeBitmapData(Lcom/pedro/encoder/utils/gl/gif/GifFrame;)V
    .locals 24
    .param p1, "frame"    # Lcom/pedro/encoder/utils/gl/gif/GifFrame;

    .prologue
    .line 723
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferSize:I

    .line 724
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    .line 725
    if-eqz p1, :cond_0

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->bufferFrameStart:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 730
    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->width:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->height:I

    move/from16 v23, v0

    mul-int v16, v22, v23

    .line 735
    .local v16, "npix":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 737
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    .line 739
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 740
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v0, v0, [S

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->prefix:[S

    .line 742
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 743
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->suffix:[B

    .line 745
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    .line 746
    const/16 v22, 0x1001

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->pixelStack:[B

    .line 750
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->readByte()I

    move-result v10

    .line 751
    .local v10, "dataSize":I
    const/16 v22, 0x1

    shl-int v5, v22, v10

    .line 752
    .local v5, "clear":I
    add-int/lit8 v12, v5, 0x1

    .line 753
    .local v12, "endOfInformation":I
    add-int/lit8 v2, v5, 0x2

    .line 754
    .local v2, "available":I
    const/16 v17, -0x1

    .line 755
    .local v17, "oldCode":I
    add-int/lit8 v8, v10, 0x1

    .line 756
    .local v8, "codeSize":I
    const/16 v22, 0x1

    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .line 757
    .local v7, "codeMask":I
    const/4 v6, 0x0

    .local v6, "code":I
    :goto_1
    if-ge v6, v5, :cond_7

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-short v23, v22, v6

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    int-to-byte v0, v6

    move/from16 v23, v0

    aput-byte v23, v22, v6

    .line 757
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 730
    .end local v2    # "available":I
    .end local v5    # "clear":I
    .end local v6    # "code":I
    .end local v7    # "codeMask":I
    .end local v8    # "codeSize":I
    .end local v10    # "dataSize":I
    .end local v12    # "endOfInformation":I
    .end local v16    # "npix":I
    .end local v17    # "oldCode":I
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->iw:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->ih:I

    move/from16 v23, v0

    mul-int v16, v22, v23

    goto/16 :goto_0

    .line 764
    .restart local v2    # "available":I
    .restart local v5    # "clear":I
    .restart local v6    # "code":I
    .restart local v7    # "codeMask":I
    .restart local v8    # "codeSize":I
    .restart local v10    # "dataSize":I
    .restart local v12    # "endOfInformation":I
    .restart local v16    # "npix":I
    .restart local v17    # "oldCode":I
    :cond_7
    const/4 v3, 0x0

    .local v3, "bi":I
    move/from16 v18, v3

    .local v18, "pi":I
    move/from16 v20, v3

    .local v20, "top":I
    move v13, v3

    .local v13, "first":I
    move v9, v3

    .local v9, "count":I
    move v4, v3

    .local v4, "bits":I
    move v11, v3

    .line 765
    .local v11, "datum":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    .line 767
    if-nez v9, :cond_a

    .line 769
    invoke-direct/range {p0 .. p0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->readBlock()I

    move-result v9

    .line 770
    if-gtz v9, :cond_9

    .line 771
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    .line 846
    :cond_8
    move/from16 v14, v18

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_12

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-byte v23, v22, v14

    .line 846
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 774
    :cond_9
    const/4 v3, 0x0

    .line 777
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->block:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v3

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int v22, v22, v4

    add-int v11, v11, v22

    .line 778
    add-int/lit8 v4, v4, 0x8

    .line 779
    add-int/lit8 v3, v3, 0x1

    .line 780
    add-int/lit8 v9, v9, -0x1

    move/from16 v21, v20

    .line 782
    .end local v20    # "top":I
    .local v21, "top":I
    :goto_4
    if-lt v4, v8, :cond_14

    .line 784
    and-int v6, v11, v7

    .line 785
    shr-int/2addr v11, v8

    .line 786
    sub-int/2addr v4, v8

    .line 789
    if-ne v6, v5, :cond_b

    .line 791
    add-int/lit8 v8, v10, 0x1

    .line 792
    const/16 v22, 0x1

    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .line 793
    add-int/lit8 v2, v5, 0x2

    .line 794
    const/16 v17, -0x1

    .line 795
    goto :goto_4

    .line 798
    :cond_b
    if-le v6, v2, :cond_c

    .line 799
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    move/from16 v20, v21

    .line 800
    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto :goto_2

    .line 803
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_c
    if-ne v6, v12, :cond_d

    move/from16 v20, v21

    .line 804
    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto :goto_2

    .line 807
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_d
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    aput-byte v23, v22, v21

    .line 809
    move/from16 v17, v6

    .line 810
    move v13, v6

    move/from16 v21, v20

    .line 811
    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto :goto_4

    .line 813
    :cond_e
    move v15, v6

    .line 814
    .local v15, "inCode":I
    if-lt v6, v2, :cond_f

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 816
    move/from16 v6, v17

    move/from16 v21, v20

    .line 818
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_f
    :goto_5
    if-lt v6, v5, :cond_10

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    aput-byte v23, v22, v21

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    aget-short v6, v22, v6

    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto :goto_5

    .line 822
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v13, v0, 0xff

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 826
    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ge v2, v0, :cond_11

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v23, v0

    aput-short v23, v22, v2

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v2

    .line 829
    add-int/lit8 v2, v2, 0x1

    .line 830
    and-int v22, v2, v7

    if-nez v22, :cond_11

    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ge v2, v0, :cond_11

    .line 831
    add-int/lit8 v8, v8, 0x1

    .line 832
    add-int/2addr v7, v2

    .line 835
    :cond_11
    move/from16 v17, v15

    move/from16 v19, v18

    .line 837
    .end local v18    # "pi":I
    .local v19, "pi":I
    :goto_6
    if-lez v20, :cond_13

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v20, v20, -0x1

    aget-byte v23, v23, v20

    aput-byte v23, v22, v19

    .line 840
    add-int/lit8 v14, v14, 0x1

    move/from16 v19, v18

    .end local v18    # "pi":I
    .restart local v19    # "pi":I
    goto :goto_6

    .line 849
    .end local v15    # "inCode":I
    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    :cond_12
    return-void

    .end local v18    # "pi":I
    .restart local v15    # "inCode":I
    .restart local v19    # "pi":I
    :cond_13
    move/from16 v18, v19

    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_4

    .end local v15    # "inCode":I
    :cond_14
    move/from16 v20, v21

    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto/16 :goto_2
.end method

.method private fillRect([ILcom/pedro/encoder/utils/gl/gif/GifFrame;I)V
    .locals 11
    .param p1, "dest"    # [I
    .param p2, "frame"    # Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    .param p3, "bgColor"    # I

    .prologue
    .line 659
    iget v9, p2, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->ih:I

    iget v10, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v1, v9, v10

    .line 660
    .local v1, "downsampledIH":I
    iget v9, p2, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->iy:I

    iget v10, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v4, v9, v10

    .line 661
    .local v4, "downsampledIY":I
    iget v9, p2, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->iw:I

    iget v10, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v2, v9, v10

    .line 662
    .local v2, "downsampledIW":I
    iget v9, p2, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->ix:I

    iget v10, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v3, v9, v10

    .line 663
    .local v3, "downsampledIX":I
    iget v9, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    mul-int/2addr v9, v4

    add-int v8, v9, v3

    .line 664
    .local v8, "topLeft":I
    iget v9, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    mul-int/2addr v9, v1

    add-int v0, v8, v9

    .line 665
    .local v0, "bottomLeft":I
    move v5, v8

    .local v5, "left":I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 666
    add-int v7, v5, v2

    .line 667
    .local v7, "right":I
    move v6, v5

    .local v6, "pointer":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 668
    aput p3, p1, v6

    .line 667
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 665
    :cond_0
    iget v9, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    add-int/2addr v5, v9

    goto :goto_0

    .line 671
    .end local v6    # "pointer":I
    .end local v7    # "right":I
    :cond_1
    return-void
.end method

.method private getHeaderParser()Lcom/pedro/encoder/utils/gl/gif/GifHeaderParser;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->parser:Lcom/pedro/encoder/utils/gl/gif/GifHeaderParser;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/pedro/encoder/utils/gl/gif/GifHeaderParser;

    invoke-direct {v0}, Lcom/pedro/encoder/utils/gl/gif/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->parser:Lcom/pedro/encoder/utils/gl/gif/GifHeaderParser;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->parser:Lcom/pedro/encoder/utils/gl/gif/GifHeaderParser;

    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 916
    iget-boolean v2, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->isFirstFrameTransparent:Z

    if-eqz v2, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 918
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    iget-object v2, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    iget v3, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    iget v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledHeight:I

    invoke-interface {v2, v3, v4, v0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 919
    .local v1, "result":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    .line 920
    return-object v1

    .line 916
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    .end local v1    # "result":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private readBlock()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 885
    invoke-direct {p0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->readByte()I

    move-result v0

    .line 886
    .local v0, "blockSize":I
    if-lez v0, :cond_1

    .line 888
    :try_start_0
    iget-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->block:[B

    if-nez v4, :cond_0

    .line 889
    iget-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    const/16 v5, 0xff

    invoke-interface {v4, v5}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v4

    iput-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->block:[B

    .line 891
    :cond_0
    iget v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferSize:I

    iget v5, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    sub-int v2, v4, v5

    .line 892
    .local v2, "remaining":I
    if-lt v2, v0, :cond_2

    .line 894
    iget-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBuffer:[B

    iget v5, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    iget-object v6, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->block:[B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    .line 912
    .end local v2    # "remaining":I
    :cond_1
    :goto_0
    return v0

    .line 896
    .restart local v2    # "remaining":I
    :cond_2
    iget-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v4, v2

    if-lt v4, v0, :cond_3

    .line 898
    iget-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBuffer:[B

    iget v5, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    iget-object v6, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->block:[B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    iget v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferSize:I

    iput v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    .line 900
    invoke-direct {p0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->readChunkIfNeeded()V

    .line 901
    sub-int v3, v0, v2

    .line 902
    .local v3, "secondHalfRemaining":I
    iget-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBuffer:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->block:[B

    invoke-static {v4, v5, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    iget v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 907
    .end local v2    # "remaining":I
    .end local v3    # "secondHalfRemaining":I
    :catch_0
    move-exception v1

    .line 908
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string v5, "Error Reading Block"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    iput v8, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    goto :goto_0

    .line 905
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "remaining":I
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    iput v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private readByte()I
    .locals 4

    .prologue
    .line 871
    :try_start_0
    invoke-direct {p0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->readChunkIfNeeded()V

    .line 872
    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBuffer:[B

    iget v2, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    .line 875
    :goto_0
    return v1

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    iput v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    .line 875
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readChunkIfNeeded()V
    .locals 4

    .prologue
    const/16 v2, 0x4000

    const/4 v3, 0x0

    .line 855
    iget v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferSize:I

    iget v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    if-le v0, v1, :cond_0

    .line 864
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBuffer:[B

    if-nez v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    invoke-interface {v0, v2}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBuffer:[B

    .line 861
    :cond_1
    iput v3, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferPosition:I

    .line 862
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferSize:I

    .line 863
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBuffer:[B

    iget v2, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBufferSize:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 925
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 926
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 928
    :cond_0
    return-void
.end method

.method private setPixels(Lcom/pedro/encoder/utils/gl/gif/GifFrame;Lcom/pedro/encoder/utils/gl/gif/GifFrame;)Landroid/graphics/Bitmap;
    .locals 33
    .param p1, "currentFrame"    # Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    .param p2, "previousFrame"    # Lcom/pedro/encoder/utils/gl/gif/GifFrame;

    .prologue
    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainScratch:[I

    .line 530
    .local v4, "dest":[I
    if-nez p2, :cond_0

    .line 531
    const/4 v3, 0x0

    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([II)V

    .line 535
    :cond_0
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->dispose:I

    if-lez v3, :cond_2

    .line 538
    move-object/from16 v0, p2

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->dispose:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_8

    .line 540
    const/16 v20, 0x0

    .line 541
    .local v20, "c":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->transparency:Z

    if-nez v3, :cond_7

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v0, v3, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->bgColor:I

    move/from16 v20, v0

    .line 543
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->lct:[I

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v3, v3, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->bgIndex:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->transIndex:I

    if-ne v3, v6, :cond_1

    .line 544
    const/16 v20, 0x0

    .line 552
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    invoke-direct {v0, v4, v1, v2}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->fillRect([ILcom/pedro/encoder/utils/gl/gif/GifFrame;I)V

    .line 570
    .end local v20    # "c":I
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->decodeBitmapData(Lcom/pedro/encoder/utils/gl/gif/GifFrame;)V

    .line 572
    move-object/from16 v0, p1

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->ih:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v10, v3, v6

    .line 573
    .local v10, "downsampledIH":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->iy:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v8, v3, v6

    .line 574
    .local v8, "downsampledIY":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->iw:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v9, v3, v6

    .line 575
    .local v9, "downsampledIW":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->ix:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v7, v3, v6

    .line 577
    .local v7, "downsampledIX":I
    const/16 v31, 0x1

    .line 578
    .local v31, "pass":I
    const/16 v26, 0x8

    .line 579
    .local v26, "inc":I
    const/16 v25, 0x0

    .line 580
    .local v25, "iline":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    if-nez v3, :cond_a

    const/16 v27, 0x1

    .line 581
    .local v27, "isFirstFrame":Z
    :goto_2
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_3
    move/from16 v0, v24

    if-ge v0, v10, :cond_e

    .line 582
    move/from16 v29, v24

    .line 583
    .local v29, "line":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->interlace:Z

    if-eqz v3, :cond_4

    .line 584
    move/from16 v0, v25

    if-lt v0, v10, :cond_3

    .line 585
    add-int/lit8 v31, v31, 0x1

    .line 586
    packed-switch v31, :pswitch_data_0

    .line 602
    :cond_3
    :goto_4
    move/from16 v29, v25

    .line 603
    add-int v25, v25, v26

    .line 605
    :cond_4
    add-int v29, v29, v8

    .line 606
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledHeight:I

    move/from16 v0, v29

    if-ge v0, v3, :cond_d

    .line 607
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    mul-int v28, v29, v3

    .line 609
    .local v28, "k":I
    add-int v23, v28, v7

    .line 611
    .local v23, "dx":I
    add-int v22, v23, v9

    .line 612
    .local v22, "dlim":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    add-int v3, v3, v28

    move/from16 v0, v22

    if-ge v3, v0, :cond_5

    .line 614
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    add-int v22, v28, v3

    .line 617
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    mul-int v3, v3, v24

    move-object/from16 v0, p1

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->iw:I

    mul-int v32, v3, v6

    .line 618
    .local v32, "sx":I
    sub-int v3, v22, v23

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    mul-int/2addr v3, v6

    add-int v30, v32, v3

    .line 619
    .local v30, "maxPositionInSource":I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 622
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_b

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    aget-byte v3, v3, v32

    and-int/lit16 v0, v3, 0xff

    move/from16 v21, v0

    .line 624
    .local v21, "currentColorIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->act:[I

    aget v19, v3, v21

    .line 630
    .end local v21    # "currentColorIndex":I
    .local v19, "averageColor":I
    :goto_6
    if-eqz v19, :cond_c

    .line 631
    aput v19, v4, v23

    .line 635
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    add-int v32, v32, v3

    .line 636
    add-int/lit8 v23, v23, 0x1

    .line 637
    goto :goto_5

    .line 546
    .end local v7    # "downsampledIX":I
    .end local v8    # "downsampledIY":I
    .end local v9    # "downsampledIW":I
    .end local v10    # "downsampledIH":I
    .end local v19    # "averageColor":I
    .end local v22    # "dlim":I
    .end local v23    # "dx":I
    .end local v24    # "i":I
    .end local v25    # "iline":I
    .end local v26    # "inc":I
    .end local v27    # "isFirstFrame":Z
    .end local v28    # "k":I
    .end local v29    # "line":I
    .end local v30    # "maxPositionInSource":I
    .end local v31    # "pass":I
    .end local v32    # "sx":I
    .restart local v20    # "c":I
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    if-nez v3, :cond_1

    .line 550
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->isFirstFrameTransparent:Z

    goto/16 :goto_0

    .line 553
    .end local v20    # "c":I
    :cond_8
    move-object/from16 v0, p2

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->dispose:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v3, :cond_9

    .line 555
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1, v3}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->fillRect([ILcom/pedro/encoder/utils/gl/gif/GifFrame;I)V

    goto/16 :goto_1

    .line 558
    :cond_9
    move-object/from16 v0, p2

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->ih:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v10, v3, v6

    .line 559
    .restart local v10    # "downsampledIH":I
    move-object/from16 v0, p2

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->iy:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v8, v3, v6

    .line 560
    .restart local v8    # "downsampledIY":I
    move-object/from16 v0, p2

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->iw:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v9, v3, v6

    .line 561
    .restart local v9    # "downsampledIW":I
    move-object/from16 v0, p2

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->ix:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    div-int v7, v3, v6

    .line 562
    .restart local v7    # "downsampledIX":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    mul-int/2addr v3, v8

    add-int v5, v3, v7

    .line 563
    .local v5, "topLeft":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto/16 :goto_1

    .line 580
    .end local v5    # "topLeft":I
    .restart local v25    # "iline":I
    .restart local v26    # "inc":I
    .restart local v31    # "pass":I
    :cond_a
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 588
    .restart local v24    # "i":I
    .restart local v27    # "isFirstFrame":Z
    .restart local v29    # "line":I
    :pswitch_0
    const/16 v25, 0x4

    .line 589
    goto/16 :goto_4

    .line 591
    :pswitch_1
    const/16 v25, 0x2

    .line 592
    const/16 v26, 0x4

    .line 593
    goto/16 :goto_4

    .line 595
    :pswitch_2
    const/16 v25, 0x1

    .line 596
    const/16 v26, 0x2

    .line 597
    goto/16 :goto_4

    .line 628
    .restart local v22    # "dlim":I
    .restart local v23    # "dx":I
    .restart local v28    # "k":I
    .restart local v30    # "maxPositionInSource":I
    .restart local v32    # "sx":I
    :cond_b
    move-object/from16 v0, p1

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->iw:I

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->averageColorsNear(III)I

    move-result v19

    .restart local v19    # "averageColor":I
    goto/16 :goto_6

    .line 632
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->isFirstFrameTransparent:Z

    if-nez v3, :cond_6

    if-eqz v27, :cond_6

    .line 633
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->isFirstFrameTransparent:Z

    goto/16 :goto_7

    .line 581
    .end local v19    # "averageColor":I
    .end local v22    # "dlim":I
    .end local v23    # "dx":I
    .end local v28    # "k":I
    .end local v30    # "maxPositionInSource":I
    .end local v32    # "sx":I
    :cond_d
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    .line 642
    .end local v29    # "line":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->savePrevious:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p1

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->dispose:I

    if-eqz v3, :cond_f

    move-object/from16 v0, p1

    iget v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->dispose:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_11

    .line 644
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v3, :cond_10

    .line 645
    invoke-direct/range {p0 .. p0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 647
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledHeight:I

    move/from16 v18, v0

    move-object v12, v4

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 652
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 653
    .local v11, "result":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledHeight:I

    move/from16 v18, v0

    move-object v12, v4

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 654
    return-object v11

    .line 586
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public advance()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v1, v1, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->frameCount:I

    if-gtz v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    iget v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    invoke-virtual {p0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->getFrameCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 241
    iget v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->loopIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->loopIndex:I

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v1, v1, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->loopCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->loopIndex:I

    iget-object v2, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v2, v2, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->loopCount:I

    if-gt v1, v2, :cond_0

    .line 248
    :cond_3
    iget v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v1, v1, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    .line 249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iput-object v2, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    .line 437
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    invoke-interface {v0, v1}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;->release([B)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainScratch:[I

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainScratch:[I

    invoke-interface {v0, v1}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;->release([I)V

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 446
    :cond_2
    iput-object v2, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 447
    iput-object v2, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->isFirstFrameTransparent:Z

    .line 449
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->block:[B

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->block:[B

    invoke-interface {v0, v1}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;->release([B)V

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBuffer:[B

    if-eqz v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->workBuffer:[B

    invoke-interface {v0, v1}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;->release([B)V

    .line 455
    :cond_4
    return-void
.end method

.method public getByteSize()I
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainScratch:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    return v0
.end method

.method getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 259
    const/4 v0, -0x1

    .line 260
    .local v0, "delay":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v1, v1, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget-object v1, v1, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pedro/encoder/utils/gl/gif/GifFrame;

    iget v0, v1, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->delay:I

    .line 263
    :cond_0
    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->loopCount:I

    return v0
.end method

.method public getLoopIndex()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->loopIndex:I

    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->frameCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    if-gez v0, :cond_1

    .line 271
    :cond_0
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    invoke-virtual {p0, v0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->getDelay(I)I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 351
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v4, v4, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->frameCount:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    if-gez v4, :cond_2

    .line 352
    :cond_0
    sget-object v4, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    sget-object v4, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to decode frame, frameCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v6, v6, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->frameCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " framePointer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1
    const/4 v4, 0x1

    iput v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    .line 358
    :cond_2
    iget v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    if-eq v4, v7, :cond_3

    iget v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 359
    :cond_3
    sget-object v4, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 360
    sget-object v4, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to decode frame, status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_4
    :goto_0
    monitor-exit p0

    return-object v3

    .line 364
    :cond_5
    const/4 v4, 0x0

    :try_start_1
    iput v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    .line 366
    iget-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget-object v4, v4, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->frames:Ljava/util/List;

    iget v5, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;

    .line 367
    .local v0, "currentFrame":Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    const/4 v1, 0x0

    .line 368
    .local v1, "previousFrame":Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    iget v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    add-int/lit8 v2, v4, -0x1

    .line 369
    .local v2, "previousIndex":I
    if-ltz v2, :cond_6

    .line 370
    iget-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget-object v4, v4, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "previousFrame":Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    check-cast v1, Lcom/pedro/encoder/utils/gl/gif/GifFrame;

    .line 374
    .restart local v1    # "previousFrame":Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    :cond_6
    iget-object v4, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->lct:[I

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->lct:[I

    :goto_1
    iput-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->act:[I

    .line 375
    iget-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->act:[I

    if-nez v4, :cond_9

    .line 376
    sget-object v4, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 377
    sget-object v4, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No Valid Color Table for frame #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_7
    const/4 v4, 0x1

    iput v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    .end local v0    # "currentFrame":Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    .end local v1    # "previousFrame":Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    .end local v2    # "previousIndex":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 374
    .restart local v0    # "currentFrame":Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    .restart local v1    # "previousFrame":Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    .restart local v2    # "previousIndex":I
    :cond_8
    :try_start_2
    iget-object v4, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget-object v4, v4, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->gct:[I

    goto :goto_1

    .line 385
    :cond_9
    iget-boolean v3, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->transparency:Z

    if-eqz v3, :cond_a

    .line 387
    iget-object v3, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->act:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->pct:[I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->act:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    iget-object v3, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->pct:[I

    iput-object v3, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->act:[I

    .line 391
    iget-object v3, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->act:[I

    iget v4, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->transIndex:I

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 395
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->setPixels(Lcom/pedro/encoder/utils/gl/gif/GifFrame;Lcom/pedro/encoder/utils/gl/gif/GifFrame;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    iget v0, v0, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->width:I

    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I

    .prologue
    const/16 v1, 0x4000

    .line 405
    if-eqz p1, :cond_3

    .line 407
    if-lez p2, :cond_0

    add-int/lit16 v1, p2, 0x1000

    .line 408
    .local v1, "capacity":I
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 410
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x4000

    new-array v2, v5, [B

    .line 411
    .local v2, "data":[B
    :goto_0
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {p1, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 412
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v4    # "nRead":I
    :catch_0
    move-exception v3

    .line 418
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string v6, "Error reading data from stream"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v1    # "capacity":I
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz p1, :cond_1

    .line 426
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    :cond_1
    :goto_2
    iget v5, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    return v5

    .line 414
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "capacity":I
    .restart local v2    # "data":[B
    .restart local v4    # "nRead":I
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 416
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 421
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "capacity":I
    .end local v2    # "data":[B
    .end local v4    # "nRead":I
    :cond_3
    const/4 v5, 0x2

    iput v5, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    goto :goto_1

    .line 428
    :catch_1
    move-exception v3

    .line 429
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string v6, "Error closing stream"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public declared-synchronized read([B)I
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->getHeaderParser()Lcom/pedro/encoder/utils/gl/gif/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/utils/gl/gif/GifHeaderParser;->setData([B)Lcom/pedro/encoder/utils/gl/gif/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pedro/encoder/utils/gl/gif/GifHeaderParser;->parseHeader()Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    .line 514
    if-eqz p1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    invoke-virtual {p0, v0, p1}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->setData(Lcom/pedro/encoder/utils/gl/gif/GifHeader;[B)V

    .line 518
    :cond_0
    iget v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetFrameIndex()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, -0x1

    iput v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    .line 314
    return-void
.end method

.method public resetLoopIndex()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->loopIndex:I

    return-void
.end method

.method public declared-synchronized setData(Lcom/pedro/encoder/utils/gl/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "header"    # Lcom/pedro/encoder/utils/gl/gif/GifHeader;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 462
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->setData(Lcom/pedro/encoder/utils/gl/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    monitor-exit p0

    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData(Lcom/pedro/encoder/utils/gl/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "header"    # Lcom/pedro/encoder/utils/gl/gif/GifHeader;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "sampleSize"    # I

    .prologue
    .line 466
    monitor-enter p0

    if-gtz p3, :cond_0

    .line 467
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sample size must be >=0, not: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 470
    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    .line 471
    const/4 v1, 0x0

    iput v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->status:I

    .line 472
    iput-object p1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->header:Lcom/pedro/encoder/utils/gl/gif/GifHeader;

    .line 473
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->isFirstFrameTransparent:Z

    .line 474
    const/4 v1, -0x1

    iput v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    .line 475
    invoke-virtual {p0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->resetLoopIndex()V

    .line 477
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 478
    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 479
    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 482
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->savePrevious:Z

    .line 483
    iget-object v1, p1, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;

    .line 484
    .local v0, "frame":Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    iget v2, v0, Lcom/pedro/encoder/utils/gl/gif/GifFrame;->dispose:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 485
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->savePrevious:Z

    .line 490
    .end local v0    # "frame":Lcom/pedro/encoder/utils/gl/gif/GifFrame;
    :cond_2
    iput p3, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->sampleSize:I

    .line 491
    iget v1, p1, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->width:I

    div-int/2addr v1, p3

    iput v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    .line 492
    iget v1, p1, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->height:I

    div-int/2addr v1, p3

    iput v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledHeight:I

    .line 495
    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    iget v2, p1, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->width:I

    iget v3, p1, Lcom/pedro/encoder/utils/gl/gif/GifHeader;->height:I

    mul-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainPixels:[B

    .line 496
    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->bitmapProvider:Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;

    iget v2, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledWidth:I

    iget v3, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->downsampledHeight:I

    mul-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;->obtainIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->mainScratch:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setData(Lcom/pedro/encoder/utils/gl/gif/GifHeader;[B)V
    .locals 1
    .param p1, "header"    # Lcom/pedro/encoder/utils/gl/gif/GifHeader;
    .param p2, "data"    # [B

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->setData(Lcom/pedro/encoder/utils/gl/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFrameIndex(I)Z
    .locals 1
    .param p1, "frame"    # I

    .prologue
    .line 301
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->getFrameCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 302
    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    .line 304
    :cond_1
    iput p1, p0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->framePointer:I

    .line 305
    const/4 v0, 0x1

    goto :goto_0
.end method
