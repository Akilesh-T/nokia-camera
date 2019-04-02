.class Lcom/pedro/encoder/video/VideoEncoder$5;
.super Ljava/lang/Object;
.source "VideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/encoder/video/VideoEncoder;->getDataFromSurface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pedro/encoder/video/VideoEncoder;


# direct methods
.method constructor <init>(Lcom/pedro/encoder/video/VideoEncoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 388
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_3

    .line 389
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1700(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 391
    .local v4, "outputBuffers":[Ljava/nio/ByteBuffer;
    :goto_0
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1700(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v6}, Lcom/pedro/encoder/video/VideoEncoder;->access$1600(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 392
    .local v3, "outBufferIndex":I
    const/4 v5, -0x2

    if-ne v3, v5, :cond_1

    .line 393
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1700(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 394
    .local v2, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1800(Lcom/pedro/encoder/video/VideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/pedro/encoder/video/GetH264Data;->onVideoFormat(Landroid/media/MediaFormat;)V

    .line 395
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1800(Lcom/pedro/encoder/video/VideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v5

    const-string v6, "csd-0"

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v6

    const-string v7, "csd-1"

    .line 396
    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 395
    invoke-interface {v5, v6, v7}, Lcom/pedro/encoder/video/GetH264Data;->onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 397
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5, v10}, Lcom/pedro/encoder/video/VideoEncoder;->access$1902(Lcom/pedro/encoder/video/VideoEncoder;Z)Z

    goto :goto_0

    .line 398
    .end local v2    # "mediaFormat":Landroid/media/MediaFormat;
    :cond_1
    if-ltz v3, :cond_0

    .line 400
    aget-object v0, v4, v3

    .line 401
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1600(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v5

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 402
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1900(Lcom/pedro/encoder/video/VideoEncoder;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 403
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    .line 404
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v7}, Lcom/pedro/encoder/video/VideoEncoder;->access$1600(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v7

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v5, v6, v7}, Lcom/pedro/encoder/video/VideoEncoder;->access$2000(Lcom/pedro/encoder/video/VideoEncoder;Ljava/nio/ByteBuffer;I)Landroid/util/Pair;

    move-result-object v1

    .line 405
    .local v1, "buffers":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;>;"
    if-eqz v1, :cond_2

    .line 406
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1800(Lcom/pedro/encoder/video/VideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v7

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-interface {v7, v5, v6}, Lcom/pedro/encoder/video/GetH264Data;->onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 407
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5, v10}, Lcom/pedro/encoder/video/VideoEncoder;->access$1902(Lcom/pedro/encoder/video/VideoEncoder;Z)Z

    .line 411
    .end local v1    # "buffers":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;>;"
    :cond_2
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1600(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iget-object v8, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v8}, Lcom/pedro/encoder/video/VideoEncoder;->access$2100(Lcom/pedro/encoder/video/VideoEncoder;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 412
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1800(Lcom/pedro/encoder/video/VideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v6}, Lcom/pedro/encoder/video/VideoEncoder;->access$1600(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/pedro/encoder/video/GetH264Data;->getH264Data(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 413
    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$5;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1700(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 419
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "outBufferIndex":I
    .end local v4    # "outputBuffers":[Ljava/nio/ByteBuffer;
    :cond_3
    return-void
.end method
