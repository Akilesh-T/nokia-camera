.class Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;
.super Ljava/lang/Object;
.source "SenderReportUdp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/rtsp/rtcp/SenderReportUdp;->send(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

.field final synthetic val$ntpts:J

.field final synthetic val$port:I

.field final synthetic val$rtpts:J


# direct methods
.method constructor <init>(Lcom/pedro/rtsp/rtcp/SenderReportUdp;JJI)V
    .locals 0
    .param p1, "this$0"    # Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    iput-wide p2, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->val$ntpts:J

    iput-wide p4, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->val$rtpts:J

    iput p6, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 62
    iget-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    iget-wide v2, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->val$ntpts:J

    iget-wide v4, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->val$rtpts:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->setData(JJ)V

    .line 63
    iget-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-static {v1}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->access$000(Lcom/pedro/rtsp/rtcp/SenderReportUdp;)Ljava/net/DatagramPacket;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 64
    iget-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-static {v1}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->access$000(Lcom/pedro/rtsp/rtcp/SenderReportUdp;)Ljava/net/DatagramPacket;

    move-result-object v1

    iget v2, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->val$port:I

    invoke-virtual {v1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-static {v1}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->access$100(Lcom/pedro/rtsp/rtcp/SenderReportUdp;)Ljava/net/MulticastSocket;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-static {v2}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->access$000(Lcom/pedro/rtsp/rtcp/SenderReportUdp;)Ljava/net/DatagramPacket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 67
    const-string v1, "SenderReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send report, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-static {v3}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->access$000(Lcom/pedro/rtsp/rtcp/SenderReportUdp;)Ljava/net/DatagramPacket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SenderReport"

    const-string v2, "send UDP report error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    iget-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-static {v1}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->access$200(Lcom/pedro/rtsp/rtcp/SenderReportUdp;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error send report, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionFailedRtsp(Ljava/lang/String;)V

    goto :goto_0
.end method
