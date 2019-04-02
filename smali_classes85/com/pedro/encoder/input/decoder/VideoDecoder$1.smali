.class Lcom/pedro/encoder/input/decoder/VideoDecoder$1;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/encoder/input/decoder/VideoDecoder;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pedro/encoder/input/decoder/VideoDecoder;


# direct methods
.method constructor <init>(Lcom/pedro/encoder/input/decoder/VideoDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pedro/encoder/input/decoder/VideoDecoder;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder$1;->this$0:Lcom/pedro/encoder/input/decoder/VideoDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 78
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder$1;->this$0:Lcom/pedro/encoder/input/decoder/VideoDecoder;

    invoke-static {v0}, Lcom/pedro/encoder/input/decoder/VideoDecoder;->access$000(Lcom/pedro/encoder/input/decoder/VideoDecoder;)V

    .line 79
    return-void
.end method
