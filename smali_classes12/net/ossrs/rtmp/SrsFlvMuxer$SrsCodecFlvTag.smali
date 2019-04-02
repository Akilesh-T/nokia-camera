.class Lnet/ossrs/rtmp/SrsFlvMuxer$SrsCodecFlvTag;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/rtmp/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsCodecFlvTag"
.end annotation


# static fields
.field public static final Audio:I = 0x8

.field public static final Video:I = 0x9


# instance fields
.field final synthetic this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsCodecFlvTag;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
