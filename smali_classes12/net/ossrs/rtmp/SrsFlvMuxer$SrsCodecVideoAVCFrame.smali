.class Lnet/ossrs/rtmp/SrsFlvMuxer$SrsCodecVideoAVCFrame;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/rtmp/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsCodecVideoAVCFrame"
.end annotation


# static fields
.field public static final InterFrame:I = 0x2

.field public static final KeyFrame:I = 0x1


# instance fields
.field final synthetic this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsCodecVideoAVCFrame;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
