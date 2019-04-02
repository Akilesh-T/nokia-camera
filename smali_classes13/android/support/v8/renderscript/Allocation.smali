.class public Landroid/support/v8/renderscript/Allocation;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Allocation$MipmapControl;
    }
.end annotation


# static fields
.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

.field mAutoPadding:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field mByteBuffer:Ljava/nio/ByteBuffer;

.field mByteBufferStride:J

.field mConstrainedFace:Z

.field mConstrainedLOD:Z

.field mConstrainedY:Z

.field mConstrainedZ:Z

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field mIncAllocDestroyed:Z

.field mIncCompatAllocation:J

.field mReadAllowed:Z

.field mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mType:Landroid/support/v8/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2542
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 2544
    sget-object v0, Landroid/support/v8/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 2545
    return-void
.end method

.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p4, "t"    # Landroid/support/v8/renderscript/Type;
    .param p5, "usage"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 65
    iput-wide v4, p0, Landroid/support/v8/renderscript/Allocation;->mByteBufferStride:J

    .line 71
    iput-boolean v3, p0, Landroid/support/v8/renderscript/Allocation;->mReadAllowed:Z

    .line 72
    iput-boolean v3, p0, Landroid/support/v8/renderscript/Allocation;->mWriteAllowed:Z

    .line 73
    iput-boolean v2, p0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    .line 77
    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

    iput-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 352
    and-int/lit16 v1, p5, -0xe4

    if-eqz v1, :cond_0

    .line 357
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Unknown usage specified."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_0
    and-int/lit8 v1, p5, 0x20

    if-eqz v1, :cond_1

    .line 361
    iput-boolean v2, p0, Landroid/support/v8/renderscript/Allocation;->mWriteAllowed:Z

    .line 363
    and-int/lit8 v1, p5, -0x24

    if-eqz v1, :cond_1

    .line 366
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Invalid usage combination."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_1
    iput-object p4, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 371
    iput p5, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    .line 372
    iput-wide v4, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

    .line 373
    iput-boolean v2, p0, Landroid/support/v8/renderscript/Allocation;->mIncAllocDestroyed:Z

    .line 375
    if-eqz p4, :cond_2

    .line 379
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    .line 380
    invoke-direct {p0, p4}, Landroid/support/v8/renderscript/Allocation;->updateCacheInfo(Landroid/support/v8/renderscript/Type;)V

    .line 382
    :cond_2
    sget-boolean v1, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z

    if-ne v1, v3, :cond_3

    .line 384
    :try_start_0
    sget-object v1, Landroid/support/v8/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/support/v8/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_3
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RenderScript_jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 20
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p5, "arrayLen"    # I

    .prologue
    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int v6, v2, p2

    .line 1123
    .local v6, "dataSize":I
    const/4 v7, 0x0

    .line 1124
    .local v7, "usePadding":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1125
    const/4 v7, 0x1

    .line 1127
    :cond_0
    move-object/from16 v0, p4

    iget v2, v0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int v5, p5, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v8/renderscript/Allocation;->data1DChecks(IIIIZ)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    iget v0, v2, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    move/from16 v18, v0

    move/from16 v12, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, v6

    move-object/from16 v17, p4

    move/from16 v19, v7

    invoke-virtual/range {v9 .. v19}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    .line 1130
    return-void
.end method

