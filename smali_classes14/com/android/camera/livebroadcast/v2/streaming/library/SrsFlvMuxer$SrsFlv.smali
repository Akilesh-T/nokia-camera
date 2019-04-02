.class Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsFlv"
.end annotation


# instance fields
.field private Pps:Ljava/nio/ByteBuffer;

.field private Sps:Ljava/nio/ByteBuffer;

.field private aac_specific_config_got:Z

.field private achannel:I

.field private audio_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

.field private avc:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;

.field private ipbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

.field private video_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;


# direct methods
.method public constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)V
    .locals 3

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->avc:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->ipbs:Ljava/util/ArrayList;

    .line 650
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->achannel:I

    .line 653
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->reset()V

    .line 654
    return-void
.end method

.method private flvFrameCacheAdd(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)V
    .locals 8
    .param p1, "frame"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 893
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$200(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 894
    :catch_0
    move-exception v2

    .line 895
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 896
    .local v0, "currentTime":J
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1900(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$2000(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 897
    const-string v3, "SrsFlvMuxer"

    const-string v4, "frame discarded"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v3, v0, v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1902(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;J)J

    .line 899
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$100(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 900
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$100(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    move-result-object v3

    invoke-interface {v3}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onAuthErrorRtmp()V

    goto :goto_0
.end method

.method private writeAdtsHeader([BI)V
    .locals 3
    .param p1, "frame"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 751
    const/4 v0, -0x1

    aput-byte v0, p1, p2

    .line 752
    add-int/lit8 v0, p2, 0x1

    const/16 v1, -0x10

    aput-byte v1, p1, v0

    .line 754
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 756
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 758
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 760
    add-int/lit8 v0, p2, 0x2

    const/16 v1, 0x40

    aput-byte v1, p1, v0

    .line 762
    add-int/lit8 v0, p2, 0x2

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 764
    add-int/lit8 v0, p2, 0x2

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 765
    add-int/lit8 v0, p2, 0x3

    const/16 v1, -0x80

    aput-byte v1, p1, v0

    .line 767
    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 769
    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 771
    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 773
    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 775
    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    and-int/lit16 v2, v2, 0x1800

    shr-int/lit8 v2, v2, 0xb

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 776
    add-int/lit8 v0, p2, 0x4

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    and-int/lit16 v1, v1, 0x7f8

    shr-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 777
    add-int/lit8 v0, p2, 0x5

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 779
    add-int/lit8 v0, p2, 0x5

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 780
    add-int/lit8 v0, p2, 0x6

    const/4 v1, -0x4

    aput-byte v1, p1, v0

    .line 782
    add-int/lit8 v0, p2, 0x6

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 783
    return-void
.end method

.method private writeH264IpbFrame(Ljava/util/ArrayList;II)V
    .locals 6
    .param p2, "frame_type"    # I
    .param p3, "dts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;>;"
    const/4 v4, 0x1

    .line 860
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Pps:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Sps:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->avc:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;

    invoke-virtual {v0, p1, p2, v4}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->muxFlvTag(Ljava/util/ArrayList;II)Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->video_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    .line 865
    const/16 v1, 0x9

    iget-object v5, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->video_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    move-object v0, p0

    move v2, p3

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->writeRtmpPacket(IIIILnet/ossrs/rtmp/SrsAllocator$Allocation;)V

    goto :goto_0
.end method

.method private writeH264SpsPps(I)V
    .locals 9
    .param p1, "pts"    # I

    .prologue
    const/4 v8, 0x1

    .line 837
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Pps:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Sps:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1500(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v6, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;>;"
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->avc:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Sps:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Pps:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->muxSequenceHeader(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/util/ArrayList;)V

    .line 846
    const/4 v3, 0x1

    .line 847
    .local v3, "frame_type":I
    const/4 v4, 0x0

    .line 848
    .local v4, "avc_packet_type":I
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->avc:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;

    invoke-virtual {v0, v6, v3, v4}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->muxFlvTag(Ljava/util/ArrayList;II)Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->video_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    .line 850
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v0, v8}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1502(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Z)Z

    .line 852
    const/16 v1, 0x9

    iget-object v5, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->video_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->writeRtmpPacket(IIIILnet/ossrs/rtmp/SrsAllocator$Allocation;)V

    .line 853
    const-string v0, "SrsFlvMuxer"

    const-string v1, "flv: h264 sps/pps sent, sps=%dB, pps=%dB"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Sps:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    iget-object v5, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Pps:Ljava/nio/ByteBuffer;

    .line 854
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v8

    .line 853
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeRtmpPacket(IIIILnet/ossrs/rtmp/SrsAllocator$Allocation;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "dts"    # I
    .param p3, "frame_type"    # I
    .param p4, "avc_aac_type"    # I
    .param p5, "tag"    # Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    .prologue
    .line 870
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V

    .line 871
    .local v0, "frame":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;
    iput-object p5, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    .line 872
    iput p1, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->type:I

    .line 873
    iput p2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->dts:I

    .line 874
    iput p3, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->frame_type:I

    .line 875
    iput p4, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->avc_aac_type:I

    .line 877
    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 878
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$800(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 879
    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->is_keyframe()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$802(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Z)Z

    .line 881
    invoke-direct {p0, v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->flvFrameCacheAdd(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)V

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->flvFrameCacheAdd(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_0

    .line 886
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->is_audio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    invoke-direct {p0, v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->flvFrameCacheAdd(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 661
    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Sps:Ljava/nio/ByteBuffer;

    .line 662
    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Pps:Ljava/nio/ByteBuffer;

    .line 663
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1502(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Z)Z

    .line 664
    iput-boolean v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->aac_specific_config_got:Z

    .line 665
    return-void
.end method

.method public setAchannel(I)V
    .locals 0
    .param p1, "achannel"    # I

    .prologue
    .line 657
    iput p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->achannel:I

    .line 658
    return-void
.end method

.method public setSpsPPs(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Sps:Ljava/nio/ByteBuffer;

    .line 832
    iput-object p2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Pps:Ljava/nio/ByteBuffer;

    .line 833
    return-void
.end method

.method public writeAudioSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 18
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 668
    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v16, 0x3e8

    div-long v2, v2, v16

    long-to-int v4, v2

    .line 670
    .local v4, "dts":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1600(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsAllocator;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lnet/ossrs/rtmp/SrsAllocator;->allocate(I)Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->audio_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    .line 671
    const/4 v6, 0x1

    .line 672
    .local v6, "aac_packet_type":B
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->aac_specific_config_got:Z

    if-nez v2, :cond_7

    .line 677
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xf8

    int-to-byte v9, v2

    .line 681
    .local v9, "ch":B
    const/4 v11, 0x4

    .line 682
    .local v11, "samplingFrequencyIndex":B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1700(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)I

    move-result v2

    const/16 v3, 0x5622

    if-ne v2, v3, :cond_4

    .line 683
    const/4 v11, 0x7

    .line 691
    :cond_0
    :goto_0
    shr-int/lit8 v2, v11, 0x1

    and-int/lit8 v2, v2, 0x7

    or-int/2addr v2, v9

    int-to-byte v9, v2

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->audio_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    const/4 v3, 0x2

    invoke-virtual {v2, v9, v3}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(BI)V

    .line 694
    shl-int/lit8 v2, v11, 0x7

    and-int/lit16 v2, v2, 0x80

    int-to-byte v9, v2

    .line 698
    const/4 v10, 0x1

    .line 699
    .local v10, "channelConfiguration":B
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->achannel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 700
    const/4 v10, 0x2

    .line 702
    :cond_1
    shl-int/lit8 v2, v10, 0x3

    and-int/lit8 v2, v2, 0x78

    or-int/2addr v2, v9

    int-to-byte v9, v2

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->audio_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    const/4 v3, 0x3

    invoke-virtual {v2, v9, v3}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(BI)V

    .line 712
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->aac_specific_config_got:Z

    .line 713
    const/4 v6, 0x0

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->audio_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v2}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->array()[B

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->writeAdtsHeader([BI)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->audio_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->appendOffset(I)V

    .line 722
    .end local v9    # "ch":B
    .end local v10    # "channelConfiguration":B
    .end local v11    # "samplingFrequencyIndex":B
    :goto_1
    const/16 v12, 0xa

    .line 723
    .local v12, "sound_format":B
    const/4 v15, 0x0

    .line 724
    .local v15, "sound_type":B
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->achannel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 725
    const/4 v15, 0x1

    .line 727
    :cond_2
    const/4 v14, 0x1

    .line 728
    .local v14, "sound_size":B
    const/4 v13, 0x3

    .line 729
    .local v13, "sound_rate":B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1700(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)I

    move-result v2

    const/16 v3, 0x5622

    if-ne v2, v3, :cond_8

    .line 730
    const/4 v13, 0x2

    .line 738
    :cond_3
    :goto_2
    and-int/lit8 v2, v15, 0x1

    int-to-byte v8, v2

    .line 739
    .local v8, "audio_header":B
    or-int/lit8 v2, v8, 0x2

    int-to-byte v8, v2

    .line 740
    shl-int/lit8 v2, v13, 0x2

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v2, v8

    int-to-byte v8, v2

    .line 741
    or-int/lit16 v2, v8, 0xa0

    int-to-byte v8, v2

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->audio_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(BI)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->audio_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    const/4 v3, 0x1

    invoke-virtual {v2, v6, v3}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(BI)V

    .line 746
    const/16 v3, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->audio_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->writeRtmpPacket(IIIILnet/ossrs/rtmp/SrsAllocator$Allocation;)V

    .line 747
    return-void

    .line 684
    .end local v8    # "audio_header":B
    .end local v12    # "sound_format":B
    .end local v13    # "sound_rate":B
    .end local v14    # "sound_size":B
    .end local v15    # "sound_type":B
    .restart local v9    # "ch":B
    .restart local v11    # "samplingFrequencyIndex":B
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1700(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)I

    move-result v2

    const/16 v3, 0x2b11

    if-ne v2, v3, :cond_5

    .line 685
    const/16 v11, 0xa

    goto/16 :goto_0

    .line 686
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1700(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)I

    move-result v2

    const/16 v3, 0x7d00

    if-ne v2, v3, :cond_6

    .line 687
    const/4 v11, 0x5

    goto/16 :goto_0

    .line 688
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1700(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)I

    move-result v2

    const/16 v3, 0x3e80

    if-ne v2, v3, :cond_0

    .line 689
    const/16 v11, 0x8

    goto/16 :goto_0

    .line 718
    .end local v9    # "ch":B
    .end local v11    # "samplingFrequencyIndex":B
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->audio_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v2}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->array()[B

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p2

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->audio_tag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->appendOffset(I)V

    goto/16 :goto_1

    .line 731
    .restart local v12    # "sound_format":B
    .restart local v13    # "sound_rate":B
    .restart local v14    # "sound_size":B
    .restart local v15    # "sound_type":B
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1700(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)I

    move-result v2

    const/16 v3, 0x2b11

    if-ne v2, v3, :cond_3

    .line 732
    const/4 v13, 0x1

    goto/16 :goto_2
.end method

.method public writeVideoSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 12
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 786
    iget v8, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-wide v8, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v5, v8

    .line 789
    .local v5, "pts":I
    const/4 v7, 0x2

    .line 790
    .local v7, "type":I
    iget-object v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->avc:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;

    iget v9, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v10, 0x1

    invoke-virtual {v8, p1, v9, v10}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->demuxAnnexb(Ljava/nio/ByteBuffer;IZ)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    move-result-object v0

    .line 791
    .local v0, "frame":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;
    iget-object v8, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v3, v8, 0x1f

    .line 792
    .local v3, "nal_unit_type":I
    const/4 v8, 0x5

    if-ne v3, v8, :cond_3

    .line 793
    const/4 v7, 0x1

    .line 823
    :cond_2
    iget-object v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->ipbs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->avc:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;

    invoke-virtual {v9, v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->muxNaluHeader(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    iget-object v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->ipbs:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->ipbs:Ljava/util/ArrayList;

    invoke-direct {p0, v8, v7, v5}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->writeH264IpbFrame(Ljava/util/ArrayList;II)V

    .line 827
    iget-object v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->ipbs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 794
    :cond_3
    const/4 v8, 0x7

    if-eq v3, v8, :cond_4

    const/16 v8, 0x8

    if-ne v3, v8, :cond_7

    .line 795
    :cond_4
    iget-object v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->avc:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;

    iget v9, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v10, 0x0

    invoke-virtual {v8, p1, v9, v10}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->demuxAnnexb(Ljava/nio/ByteBuffer;IZ)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    move-result-object v1

    .line 796
    .local v1, "frame_pps":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;
    iget v8, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    iget v9, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x4

    iput v8, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 797
    iget-object v8, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Sps:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 798
    iget v8, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    new-array v6, v8, [B

    .line 799
    .local v6, "sps":[B
    iget-object v8, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 800
    iget-object v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1502(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Z)Z

    .line 801
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Sps:Ljava/nio/ByteBuffer;

    .line 804
    .end local v6    # "sps":[B
    :cond_5
    iget-object v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->avc:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;

    iget v9, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v10, 0x0

    invoke-virtual {v8, p1, v9, v10}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->demuxAnnexb(Ljava/nio/ByteBuffer;IZ)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    move-result-object v2

    .line 805
    .local v2, "frame_sei":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;
    iget v8, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    if-lez v8, :cond_6

    .line 806
    const/4 v8, 0x6

    iget-object v9, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x1f

    if-ne v8, v9, :cond_6

    .line 807
    iget v8, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    iget v9, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x3

    iput v8, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 811
    :cond_6
    iget v8, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    if-lez v8, :cond_0

    iget-object v8, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Pps:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 812
    iget v8, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    new-array v4, v8, [B

    .line 813
    .local v4, "pps":[B
    iget-object v8, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 814
    iget-object v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1502(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Z)Z

    .line 815
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->Pps:Ljava/nio/ByteBuffer;

    .line 816
    invoke-direct {p0, v5}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->writeH264SpsPps(I)V

    goto/16 :goto_0

    .line 819
    .end local v1    # "frame_pps":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;
    .end local v2    # "frame_sei":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;
    .end local v4    # "pps":[B
    :cond_7
    const/4 v8, 0x1

    if-eq v3, v8, :cond_2

    goto/16 :goto_0
.end method
