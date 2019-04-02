.class Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsRawH264Stream"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SrsFlvMuxer"


# instance fields
.field private annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

.field private nalu_header:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

.field private pps_bb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

.field private pps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

.field private seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

.field private sps_bb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

.field private sps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    .line 407
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 408
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 409
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 410
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_bb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 411
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 412
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_bb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p2, "x1"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)V

    return-void
.end method

.method private searchAnnexb(Ljava/nio/ByteBuffer;I)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 591
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v3, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 592
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    iput v3, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    .line 593
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x4

    if-ge v0, v1, :cond_2

    .line 595
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_1
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_3

    .line 600
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v2, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 601
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    .line 611
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    return-object v1

    .line 605
    :cond_3
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v2, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 607
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    goto :goto_1
.end method

.method private searchStartcode(Ljava/nio/ByteBuffer;I)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;
    .locals 5
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 574
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 575
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    iput v2, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    .line 576
    add-int/lit8 v0, p2, -0x4

    if-lez v0, :cond_0

    .line 577
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

    .line 579
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v1, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 580
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    .line 587
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    return-object v0

    .line 581
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

    .line 583
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    iput-boolean v1, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 584
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->annexb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    iput v4, v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    goto :goto_0
.end method


# virtual methods
.method public demuxAnnexb(Ljava/nio/ByteBuffer;IZ)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;
    .locals 5
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .param p3, "isOnlyChkHeader"    # Z

    .prologue
    .line 615
    new-instance v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V

    .line 616
    .local v1, "tbb":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v4, p2, -0x4

    if-ge v3, v4, :cond_1

    .line 619
    if-eqz p3, :cond_2

    .line 620
    invoke-direct {p0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->searchStartcode(Ljava/nio/ByteBuffer;I)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    move-result-object v2

    .line 622
    .local v2, "tbbsc":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;
    :goto_0
    iget-boolean v3, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    .line 623
    :cond_0
    const-string v3, "SrsFlvMuxer"

    const-string v4, "annexb not match."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .end local v2    # "tbbsc":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;
    :cond_1
    :goto_1
    return-object v1

    .line 620
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->searchAnnexb(Ljava/nio/ByteBuffer;I)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;

    move-result-object v2

    goto :goto_0

    .line 626
    .restart local v2    # "tbbsc":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v3, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    if-ge v0, v3, :cond_4

    .line 627
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 631
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 632
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v3, p2, v3

    iput v3, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    goto :goto_1
.end method

.method public isPps(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;)Z
    .locals 4
    .param p1, "frame"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 419
    iget v2, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    if-lt v2, v0, :cond_0

    iget-object v2, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

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

.method public isSps(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;)Z
    .locals 4
    .param p1, "frame"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 415
    iget v2, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    if-lt v2, v0, :cond_0

    iget-object v2, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

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
            "Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;",
            ">;II)",
            "Lnet/ossrs/rtmp/SrsAllocator$Allocation;"
        }
    .end annotation

    .prologue
    .local p1, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;>;"
    const/4 v6, 0x0

    .line 538
    const/4 v4, 0x5

    .line 539
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 540
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget v5, v5, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    add-int/2addr v4, v5

    .line 539
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 542
    :cond_0
    iget-object v5, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v5}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1300(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsAllocator;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/ossrs/rtmp/SrsAllocator;->allocate(I)Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    move-result-object v0

    .line 548
    .local v0, "allocation":Lnet/ossrs/rtmp/SrsAllocator$Allocation;
    shl-int/lit8 v5, p2, 0x4

    or-int/lit8 v5, v5, 0x7

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 551
    int-to-byte v5, p3

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 557
    const/4 v1, 0x0

    .line 558
    .local v1, "cts":I
    int-to-byte v5, v6

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 559
    int-to-byte v5, v6

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 560
    int-to-byte v5, v1

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 563
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 564
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 565
    .local v2, "frame":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;
    iget-object v5, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 566
    iget-object v5, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->array()[B

    move-result-object v6

    invoke-virtual {v0}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size()I

    move-result v7

    iget v8, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    invoke-virtual {v5, v6, v7, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 567
    iget v5, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    invoke-virtual {v0, v5}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->appendOffset(I)V

    .line 563
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 570
    .end local v2    # "frame":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;
    :cond_1
    return-object v0
.end method

.method public muxNaluHeader(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;
    .locals 4
    .param p1, "frame"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    .prologue
    const/4 v3, 0x4

    .line 423
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 425
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iput v3, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 431
    iget v0, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 436
    .local v0, "NAL_unit_length":I
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 439
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 440
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->nalu_header:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

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
            "Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;>;"
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 459
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 461
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iput v6, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 468
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 470
    .local v1, "profile_idc":B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 475
    .local v0, "level_idc":B
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 477
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 479
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$1200(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 481
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 484
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 487
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 488
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->seq_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 493
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iput v4, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 498
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 500
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 502
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 503
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_bb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    iput v3, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 507
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_bb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 508
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->sps_bb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_2

    .line 512
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 513
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iput v4, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 515
    :cond_2
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 518
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 520
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 522
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 523
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_hdr:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_bb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    iput v3, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 527
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_bb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 528
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;->pps_bb:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    return-void
.end method
