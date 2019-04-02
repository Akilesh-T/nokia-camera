.class Lcom/github/faucamp/simplertmp/io/RtmpConnection$2;
.super Ljava/lang/Object;
.source "RtmpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/faucamp/simplertmp/io/RtmpConnection;->handleRxInvoke(Lcom/github/faucamp/simplertmp/packets/Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/faucamp/simplertmp/io/RtmpConnection;


# direct methods
.method constructor <init>(Lcom/github/faucamp/simplertmp/io/RtmpConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection$2;->this$0:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection$2;->this$0:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-static {v1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->access$000(Lcom/github/faucamp/simplertmp/io/RtmpConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
