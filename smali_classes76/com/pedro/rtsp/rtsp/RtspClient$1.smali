.class Lcom/pedro/rtsp/rtsp/RtspClient$1;
.super Ljava/lang/Object;
.source "RtspClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/rtsp/rtsp/RtspClient;->connect()V
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
    .line 161
    iput-object p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x191

    const/16 v10, 0xc8

    const/4 v9, 0x0

    .line 165
    :try_start_0
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$000(Lcom/pedro/rtsp/rtsp/RtspClient;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    invoke-static {v5, v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$102(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/net/Socket;)Ljava/net/Socket;

    .line 167
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$200(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$300(Lcom/pedro/rtsp/rtsp/RtspClient;)I

    move-result v6

    invoke-direct {v2, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 168
    .local v2, "socketAddress":Ljava/net/SocketAddress;
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$100(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/net/Socket;

    move-result-object v5

    const/16 v6, 0xbb8

    invoke-virtual {v5, v2, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 172
    .end local v2    # "socketAddress":Ljava/net/SocketAddress;
    :goto_0
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v8}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$100(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v5, v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$402(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;

    .line 173
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    iget-object v6, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$100(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$502(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 174
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    iget-object v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v8}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$500(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v5, v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$602(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;

    .line 175
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$700(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 176
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 177
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$800(Lcom/pedro/rtsp/rtsp/RtspClient;ZZ)Ljava/lang/String;

    .line 178
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$900(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 179
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 181
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$800(Lcom/pedro/rtsp/rtsp/RtspClient;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "response":Ljava/lang/String;
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5, v1}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1000(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/lang/String;)I

    move-result v3

    .line 183
    .local v3, "status":I
    const/16 v5, 0x193

    if-ne v3, v5, :cond_1

    .line 184
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1100(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v5

    const-string v6, "Error configure stream, access denied"

    invoke-interface {v5, v6}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionFailedRtsp(Ljava/lang/String;)V

    .line 185
    const-string v5, "RtspClient"

    const-string v6, "Response 403, access denied"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v1    # "response":Ljava/lang/String;
    .end local v3    # "status":I
    :goto_1
    return-void

    .line 170
    :cond_0
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    iget-object v6, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$200(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v7}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$300(Lcom/pedro/rtsp/rtsp/RtspClient;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/pedro/rtsp/utils/CreateSSLSocket;->createSSlSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$102(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v5, "RtspClient"

    const-string v6, "connection error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1100(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error configure stream, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionFailedRtsp(Ljava/lang/String;)V

    .line 224
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5, v9}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$2002(Lcom/pedro/rtsp/rtsp/RtspClient;Z)Z

    goto :goto_1

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v3    # "status":I
    :cond_1
    if-ne v3, v11, :cond_7

    .line 188
    :try_start_1
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1200(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1300(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 189
    :cond_2
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1100(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v5

    invoke-interface {v5}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onAuthErrorRtsp()V

    goto :goto_1

    .line 221
    .end local v1    # "response":Ljava/lang/String;
    .end local v3    # "status":I
    :catch_1
    move-exception v0

    goto :goto_2

    .line 192
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v3    # "status":I
    :cond_3
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v6, v1}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1400(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 193
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 194
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    iget-object v6, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$800(Lcom/pedro/rtsp/rtsp/RtspClient;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1000(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/lang/String;)I

    move-result v4

    .line 195
    .local v4, "statusAuth":I
    if-ne v4, v11, :cond_4

    .line 196
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1100(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v5

    invoke-interface {v5}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onAuthErrorRtsp()V

    goto/16 :goto_1

    .line 198
    :cond_4
    if-ne v4, v10, :cond_6

    .line 199
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1100(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v5

    invoke-interface {v5}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onAuthSuccessRtsp()V

    .line 207
    .end local v4    # "statusAuth":I
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v8}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1500(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/rtsp/Protocol;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1600(Lcom/pedro/rtsp/rtsp/RtspClient;ILcom/pedro/rtsp/rtsp/Protocol;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 208
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 209
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$800(Lcom/pedro/rtsp/rtsp/RtspClient;ZZ)Ljava/lang/String;

    .line 210
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v8}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1500(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/rtsp/Protocol;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1600(Lcom/pedro/rtsp/rtsp/RtspClient;ILcom/pedro/rtsp/rtsp/Protocol;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 211
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 212
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$800(Lcom/pedro/rtsp/rtsp/RtspClient;ZZ)Ljava/lang/String;

    .line 213
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1700(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 214
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 215
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$800(Lcom/pedro/rtsp/rtsp/RtspClient;ZZ)Ljava/lang/String;

    .line 217
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1800(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/rtp/packets/H264Packet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pedro/rtsp/rtp/packets/H264Packet;->updateDestinationVideo()V

    .line 218
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1900(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/rtp/packets/AacPacket;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pedro/rtsp/rtp/packets/AacPacket;->updateDestinationAudio()V

    .line 219
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$2002(Lcom/pedro/rtsp/rtsp/RtspClient;Z)Z

    .line 220
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1100(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v5

    invoke-interface {v5}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionSuccessRtsp()V

    goto/16 :goto_1

    .line 201
    .restart local v4    # "statusAuth":I
    :cond_6
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1100(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v5

    const-string v6, "Error configure stream, announce with auth failed"

    invoke-interface {v5, v6}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionFailedRtsp(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 204
    .end local v4    # "statusAuth":I
    :cond_7
    if-eq v3, v10, :cond_5

    .line 205
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient$1;->this$0:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-static {v5}, Lcom/pedro/rtsp/rtsp/RtspClient;->access$1100(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v5

    const-string v6, "Error configure stream, announce failed"

    invoke-interface {v5, v6}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionFailedRtsp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3
.end method
