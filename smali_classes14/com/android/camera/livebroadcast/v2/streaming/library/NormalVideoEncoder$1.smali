.class Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;
.super Landroid/media/MediaCodec$Callback;
.source "NormalVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "e"    # Landroid/media/MediaCodec$CodecException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-static {}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    throw p2
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0
    .param p1, "codec"    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 12
    .param p1, "codec"    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I
    .param p3, "info"    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$000(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    monitor-enter v5

    .line 87
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$000(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$100(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$100(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/4 v3, -0x2

    if-ne p2, v3, :cond_2

    .line 91
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 92
    .local v1, "bb1":Landroid/media/MediaFormat;
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$200(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/pedro/encoder/video/GetH264Data;->onVideoFormat(Landroid/media/MediaFormat;)V

    .line 93
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$200(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v3

    const-string v4, "csd-0"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-string v7, "csd-1"

    invoke-virtual {v1, v7}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Lcom/pedro/encoder/video/GetH264Data;->onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 94
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$302(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;Z)Z

    .line 108
    .end local v1    # "bb1":Landroid/media/MediaFormat;
    :cond_0
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1, p2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 111
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    return-void

    .line 95
    :cond_2
    if-ltz p2, :cond_0

    .line 96
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$300(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 98
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget v7, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v3, v4, v7}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$400(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;Ljava/nio/ByteBuffer;I)Landroid/util/Pair;

    move-result-object v2

    .line 99
    .local v2, "buffers":Landroid/util/Pair;
    if-eqz v2, :cond_3

    .line 100
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$200(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v7

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-interface {v7, v3, v4}, Lcom/pedro/encoder/video/GetH264Data;->onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 101
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$302(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;Z)Z

    .line 104
    .end local v2    # "buffers":Landroid/util/Pair;
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$500(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 105
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$200(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;

    move-result-object v3

    invoke-interface {v3, v0, p3}, Lcom/pedro/encoder/video/GetH264Data;->getH264Data(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 108
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 111
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "format"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    invoke-static {}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutputFormatChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
