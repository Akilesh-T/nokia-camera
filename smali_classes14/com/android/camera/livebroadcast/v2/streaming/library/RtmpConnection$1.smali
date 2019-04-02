.class Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$1;
.super Ljava/lang/Object;
.source "RtmpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;->connect(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 170
    :try_start_0
    const-string v1, "RtmpConnection"

    const-string v2, "starting main rx handler loop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;->access$000(Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "ex":Ljava/io/IOException;
    const-class v1, Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
