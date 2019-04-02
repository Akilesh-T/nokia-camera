.class Lcom/pedro/encoder/video/VideoEncoder$3;
.super Ljava/lang/Object;
.source "VideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/encoder/video/VideoEncoder;->start()V
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
    .line 257
    iput-object p1, p0, Lcom/pedro/encoder/video/VideoEncoder$3;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 260
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$3;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$900(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 263
    .local v0, "buffer":[B
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$3;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$1200(Lcom/pedro/encoder/video/VideoEncoder;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$3;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$1300(Lcom/pedro/encoder/video/VideoEncoder;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 266
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$3;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$000(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$3;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$1000(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "frame discarded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 270
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$3;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$1500(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$3;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$1500(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 263
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "buffer":[B
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$3;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    .line 264
    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$600(Lcom/pedro/encoder/video/VideoEncoder;)I

    move-result v2

    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder$3;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v3}, Lcom/pedro/encoder/video/VideoEncoder;->access$700(Lcom/pedro/encoder/video/VideoEncoder;)I

    move-result v3

    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$3;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$1400(Lcom/pedro/encoder/video/VideoEncoder;)Lcom/pedro/encoder/video/FormatVideoEncoder;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/pedro/encoder/utils/YUVUtil;->NV21toYUV420byColor([BIILcom/pedro/encoder/video/FormatVideoEncoder;)[B
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_1

    .line 274
    .end local v0    # "buffer":[B
    :cond_2
    return-void
.end method
