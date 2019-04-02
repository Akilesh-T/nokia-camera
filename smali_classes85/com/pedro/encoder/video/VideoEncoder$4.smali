.class Lcom/pedro/encoder/video/VideoEncoder$4;
.super Ljava/lang/Object;
.source "VideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/encoder/video/VideoEncoder;->getDataFromSurfaceAPI21()V
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
    .line 346
    iput-object p1, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 349
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 351
    :goto_0
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1700(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v4

    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1600(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 352
    .local v3, "outBufferIndex":I
    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 353
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1700(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 354
    .local v2, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1800(Lcom/pedro/encoder/video/VideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/pedro/encoder/video/GetH264Data;->onVideoFormat(Landroid/media/MediaFormat;)V

    .line 355
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1800(Lcom/pedro/encoder/video/VideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v4

    const-string v5, "csd-0"

    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    const-string v6, "csd-1"

    .line 356
    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 355
    invoke-interface {v4, v5, v6}, Lcom/pedro/encoder/video/GetH264Data;->onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 357
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4, v10}, Lcom/pedro/encoder/video/VideoEncoder;->access$1902(Lcom/pedro/encoder/video/VideoEncoder;Z)Z

    goto :goto_0

    .line 358
    .end local v2    # "mediaFormat":Landroid/media/MediaFormat;
    :cond_1
    if-ltz v3, :cond_0

    .line 360
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1700(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 361
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1600(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 362
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1900(Lcom/pedro/encoder/video/VideoEncoder;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 363
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    .line 364
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v6}, Lcom/pedro/encoder/video/VideoEncoder;->access$1600(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v6

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v4, v5, v6}, Lcom/pedro/encoder/video/VideoEncoder;->access$2000(Lcom/pedro/encoder/video/VideoEncoder;Ljava/nio/ByteBuffer;I)Landroid/util/Pair;

    move-result-object v1

    .line 365
    .local v1, "buffers":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;>;"
    if-eqz v1, :cond_2

    .line 366
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1800(Lcom/pedro/encoder/video/VideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v6

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-interface {v6, v4, v5}, Lcom/pedro/encoder/video/GetH264Data;->onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 367
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4, v10}, Lcom/pedro/encoder/video/VideoEncoder;->access$1902(Lcom/pedro/encoder/video/VideoEncoder;Z)Z

    .line 371
    .end local v1    # "buffers":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;>;"
    :cond_2
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1600(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$2100(Lcom/pedro/encoder/video/VideoEncoder;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 372
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1800(Lcom/pedro/encoder/video/VideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v4

    iget-object v5, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v5}, Lcom/pedro/encoder/video/VideoEncoder;->access$1600(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/pedro/encoder/video/GetH264Data;->getH264Data(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 373
    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$4;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1700(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 379
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "outBufferIndex":I
    :cond_3
    return-void
.end method
