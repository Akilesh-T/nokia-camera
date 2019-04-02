.class Lcom/pedro/rtsp/rtsp/RtspClient$2;
.super Ljava/lang/Object;
.source "RtspClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/rtsp/rtsp/RtspClient;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pedro/rtsp/rtsp/RtspClient;


# direct methods
.method constructor <init>(Lcom/pedro/rtsp/rtsp/RtspClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient$2;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient$2;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v1}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient$2;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v2}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$2100(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient$2;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v1}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$100(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient$2;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v1}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1100(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v1

    invoke-interface {v1}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onDisconnectRtsp()V

    .line 244
    iget-object v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient$2;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$2002(Lcom/pedro/rtsp/rtsp/RtspClient;Z)Z

    .line 245
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "RtspClient"

    const-string v2, "disconnect error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
