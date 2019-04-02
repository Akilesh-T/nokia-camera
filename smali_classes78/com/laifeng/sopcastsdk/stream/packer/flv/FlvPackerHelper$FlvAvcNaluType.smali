.class public Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAvcNaluType;
.super Ljava/lang/Object;
.source "FlvPackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlvAvcNaluType"
.end annotation


# static fields
.field public static final AccessUnitDelimiter:I = 0x9

.field public static final CodedSliceExt:I = 0x14

.field public static final DataPartitionA:I = 0x2

.field public static final DataPartitionB:I = 0x3

.field public static final DataPartitionC:I = 0x4

.field public static final EOSequence:I = 0xa

.field public static final EOStream:I = 0xb

.field public static final FilterData:I = 0xc

.field public static final IDR:I = 0x5

.field public static final LayerWithoutPartition:I = 0x13

.field public static final NonIDR:I = 0x1

.field public static final PPS:I = 0x8

.field public static final PrefixNALU:I = 0xe

.field public static final Reserved:I = 0x0

.field public static final SEI:I = 0x6

.field public static final SPS:I = 0x7

.field public static final SPSExt:I = 0xd

.field public static final SubsetSPS:I = 0xf


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAvcNaluType;->this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
