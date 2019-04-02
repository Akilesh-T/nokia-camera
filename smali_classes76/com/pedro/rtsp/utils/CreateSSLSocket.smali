.class public Lcom/pedro/rtsp/utils/CreateSSLSocket;
.super Ljava/lang/Object;
.source "CreateSSLSocket.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSSlSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 24
    :try_start_0
    new-instance v1, Lcom/pedro/rtsp/utils/TLSSocketFactory;

    invoke-direct {v1}, Lcom/pedro/rtsp/utils/TLSSocketFactory;-><init>()V

    .line 25
    .local v1, "socketFactory":Lcom/pedro/rtsp/utils/TLSSocketFactory;
    invoke-virtual {v1, p0, p1}, Lcom/pedro/rtsp/utils/TLSSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 28
    .end local v1    # "socketFactory":Lcom/pedro/rtsp/utils/TLSSocketFactory;
    :goto_0
    return-object v2

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    const/4 v2, 0x0

    goto :goto_0

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
