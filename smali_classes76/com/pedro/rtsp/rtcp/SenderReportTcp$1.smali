.class Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;
.super Ljava/lang/Object;
.source "SenderReportTcp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/rtsp/rtcp/SenderReportTcp;->send(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

.field final synthetic val$ntpts:J

.field final synthetic val$rtpts:J


# direct methods
.method constructor <init>(Lcom/pedro/rtsp/rtcp/SenderReportTcp;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    iput-wide p2, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->val$ntpts:J

    iput-wide p4, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->val$rtpts:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 44
    iget-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    iget-wide v2, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->val$ntpts:J

    iget-wide v4, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->val$rtpts:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->setData(JJ)V

    .line 45
    iget-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    invoke-static {v1}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->access$000(Lcom/pedro/rtsp/rtcp/SenderReportTcp;)Ljava/io/OutputStream;

    move-result-object v2

    monitor-enter v2

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    invoke-static {v1}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->access$000(Lcom/pedro/rtsp/rtcp/SenderReportTcp;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v3, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    invoke-static {v3}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->access$100(Lcom/pedro/rtsp/rtcp/SenderReportTcp;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 48
    iget-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    invoke-static {v1}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->access$000(Lcom/pedro/rtsp/rtcp/SenderReportTcp;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v3, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    iget-object v3, v3, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->mBuffer:[B

    const/4 v4, 0x0

    const/16 v5, 0x1c

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    const-string v1, "SenderReport"

    const-string v3, "send report"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 55
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SenderReport"

    const-string v3, "send TCP report error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    iget-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;->this$0:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    invoke-static {v1}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->access$200(Lcom/pedro/rtsp/rtcp/SenderReportTcp;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error send report, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionFailedRtsp(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
