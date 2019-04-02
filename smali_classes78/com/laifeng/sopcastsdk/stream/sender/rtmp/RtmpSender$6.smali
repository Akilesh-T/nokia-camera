.class Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$6;
.super Ljava/lang/Object;
.source "RtmpSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->sendPublishFail()V
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
    .line 214
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$6;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$6;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->access$000(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$6;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->access$000(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;->onPublishFail()V

    .line 220
    :cond_0
    return-void
.end method
