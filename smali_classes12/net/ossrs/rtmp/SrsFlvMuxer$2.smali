.class Lnet/ossrs/rtmp/SrsFlvMuxer$2;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ossrs/rtmp/SrsFlvMuxer;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;


# direct methods
.method constructor <init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 209
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$2;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$2;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$2;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$100(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$700(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    .line 213
    return-void
.end method