.method private copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 20
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p5, "arrayLen"    # I

    .prologue
    .line 1995
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int v6, v2, p2

    .line 1997
    .local v6, "dataSize":I
    const/4 v7, 0x0

    .line 1998
    .local v7, "usePadding":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1999
    const/4 v7, 0x1

    .line 2001
    :cond_0
    move-object/from16 v0, p4

    iget v2, v0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int v5, p5, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v8/renderscript/Allocation;->data1DChecks(IIIIZ)V

    .line 2002
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    iget v0, v2, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    move/from16 v18, v0

    move/from16 v12, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, v6

    move-object/from16 v17, p4

    move/from16 v19, v7

    invoke-virtual/range {v9 .. v19}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead1D(JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    .line 2004
    return-void
.end method

.method private copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 18
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;
    .param p8, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p9, "arrayLen"    # I

    .prologue
    .line 1703
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1704
    invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1705
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v3, v3, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p4

    mul-int v3, v3, p5

    mul-int v2, v3, p6

    .line 1707
    .local v2, "dataSize":I
    const/16 v17, 0x0

    .line 1708
    .local v17, "usePadding":Z
    move-object/from16 v0, p8

    iget v3, v0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int v14, p9, v3

    .line 1709
    .local v14, "sizeBytes":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1710
    div-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v14, :cond_0

    .line 1711
    new-instance v3, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1713
    :cond_0
    const/16 v17, 0x1

    .line 1714
    move v14, v2

    .line 1720
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v6, v6, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v6, v6, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    iget v0, v6, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    move/from16 v16, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v3 .. v17}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    .line 1723
    return-void

    .line 1716
    :cond_2
    if-le v2, v14, :cond_1

    .line 1717
    new-instance v3, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private copyFromUnchecked(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 10
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p3, "arrayLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 674
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 675
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 676
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 682
    :goto_0
    return-void

    .line 677
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 678
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto :goto_0

    .line 680
    :cond_1
    iget v2, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto :goto_0
.end method

.method private copyTo(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 8
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p3, "arrayLen"    # I

    .prologue
    .line 1798
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1799
    const/4 v7, 0x0

    .line 1800
    .local v7, "usePadding":Z
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1801
    const/4 v7, 0x1

    .line 1803
    :cond_0
    if-eqz v7, :cond_1

    .line 1804
    iget v0, p2, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p3

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_2

    .line 1805
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Size of output array cannot be smaller than size of allocation."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1809
    :cond_1
    iget v0, p2, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p3

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    if-ge v0, v1, :cond_2

    .line 1810
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Size of output array cannot be smaller than size of allocation."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1814
    :cond_2
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    iget v6, v0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead(JLjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;IZ)V

    .line 1815
    return-void
.end method

.method public static createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2817
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 12
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 2771
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 2773
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 2774
    .local v7, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 2776
    .local v11, "width":I
    rem-int/lit8 v5, v11, 0x6

    if-eqz v5, :cond_0

    .line 2777
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Cubemap height must be multiple of 6"

    invoke-direct {v1, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2779
    :cond_0
    div-int/lit8 v5, v11, 0x6

    if-eq v5, v7, :cond_1

    .line 2780
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Only square cube map faces supported"

    invoke-direct {v1, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2782
    :cond_1
    add-int/lit8 v5, v7, -0x1

    and-int/2addr v5, v7

    if-nez v5, :cond_2

    move v8, v1

    .line 2783
    .local v8, "isPow2":Z
    :goto_0
    if-nez v8, :cond_3

    .line 2784
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Only power of 2 cube faces supported"

    invoke-direct {v1, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v8    # "isPow2":Z
    :cond_2
    move v8, v4

    .line 2782
    goto :goto_0

    .line 2787
    .restart local v8    # "isPow2":Z
    :cond_3
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 2788
    .local v0, "e":Landroid/support/v8/renderscript/Element;
    new-instance v10, Landroid/support/v8/renderscript/Type$Builder;

    invoke-direct {v10, p0, v0}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 2789
    .local v10, "tb":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v10, v7}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 2790
    invoke-virtual {v10, v7}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 2791
    invoke-virtual {v10, v1}, Landroid/support/v8/renderscript/Type$Builder;->setFaces(Z)Landroid/support/v8/renderscript/Type$Builder;

    .line 2792
    sget-object v5, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    if-ne p2, v5, :cond_4

    :goto_1
    invoke-virtual {v10, v1}, Landroid/support/v8/renderscript/Type$Builder;->setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;

    .line 2793
    invoke-virtual {v10}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v9

    .line 2795
    .local v9, "t":Landroid/support/v8/renderscript/Type;
    invoke-virtual {v9, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    move-object v1, p0

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v2

    .line 2796
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 2797
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load failed for bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " element "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v2    # "id":J
    .end local v9    # "t":Landroid/support/v8/renderscript/Type;
    :cond_4
    move v1, v4

    .line 2792
    goto :goto_1

    .line 2799
    .restart local v2    # "id":J
    .restart local v9    # "t":Landroid/support/v8/renderscript/Type;
    :cond_5
    new-instance v1, Landroid/support/v8/renderscript/Allocation;

    move-object v4, p0

    move-object v5, v9

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v8/renderscript/Allocation;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    return-object v1
.end method

.method public static createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 9
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2915
    sget-object v7, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;
    .param p7, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p8, "usage"    # I

    .prologue
    .line 2888
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2749
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 15
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    .line 2683
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 2686
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2687
    move/from16 v0, p3

    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_0

    .line 2688
    new-instance v6, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v7, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2690
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2691
    .local v13, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2692
    .local v2, "c":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2693
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p0, v13, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    .line 2718
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v13    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 2696
    :cond_1
    invoke-static/range {p0 .. p2}, Landroid/support/v8/renderscript/Allocation;->typeFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;

    move-result-object v14

    .line 2699
    .local v14, "t":Landroid/support/v8/renderscript/Type;
    sget-object v6, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    move-object/from16 v0, p2

    if-ne v0, v6, :cond_3

    .line 2700
    invoke-virtual {v14}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x83

    move/from16 v0, p3

    if-ne v0, v6, :cond_3

    .line 2702
    invoke-virtual {v14, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    move-object/from16 v0, p2

    iget v6, v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    move-object v3, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    move-result-wide v4

    .line 2703
    .local v4, "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 2704
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v7, "Load failed."

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2708
    :cond_2
    new-instance v3, Landroid/support/v8/renderscript/Allocation;

    move-object v6, p0

    move-object v7, v14

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/support/v8/renderscript/Allocation;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    .line 2709
    .local v3, "alloc":Landroid/support/v8/renderscript/Allocation;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/support/v8/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2714
    .end local v3    # "alloc":Landroid/support/v8/renderscript/Allocation;
    .end local v4    # "id":J
    :cond_3
    invoke-virtual {v14, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v8

    move-object/from16 v0, p2

    iget v10, v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    move-object v7, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v4

    .line 2715
    .restart local v4    # "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    .line 2716
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v7, "Load failed."

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2718
    :cond_4
    new-instance v7, Landroid/support/v8/renderscript/Allocation;

    move-wide v8, v4

    move-object v10, p0

    move-object v11, v14

    move/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Landroid/support/v8/renderscript/Allocation;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    move-object v3, v7

    goto :goto_0
.end method

.method public static createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/support/v8/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 2968
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 4
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p4, "usage"    # I

    .prologue
    .line 2941
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 2942
    and-int/lit16 v2, p4, 0xe0

    if-eqz v2, :cond_0

    .line 2943
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Unsupported usage specified."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2945
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2946
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-static {p0, v1, p3, p4}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 2947
    .local v0, "alloc":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2948
    return-object v0
.end method

.method public static createFromString(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;I)Landroid/support/v8/renderscript/Allocation;
    .locals 5
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "usage"    # I

    .prologue
    .line 2985
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 2986
    const/4 v1, 0x0

    .line 2988
    .local v1, "allocArray":[B
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 2989
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v3

    array-length v4, v1

    invoke-static {p0, v3, v4, p2}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 2990
    .local v0, "alloc":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2991
    return-object v0

    .line 2993
    .end local v0    # "alloc":Landroid/support/v8/renderscript/Allocation;
    :catch_0
    move-exception v2

    .line 2994
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Could not convert string to utf-8."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;
    .param p2, "count"    # I

    .prologue
    .line 2637
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
    .locals 9
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;
    .param p2, "count"    # I
    .param p3, "usage"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 2615
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 2616
    new-instance v0, Landroid/support/v8/renderscript/Type$Builder;

    invoke-direct {v0, p0, p1}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 2617
    .local v0, "b":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 2618
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    .line 2620
    .local v8, "t":Landroid/support/v8/renderscript/Type;
    invoke-virtual {v8, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    sget-object v1, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    iget v4, v1, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    move-object v1, p0

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v2

    .line 2621
    .local v2, "id":J
    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 2622
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Allocation creation failed."

    invoke-direct {v1, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2624
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/Allocation;

    move-object v4, p0

    move-object v5, v8

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v8/renderscript/Allocation;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    return-object v1
.end method

.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "type"    # Landroid/support/v8/renderscript/Type;

    .prologue
    .line 2599
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "type"    # Landroid/support/v8/renderscript/Type;
    .param p2, "usage"    # I

    .prologue
    .line 2586
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "type"    # Landroid/support/v8/renderscript/Type;
    .param p2, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 2558
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 2559
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 2560
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Bad Type"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2563
    :cond_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->usingIO()Z

    move-result v0

    if-nez v0, :cond_1

    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_1

    .line 2564
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "USAGE_IO not supported, Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2567
    :cond_1
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    move-object v1, p0

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v2

    .line 2568
    .local v2, "id":J
    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    .line 2569
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2571
    :cond_2
    new-instance v1, Landroid/support/v8/renderscript/Allocation;

    move-object v4, p0

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v8/renderscript/Allocation;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    return-object v1
.end method

.method private data1DChecks(IIIIZ)V
    .locals 3
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "len"    # I
    .param p4, "dataSize"    # I
    .param p5, "usePadding"    # Z

    .prologue
    .line 1083
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1084
    if-gez p1, :cond_0

    .line 1085
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 1088
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Count must be >= 1."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_1
    add-int v0, p1, p2

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    if-le v0, v1, :cond_2

    .line 1091
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overflow, Available count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
    :cond_2
    if-eqz p5, :cond_3

    .line 1095
    div-int/lit8 v0, p4, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-ge p3, v0, :cond_4

    .line 1096
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_3
    if-ge p3, p4, :cond_4

    .line 1100
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_4
    return-void
.end method

.method static elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;
    .locals 4
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2641
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 2642
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 2643
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    .line 2652
    :goto_0
    return-object v1

    .line 2645
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 2646
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_4444(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 2648
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    .line 2649
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 2651
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 2652
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGB_565(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 2654
    :cond_3
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad bitmap type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getIDSafe()J
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    .line 242
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 347
    iput-object p1, p0, Landroid/support/v8/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    .line 348
    return-void
.end method

.method static typeFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;
    .locals 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mip"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;

    .prologue
    .line 2659
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 2660
    .local v0, "e":Landroid/support/v8/renderscript/Element;
    new-instance v1, Landroid/support/v8/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 2661
    .local v1, "tb":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 2662
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 2663
    sget-object v2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;

    .line 2664
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    return-object v2

    .line 2663
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCacheInfo(Landroid/support/v8/renderscript/Type;)V
    .locals 3
    .param p1, "t"    # Landroid/support/v8/renderscript/Type;

    .prologue
    const/4 v2, 0x1

    .line 334
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    .line 335
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    .line 336
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    .line 337
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    .line 338
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-le v0, v2, :cond_0

    .line 339
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    .line 341
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-le v0, v2, :cond_1

    .line 342
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    .line 344
    :cond_1
    return-void
.end method

.method private validate2DRange(IIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 1442
    :cond_0
    return-void

    .line 1432
    :cond_1
    if-ltz p1, :cond_2

    if-gez p2, :cond_3

    .line 1433
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1435
    :cond_3
    if-ltz p4, :cond_4

    if-gez p3, :cond_5

    .line 1436
    :cond_4
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1438
    :cond_5
    add-int v0, p1, p3

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_6

    add-int v0, p2, p4

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-le v0, v1, :cond_0

    .line 1439
    :cond_6
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validate3DRange(IIIIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I

    .prologue
    .line 1678
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 1692
    :cond_0
    return-void

    .line 1682
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 1683
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1685
    :cond_3
    if-ltz p5, :cond_4

    if-ltz p4, :cond_4

    if-gez p6, :cond_5

    .line 1686
    :cond_4
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1688
    :cond_5
    add-int v0, p1, p4

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_6

    add-int v0, p2, p5

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-gt v0, v1, :cond_6

    add-int v0, p3, p6

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-le v0, v1, :cond_0

    .line 1689
    :cond_6
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x2

    .line 619
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 620
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 621
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Bitmap has an unsupported format for this operation"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :cond_0
    sget-object v1, Landroid/support/v8/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 665
    :cond_1
    return-void

    .line 625
    :pswitch_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq v1, v2, :cond_1

    .line 626
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 627
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 628
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 629
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :pswitch_1
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 635
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 636
    :cond_2
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 637
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 638
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 639
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :pswitch_2
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 645
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 646
    :cond_3
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 647
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 648
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 649
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 654
    :pswitch_3
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 655
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 656
    :cond_4
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 657
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 658
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 659
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 668
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 669
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_1
    return-void
.end method

.method private validateIsFloat32()V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    .line 437
    return-void

    .line 439
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsFloat64()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt16()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 420
    :cond_0
    return-void

    .line 422
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "16 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt32()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 411
    :cond_0
    return-void

    .line 413
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt64()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 402
    :cond_0
    return-void

    .line 404
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt8()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 429
    :cond_0
    return-void

    .line 431
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsObject()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 457
    :cond_0
    return-void

    .line 459
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 4
    .param p1, "d"    # Ljava/lang/Object;
    .param p2, "checkType"    # Z

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 86
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Object passed is not an array of primitives."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 90
    .local v1, "cmp":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Object passed is not an Array of primitives."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    .line 95
    if-eqz p2, :cond_2

    .line 96
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt64()V

    .line 97
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    .line 139
    :goto_0
    return-object v2

    .line 99
    :cond_2
    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    goto :goto_0

    .line 102
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    .line 103
    if-eqz p2, :cond_4

    .line 104
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V

    .line 105
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    goto :goto_0

    .line 107
    :cond_4
    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    goto :goto_0

    .line 110
    :cond_5
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    .line 111
    if-eqz p2, :cond_6

    .line 112
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V

    .line 113
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    goto :goto_0

    .line 115
    :cond_6
    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    goto :goto_0

    .line 118
    :cond_7
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_9

    .line 119
    if-eqz p2, :cond_8

    .line 120
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V

    .line 121
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    goto :goto_0

    .line 123
    :cond_8
    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    goto :goto_0

    .line 126
    :cond_9
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_b

    .line 127
    if-eqz p2, :cond_a

    .line 128
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V

    .line 130
    :cond_a
    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    goto :goto_0

    .line 133
    :cond_b
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_d

    .line 134
    if-eqz p2, :cond_c

    .line 135
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat64()V

    .line 137
    :cond_c
    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    goto :goto_0

    .line 139
    :cond_d
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroid/support/v8/renderscript/Allocation;I)V
    .locals 18
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "data"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "dataOff"    # I

    .prologue
    .line 1421
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v9, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 1423
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v12

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v0, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    move/from16 v17, v0

    move/from16 v6, p1

    move/from16 v10, p2

    move/from16 v14, p4

    .line 1421
    invoke-virtual/range {v3 .. v17}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    .line 1425
    return-void
.end method

.method public copy1DRangeFrom(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 1290
    const/4 v0, 0x1

    .line 1291
    invoke-direct {p0, p3, v0}, Landroid/support/v8/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v4

    .line 1292
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 1290
    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1293
    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 1378
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V

    .line 1379
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1380
    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 1407
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V

    .line 1408
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1409
    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 1320
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V

    .line 1321
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1322
    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 1349
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V

    .line 1350
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1351
    return-void
.end method

.method public copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 1155
    const/4 v0, 0x0

    .line 1156
    invoke-direct {p0, p3, v0}, Landroid/support/v8/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v4

    .line 1157
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 1155
    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1158
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 1235
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1236
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 1261
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1262
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 1183
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1184
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 1209
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1210
    return-void
.end method

.method public copy1DRangeTo(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 2164
    const/4 v0, 0x1

    .line 2165
    invoke-direct {p0, p3, v0}, Landroid/support/v8/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v4

    .line 2166
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 2164
    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2167
    return-void
.end method

.method public copy1DRangeTo(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 2252
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V

    .line 2253
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2254
    return-void
.end method

.method public copy1DRangeTo(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 2281
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V

    .line 2282
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2283
    return-void
.end method

.method public copy1DRangeTo(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 2194
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V

    .line 2195
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2196
    return-void
.end method

.method public copy1DRangeTo(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 2223
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V

    .line 2224
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2225
    return-void
.end method

.method public copy1DRangeToUnchecked(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 2029
    const/4 v0, 0x0

    .line 2030
    invoke-direct {p0, p3, v0}, Landroid/support/v8/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v4

    .line 2031
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 2029
    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2032
    return-void
.end method

.method public copy1DRangeToUnchecked(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 2109
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2110
    return-void
.end method

.method public copy1DRangeToUnchecked(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 2135
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2136
    return-void
.end method

.method public copy1DRangeToUnchecked(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 2057
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2058
    return-void
.end method

.method public copy1DRangeToUnchecked(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 2083
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2084
    return-void
.end method

.method public copy2DRangeFrom(IIIILandroid/support/v8/renderscript/Allocation;II)V
    .locals 18
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "dataXoff"    # I
    .param p7, "dataYoff"    # I

    .prologue
    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1647
    invoke-direct/range {p0 .. p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v9, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 1650
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v12

    move-object/from16 v0, p5

    iget v0, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v16, v0

    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v0, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    move/from16 v17, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v14, p6

    move/from16 v15, p7

    .line 1648
    invoke-virtual/range {v3 .. v17}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    .line 1652
    return-void
.end method

.method public copy2DRangeFrom(IIIILjava/lang/Object;)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;

    .prologue
    .line 1495
    const/4 v0, 0x1

    .line 1496
    invoke-direct {p0, p5, v0}, Landroid/support/v8/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v6

    .line 1497
    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1495
    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1498
    return-void
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .prologue
    .line 1528
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V

    .line 1529
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1531
    return-void
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .prologue
    .line 1627
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V

    .line 1628
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1630
    return-void
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .prologue
    .line 1594
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V

    .line 1595
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1597
    return-void
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .prologue
    .line 1561
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V

    .line 1562
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1564
    return-void
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "data"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 1664
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1665
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1666
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1667
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1668
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1669
    invoke-virtual {p0, p1, p2, v9}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V

    .line 1675
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 1672
    :cond_0
    invoke-direct {p0, p3}, Landroid/support/v8/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1673
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1674
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    iget-object v4, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v7, v4, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    move v4, p1

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 17
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;
    .param p6, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p7, "arrayLen"    # I

    .prologue
    .line 1446
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1447
    invoke-direct/range {p0 .. p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v3, v3, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p3

    mul-int v2, v3, p4

    .line 1450
    .local v2, "dataSize":I
    const/16 v16, 0x0

    .line 1451
    .local v16, "usePadding":Z
    move-object/from16 v0, p6

    iget v3, v0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int v13, p7, v3

    .line 1452
    .local v13, "sizeBytes":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1453
    div-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v13, :cond_0

    .line 1454
    new-instance v3, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1456
    :cond_0
    const/16 v16, 0x1

    .line 1457
    move v13, v2

    .line 1463
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v9, v6, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v6, v6, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v6, v6, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    iget v15, v6, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v16}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    .line 1466
    return-void

    .line 1459
    :cond_2
    if-le v2, v13, :cond_1

    .line 1460
    new-instance v3, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public copy2DRangeTo(IIIILjava/lang/Object;)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;

    .prologue
    .line 2336
    const/4 v0, 0x1

    .line 2337
    invoke-direct {p0, p5, v0}, Landroid/support/v8/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v6

    .line 2338
    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2336
    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2339
    return-void
.end method

.method public copy2DRangeTo(IIII[B)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .prologue
    .line 2368
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V

    .line 2369
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2371
    return-void
.end method

.method public copy2DRangeTo(IIII[F)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .prologue
    .line 2464
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V

    .line 2465
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2467
    return-void
.end method

.method public copy2DRangeTo(IIII[I)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .prologue
    .line 2432
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V

    .line 2433
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2435
    return-void
.end method

.method public copy2DRangeTo(IIII[S)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .prologue
    .line 2400
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V

    .line 2401
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 2403
    return-void
.end method

.method copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 17
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;
    .param p6, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p7, "arrayLen"    # I

    .prologue
    .line 2288
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 2289
    invoke-direct/range {p0 .. p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V

    .line 2290
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v3, v3, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p3

    mul-int v2, v3, p4

    .line 2292
    .local v2, "dataSize":I
    const/16 v16, 0x0

    .line 2293
    .local v16, "usePadding":Z
    move-object/from16 v0, p6

    iget v3, v0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int v13, p7, v3

    .line 2294
    .local v13, "sizeBytes":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 2295
    div-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v13, :cond_0

    .line 2296
    new-instance v3, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2298
    :cond_0
    const/16 v16, 0x1

    .line 2299
    move v13, v2

    .line 2305
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v9, v6, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v6, v6, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v6, v6, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    iget v15, v6, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v16}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    .line 2307
    return-void

    .line 2301
    :cond_2
    if-le v2, v13, :cond_1

    .line 2302
    new-instance v3, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public copy3DRangeFrom(IIIIIILandroid/support/v8/renderscript/Allocation;III)V
    .locals 17
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "dataXoff"    # I
    .param p9, "dataYoff"    # I
    .param p10, "dataZoff"    # I

    .prologue
    .line 1776
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1777
    invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1778
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 1779
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v11

    move-object/from16 v0, p7

    iget v0, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v16, v0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    .line 1778
    invoke-virtual/range {v1 .. v16}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    .line 1781
    return-void
.end method

.method public copy3DRangeFrom(IIIIIILjava/lang/Object;)V
    .locals 11
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;

    .prologue
    .line 1754
    const/4 v1, 0x1

    .line 1755
    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Landroid/support/v8/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v9

    .line 1756
    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 1754
    invoke-direct/range {v1 .. v10}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1757
    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 960
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 961
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    .line 962
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 963
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 964
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 965
    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 971
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 968
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 969
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 970
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public copyFrom(Landroid/support/v8/renderscript/Allocation;)V
    .locals 8
    .param p1, "a"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x0

    .line 980
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 981
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Types of allocations must match."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_0
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/support/v8/renderscript/Allocation;II)V

    .line 985
    return-void
.end method

.method public copyFrom(Ljava/lang/Object;)V
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 834
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v8/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    .line 835
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 834
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 836
    return-void
.end method

.method public copyFrom([B)V
    .locals 2
    .param p1, "d"    # [B

    .prologue
    .line 915
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V

    .line 916
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 917
    return-void
.end method

.method public copyFrom([F)V
    .locals 2
    .param p1, "d"    # [F

    .prologue
    .line 942
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V

    .line 943
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 944
    return-void
.end method

.method public copyFrom([I)V
    .locals 2
    .param p1, "d"    # [I

    .prologue
    .line 861
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V

    .line 862
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 863
    return-void
.end method

.method public copyFrom([Landroid/support/v8/renderscript/BaseObj;)V
    .locals 7
    .param p1, "d"    # [Landroid/support/v8/renderscript/BaseObj;

    .prologue
    const/4 v6, 0x0

    .line 596
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 597
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsObject()V

    .line 598
    array-length v2, p1

    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    if-eq v2, v3, :cond_0

    .line 599
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array size mismatch, allocation sizeX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", array length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 603
    :cond_0
    sget v2, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 604
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [J

    .line 605
    .local v1, "i":[J
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 606
    mul-int/lit8 v2, v0, 0x4

    aget-object v3, p1, v0

    iget-object v4, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    :cond_1
    iget v2, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v6, v2, v1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;)V

    .line 616
    .end local v1    # "i":[J
    :goto_1
    return-void

    .line 610
    .end local v0    # "ct":I
    :cond_2
    array-length v2, p1

    new-array v1, v2, [I

    .line 611
    .local v1, "i":[I
    const/4 v0, 0x0

    .restart local v0    # "ct":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 612
    aget-object v2, p1, v0

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v1, v0

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 614
    :cond_3
    iget v2, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v6, v2, v1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    goto :goto_1
.end method

.method public copyFrom([S)V
    .locals 2
    .param p1, "d"    # [S

    .prologue
    .line 888
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V

    .line 889
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 890
    return-void
.end method

.method public copyFromUnchecked(Ljava/lang/Object;)V
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v8/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    .line 707
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 706
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 708
    return-void
.end method

.method public copyFromUnchecked([B)V
    .locals 2
    .param p1, "d"    # [B

    .prologue
    .line 782
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 783
    return-void
.end method

.method public copyFromUnchecked([F)V
    .locals 2
    .param p1, "d"    # [F

    .prologue
    .line 807
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 808
    return-void
.end method

.method public copyFromUnchecked([I)V
    .locals 2
    .param p1, "d"    # [I

    .prologue
    .line 732
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 733
    return-void
.end method

.method public copyFromUnchecked([S)V
    .locals 2
    .param p1, "d"    # [S

    .prologue
    .line 757
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 758
    return-void
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1791
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1792
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1793
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 1794
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V

    .line 1795
    return-void
.end method

.method public copyTo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 1839
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v8/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    .line 1840
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 1839
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1841
    return-void
.end method

.method public copyTo([B)V
    .locals 2
    .param p1, "d"    # [B

    .prologue
    .line 1866
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V

    .line 1867
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1868
    return-void
.end method

.method public copyTo([F)V
    .locals 2
    .param p1, "d"    # [F

    .prologue
    .line 1947
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V

    .line 1948
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1949
    return-void
.end method

.method public copyTo([I)V
    .locals 2
    .param p1, "d"    # [I

    .prologue
    .line 1920
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V

    .line 1921
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1922
    return-void
.end method

.method public copyTo([S)V
    .locals 2
    .param p1, "d"    # [S

    .prologue
    .line 1893
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V

    .line 1894
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 1895
    return-void
.end method

.method public destroy()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 3006
    iget-wide v2, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 3007
    const/4 v1, 0x0

    .line 3008
    .local v1, "shouldDestroy":Z
    monitor-enter p0

    .line 3009
    :try_start_0
    iget-boolean v2, p0, Landroid/support/v8/renderscript/Allocation;->mIncAllocDestroyed:Z

    if-nez v2, :cond_0

    .line 3010
    const/4 v1, 0x1

    .line 3011
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v8/renderscript/Allocation;->mIncAllocDestroyed:Z

    .line 3013
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3015
    if-eqz v1, :cond_2

    .line 3017
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, v2, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 3018
    .local v0, "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3019
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3020
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-wide v4, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

    invoke-virtual {v2, v4, v5}, Landroid/support/v8/renderscript/RenderScript;->nIncObjDestroy(J)V

    .line 3022
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3023
    iput-wide v6, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

    .line 3026
    .end local v0    # "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .end local v1    # "shouldDestroy":Z
    :cond_2
    iget v2, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    and-int/lit8 v2, v2, 0x60

    if-eqz v2, :cond_3

    .line 3027
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 3029
    :cond_3
    invoke-super {p0}, Landroid/support/v8/renderscript/BaseObj;->destroy()V

    .line 3030
    return-void

    .line 3013
    .restart local v1    # "shouldDestroy":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 393
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z

    if-ne v0, v2, :cond_0

    .line 394
    sget-object v0, Landroid/support/v8/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/support/v8/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_0
    invoke-super {p0}, Landroid/support/v8/renderscript/BaseObj;->finalize()V

    .line 397
    return-void
.end method

.method public generateMipmaps()V
    .locals 4

    .prologue
    .line 1116
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationGenerateMipmaps(J)V

    .line 1117
    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 526
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int v10, v0, v2

    .line 529
    .local v10, "xBytesSize":I
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->getDispatchAPILevel()I

    move-result v0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    .line 530
    const/4 v5, 0x0

    .line 531
    .local v5, "data":[B
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v0

    if-lez v0, :cond_0

    .line 533
    const/4 v13, 0x0

    .line 552
    .end local v5    # "data":[B
    :goto_0
    return-object v13

    .line 534
    .restart local v5    # "data":[B
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    if-lez v0, :cond_1

    .line 536
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    mul-int/2addr v0, v10

    new-array v5, v0, [B

    .line 537
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 538
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    mul-int v7, v10, v0

    move-object v0, p0

    move v2, v1

    .line 537
    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    .line 544
    :goto_1
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 545
    .local v13, "bBuffer":Ljava/nio/ByteBuffer;
    int-to-long v0, v10

    iput-wide v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBufferStride:J

    goto :goto_0

    .line 541
    .end local v13    # "bBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    new-array v5, v10, [B

    .line 542
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {p0, v1, v0, v5}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(II[B)V

    goto :goto_1

    .line 549
    .end local v5    # "data":[B
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 550
    :cond_3
    iget-object v7, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v8

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v12

    invoke-virtual/range {v7 .. v12}, Landroid/support/v8/renderscript/RenderScript;->nAllocationGetByteBuffer(JIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 552
    :cond_4
    iget-object v13, p0, Landroid/support/v8/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public getBytesSize()I
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget v0, v0, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 330
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getElement()Landroid/support/v8/renderscript/Element;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public getIncAllocID()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

    return-wide v0
.end method

.method public getStride()J
    .locals 4

    .prologue
    .line 566
    iget-wide v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBufferStride:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->getDispatchAPILevel()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 568
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationGetStride(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBufferStride:J

    .line 573
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBufferStride:J

    return-wide v0

    .line 570
    :cond_1
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBufferStride:J

    goto :goto_0
.end method

.method public getType()Landroid/support/v8/renderscript/Type;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    return v0
.end method

.method public ioReceive()V
    .locals 4

    .prologue
    .line 582
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only receive if IO_INPUT usage specified."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 587
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationIoReceive(J)V

    .line 588
    return-void
.end method

.method public ioSend()V
    .locals 4

    .prologue
    .line 498
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only send buffer if IO_OUTPUT usage specified."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 503
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationIoSend(J)V

    .line 504
    return-void
.end method

.method public ioSendOutput()V
    .locals 0

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->ioSend()V

    .line 511
    return-void
.end method

.method public setAutoPadding(Z)V
    .locals 0
    .param p1, "useAutoPadding"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    .line 318
    return-void
.end method

.method public setFromFieldPacker(IILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 9
    .param p1, "xoff"    # I
    .param p2, "component_number"    # I
    .param p3, "fp"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 1018
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1019
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v1, v1, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v1, v1

    if-lt p2, v1, :cond_0

    .line 1020
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component_number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1022
    :cond_0
    if-gez p1, :cond_1

    .line 1023
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset must be >= 0."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1026
    :cond_1
    invoke-virtual {p3}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v7

    .line 1027
    .local v7, "data":[B
    invoke-virtual {p3}, Landroid/support/v8/renderscript/FieldPacker;->getPos()I

    move-result v8

    .line 1028
    .local v8, "data_length":I
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v1, v1, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    .line 1029
    .local v0, "eSize":I
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v1, v1, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    aget v1, v1, p2

    mul-int/2addr v0, v1

    .line 1031
    if-eq v8, v0, :cond_2

    .line 1032
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match component size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1036
    :cond_2
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nAllocationElementData1D(JIII[BI)V

    .line 1038
    return-void
.end method

.method public setFromFieldPacker(ILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 7
    .param p1, "xoff"    # I
    .param p2, "fp"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 996
    iget-object v4, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 997
    iget-object v4, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v4, v4, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    .line 998
    .local v3, "eSize":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    .line 999
    .local v1, "data":[B
    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getPos()I

    move-result v2

    .line 1001
    .local v2, "data_length":I
    div-int v0, v2, v3

    .line 1002
    .local v0, "count":I
    mul-int v4, v3, v0

    if-eq v4, v2, :cond_0

    .line 1003
    new-instance v4, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field packer length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not divisible by element size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1006
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    .line 1007
    return-void
.end method

.method public setIncAllocID(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 235
    iput-wide p1, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

    .line 236
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "sur"    # Landroid/view/Surface;

    .prologue
    .line 2728
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 2729
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 2730
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not USAGE_IO_OUTPUT."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2733
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationSetSurface(JLandroid/view/Surface;)V

    .line 2734
    return-void
.end method

.method public syncAll(I)V
    .locals 4
    .param p1, "srcLocation"    # I

    .prologue
    .line 479
    packed-switch p1, :pswitch_data_0

    .line 484
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Source must be exactly one usage type."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :pswitch_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 487
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationSyncAll(JI)V

    .line 488
    return-void

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
