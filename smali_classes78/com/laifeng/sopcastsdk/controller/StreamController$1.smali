.class Lcom/laifeng/sopcastsdk/controller/StreamController$1;
.super Ljava/lang/Object;
.source "StreamController.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laifeng/sopcastsdk/controller/StreamController;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/controller/StreamController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/controller/StreamController;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->access$000(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->access$100(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/stream/sender/Sender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->access$000(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    move-result-object v0

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/stream/packer/Packer;->start()V

    .line 65
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->access$100(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/stream/sender/Sender;

    move-result-object v0

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/stream/sender/Sender;->start()V

    .line 66
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->access$200(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/controller/video/IVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-interface {v0, v1}, Lcom/laifeng/sopcastsdk/controller/video/IVideoController;->setVideoEncoderListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V

    .line 67
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->access$300(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;

    move-result-object v0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-interface {v0, v1}, Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;->setAudioEncodeListener(Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;)V

    .line 68
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->access$300(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;

    move-result-object v0

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;->start()V

    .line 69
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->access$200(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/controller/video/IVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/controller/video/IVideoController;->start()V

    goto :goto_0
.end method
