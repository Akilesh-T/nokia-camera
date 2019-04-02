.class Lcom/android/camera/livebroadcast/streaming/NormalVideoController$1;
.super Landroid/media/MediaCodec$Callback;
.source "NormalVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/streaming/NormalVideoController;-><init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/streaming/NormalVideoController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController$1;->this$0:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 3
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "e"    # Landroid/media/MediaCodec$CodecException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    throw p2
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "i"    # I

    .prologue
    .line 49
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "i"    # I
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController$1;->this$0:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->access$000(Lcom/android/camera/livebroadcast/streaming/NormalVideoController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController$1;->this$0:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->access$000(Lcom/android/camera/livebroadcast/streaming/NormalVideoController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController$1;->this$0:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->access$100(Lcom/android/camera/livebroadcast/streaming/NormalVideoController;)Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController$1;->this$0:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->access$200(Lcom/android/camera/livebroadcast/streaming/NormalVideoController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController$1;->this$0:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->access$200(Lcom/android/camera/livebroadcast/streaming/NormalVideoController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController$1;->this$0:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->access$100(Lcom/android/camera/livebroadcast/streaming/NormalVideoController;)Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;->onVideoEncode(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 60
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 64
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    return-void

    .line 60
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 64
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mediaFormat"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    return-void
.end method
