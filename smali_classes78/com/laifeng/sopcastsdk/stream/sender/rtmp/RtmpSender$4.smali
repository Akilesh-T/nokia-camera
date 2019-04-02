.class Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;
.super Ljava/lang/Object;
.source "RtmpSender.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateStreamFail()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->sendPublishFail()V

    .line 172
    return-void
.end method

.method public onCreateStreamSuccess()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onHandshakeFail()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->sendPublishFail()V

    .line 152
    return-void
.end method

.method public onHandshakeSuccess()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onPublishFail()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->sendPublishFail()V

    .line 189
    return-void
.end method

.method public onPublishSuccess()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->access$200(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    move-result-object v0

    new-instance v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4$1;

    invoke-direct {v1, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4$1;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;)V

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method public onRtmpConnectFail()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->sendPublishFail()V

    .line 162
    return-void
.end method

.method public onRtmpConnectSuccess()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onSocketConnectFail()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->sendPublishFail()V

    .line 142
    return-void
.end method

.method public onSocketConnectSuccess()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onSocketDisconnect()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->sendDisconnectMsg()V

    .line 194
    return-void
.end method

.method public onStreamEnd()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->sendDisconnectMsg()V

    .line 199
    return-void
.end method

.method public onUrlInvalid()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->sendPublishFail()V

    .line 132
    return-void
.end method
