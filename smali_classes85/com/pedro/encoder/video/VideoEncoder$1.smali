.class Lcom/pedro/encoder/video/VideoEncoder$1;
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
    .line 220
    iput-object p1, p0, Lcom/pedro/encoder/video/VideoEncoder$1;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 223
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$1;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$000(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 226
    .local v0, "buffer":[B
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 227
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$1;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2, v0}, Lcom/pedro/encoder/video/VideoEncoder;->access$100(Lcom/pedro/encoder/video/VideoEncoder;[B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v0    # "buffer":[B
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$1;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$300(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$1;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2}, Lcom/pedro/encoder/video/VideoEncoder;->access$300(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 229
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "buffer":[B
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder$1;->this$0:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-static {v2, v0}, Lcom/pedro/encoder/video/VideoEncoder;->access$200(Lcom/pedro/encoder/video/VideoEncoder;[B)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 235
    .end local v0    # "buffer":[B
    :cond_2
    return-void
.end method
