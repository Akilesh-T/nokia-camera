.class Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/rtmp/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsRawH264Stream"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SrsFlvMuxer"


# instance fields
.field private annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

.field private nalu_header:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

.field private pps_bb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

.field private pps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

.field private seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

.field private sps_bb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

.field private sps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

.field final synthetic this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    .line 389
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 390
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 391
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 392
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_bb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 393
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 394
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_bb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    return-void
.end method

.method synthetic constructor <init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;
    .param p2, "x1"    # Lnet/ossrs/rtmp/SrsFlvMuxer$1;

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V

    return-void
.end method

.method private searchAnnexb(Ljava/nio/ByteBuffer;I)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 573
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v3, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 574
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    iput v3, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    .line 575
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x4

    if-ge v0, v1, :cond_2

    .line 577
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :cond_1
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_3

    .line 582
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v2, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 583
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    .line 593
    :cond_2
    :goto_1
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    return-object v1

    .line 587
    :cond_3
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_0

    .line 588
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v2, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 589
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    goto :goto_1
.end method

.method private searchStartcode(Ljava/nio/ByteBuffer;I)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;
    .locals 5
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 556
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v2, v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 557
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    iput v2, v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    .line 558
    add-int/lit8 v0, p2, -0x4

    if-lez v0, :cond_0

    .line 559
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v1, :cond_1

    .line 561
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v1, v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 562
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    const/4 v1, 0x4

    iput v1, v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    .line 569
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    return-object v0

    .line 563
    :cond_1
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v1, v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 566
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    iput v4, v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    goto :goto_0
.end method


# virtual methods
.method public demuxAnnexb(Ljava/nio/ByteBuffer;IZ)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;
    .locals 5
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .param p3, "isOnlyChkHeader"    # Z

    .prologue
    .line 597
    new-instance v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v3, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$1;)V

    .line 598
    .local v1, "tbb":Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v4, p2, -0x4

    if-ge v3, v4, :cond_1

    .line 601
    if-eqz p3, :cond_2

    .line 602
    invoke-direct {p0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->searchStartcode(Ljava/nio/ByteBuffer;I)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    move-result-object v2

    .line 604
    .local v2, "tbbsc":Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;
    :goto_0
    iget-boolean v3, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    .line 605
    :cond_0
    const-string v3, "SrsFlvMuxer"

    const-string v4, "annexb not match."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v2    # "tbbsc":Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;
    :cond_1
    :goto_1
    return-object v1

    .line 602
    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->searchAnnexb(Ljava/nio/ByteBuffer;I)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;

    move-result-object v2

    goto :goto_0

    .line 608
    .restart local v2    # "tbbsc":Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v3, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    if-ge v0, v3, :cond_4

    .line 609
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 613
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 614
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v3, p2, v3

    iput v3, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    goto :goto_1
.end method

.method public isPps(Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;)Z
    .locals 4
    .param p1, "frame"    # Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 401
    iget v2, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    if-lt v2, v0, :cond_0

    iget-object v2, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isSps(Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;)Z
    .locals 4
    .param p1, "frame"    # Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 397
    iget v2, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    if-lt v2, v0, :cond_0

    iget-object v2, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public muxFlvTag(Ljava/util/ArrayList;II)Lnet/ossrs/rtmp/SrsAllocator$Allocation;
    .locals 9
    .param p2, "frame_type"    # I
    .param p3, "avc_packet_type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;",
            ">;II)",
            "Lnet/ossrs/rtmp/SrsAllocator$Allocation;"
        }
    .end annotation

    .prologue
    .local p1, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;>;"
    const/4 v6, 0x0

    .line 520
    const/4 v4, 0x5

    .line 521
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 522
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget v5, v5, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    add-int/2addr v4, v5

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    :cond_0
    iget-object v5, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v5}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$1100(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsAllocator;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/ossrs/rtmp/SrsAllocator;->allocate(I)Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    move-result-object v0

    .line 530
    .local v0, "allocation":Lnet/ossrs/rtmp/SrsAllocator$Allocation;
    shl-int/lit8 v5, p2, 0x4

    or-int/lit8 v5, v5, 0x7

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 533
    int-to-byte v5, p3

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, "cts":I
    int-to-byte v5, v6

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 541
    int-to-byte v5, v6

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 542
    int-to-byte v5, v1

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 545
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 546
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 547
    .local v2, "frame":Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;
    iget-object v5, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 548
    iget-object v5, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->array()[B

    move-result-object v6

    invoke-virtual {v0}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size()I

    move-result v7

    iget v8, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    invoke-virtual {v5, v6, v7, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 549
    iget v5, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->appendOffset(I)V

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 552
    .end local v2    # "frame":Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;
    :cond_1
    return-object v0
.end method

.method public muxNaluHeader(Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;
    .locals 4
    .param p1, "frame"    # Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    .prologue
    const/4 v3, 0x4

    .line 405
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 406
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 407
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iput v3, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 409
    :cond_0
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 413
    iget v0, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 418
    .local v0, "NAL_unit_length":I
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 421
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 422
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    return-object v1
.end method

.method public muxSequenceHeader(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;>;"
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 441
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 442
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 443
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iput v6, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 445
    :cond_0
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 450
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 452
    .local v1, "profile_idc":B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 457
    .local v0, "level_idc":B
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 459
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 461
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v3}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$1000(Lnet/ossrs/rtmp/SrsFlvMuxer;)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 463
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 466
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 469
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 470
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    .line 474
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 475
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iput v4, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 477
    :cond_1
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 480
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 482
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 484
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 485
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_bb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    iput v3, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 489
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_bb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 490
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->sps_bb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_2

    .line 494
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 495
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iput v4, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 497
    :cond_2
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 500
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 502
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 504
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 505
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_bb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    iput v3, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 509
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_bb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 510
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;->pps_bb:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method
