.class Lcom/android/camera/livebroadcast/streaming/Streaming$2;
.super Ljava/lang/Object;
.source "Streaming.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/streaming/Streaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/streaming/Streaming;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/streaming/Streaming;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onConnected()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$400(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->start()V

    .line 138
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$600(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v1

    iget v1, v1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->maxBps:I

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$502(Lcom/android/camera/livebroadcast/streaming/Streaming;I)I

    .line 139
    return-void
.end method

.method public onConnecting()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onConnecting()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onDisConnected()V
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onDisConnected()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$400(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->stop()V

    .line 146
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$302(Lcom/android/camera/livebroadcast/streaming/Streaming;Z)Z

    .line 147
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$200(Lcom/android/camera/livebroadcast/streaming/Streaming;)V

    .line 148
    return-void
.end method

.method public onNetBad()V
    .locals 5

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$500(Lcom/android/camera/livebroadcast/streaming/Streaming;)I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    iget-object v3, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$600(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v3

    iget v3, v3, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->minBps:I

    if-lt v2, v3, :cond_1

    .line 178
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "BPS_CHANGE bad down 100"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$500(Lcom/android/camera/livebroadcast/streaming/Streaming;)I

    move-result v2

    add-int/lit8 v0, v2, -0x64

    .line 180
    .local v0, "bps":I
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$400(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$400(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->setVideoBps(I)Z

    move-result v1

    .line 182
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2, v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$502(Lcom/android/camera/livebroadcast/streaming/Streaming;I)I

    .line 190
    .end local v0    # "bps":I
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Bps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$500(Lcom/android/camera/livebroadcast/streaming/Streaming;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    return-void

    .line 187
    :cond_1
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "BPS_CHANGE bad bad bad"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$700(Lcom/android/camera/livebroadcast/streaming/Streaming;)V

    goto :goto_0
.end method

.method public onNetGood()V
    .locals 5

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$500(Lcom/android/camera/livebroadcast/streaming/Streaming;)I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    iget-object v3, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$600(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v3

    iget v3, v3, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->maxBps:I

    if-gt v2, v3, :cond_1

    .line 161
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "BPS_CHANGE good up 50"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$500(Lcom/android/camera/livebroadcast/streaming/Streaming;)I

    move-result v2

    add-int/lit8 v0, v2, 0x32

    .line 163
    .local v0, "bps":I
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$400(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$400(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->setVideoBps(I)Z

    move-result v1

    .line 165
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2, v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$502(Lcom/android/camera/livebroadcast/streaming/Streaming;I)I

    .line 172
    .end local v0    # "bps":I
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Bps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$500(Lcom/android/camera/livebroadcast/streaming/Streaming;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    return-void

    .line 170
    :cond_1
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "BPS_CHANGE good good good"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPublishFail()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPublishFail()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$302(Lcom/android/camera/livebroadcast/streaming/Streaming;Z)Z

    .line 155
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$200(Lcom/android/camera/livebroadcast/streaming/Streaming;)V

    .line 156
    return-void
.end method
