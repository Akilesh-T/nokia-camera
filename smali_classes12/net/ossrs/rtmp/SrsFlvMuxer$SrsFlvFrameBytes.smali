.class Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/rtmp/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsFlvFrameBytes"
.end annotation


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public size:I

.field final synthetic this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;
    .param p2, "x1"    # Lnet/ossrs/rtmp/SrsFlvMuxer$1;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V

    return-void
.end method
