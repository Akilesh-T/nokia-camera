.class Lcom/pedro/encoder/input/decoder/AudioDecoder$1;
.super Ljava/lang/Object;
.source "AudioDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/encoder/input/decoder/AudioDecoder;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pedro/encoder/input/decoder/AudioDecoder;


# direct methods
.method constructor <init>(Lcom/pedro/encoder/input/decoder/AudioDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pedro/encoder/input/decoder/AudioDecoder;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder$1;->this$0:Lcom/pedro/encoder/input/decoder/AudioDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder$1;->this$0:Lcom/pedro/encoder/input/decoder/AudioDecoder;

    invoke-static {v0}, Lcom/pedro/encoder/input/decoder/AudioDecoder;->access$000(Lcom/pedro/encoder/input/decoder/AudioDecoder;)V

    .line 85
    return-void
.end method
