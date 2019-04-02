.class Lcom/pedro/encoder/video/VideoEncoder$2;
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
    .line 237
    iput-object p1, p0, Lcom/pedro/encoder/video/VideoEncoder$2;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 240
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$2;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$400(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 243
    .local v0, "buffer":[B
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$2;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$500(Lcom/pedro/encoder/video/VideoEncoder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$2;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$600(Lcom/pedro/encoder/video/VideoEncoder;)I

    move-result v2

    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder$2;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v3}, Lcom/pedro/encoder/video/VideoEncoder;->access$700(Lcom/pedro/encoder/video/VideoEncoder;)I

    move-result v3

    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder$2;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v4}, Lcom/pedro/encoder/video/VideoEncoder;->access$800(Lcom/pedro/encoder/video/VideoEncoder;)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/pedro/encoder/utils/YUVUtil;->rotateNV21([BIII)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 246
    :try_start_1
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$2;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$900(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$2;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$1000(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "frame discarded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 251
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$2;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$1100(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$2;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$1100(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 255
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
