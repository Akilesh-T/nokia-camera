.class Lnet/ossrs/rtmp/SrsFlvMuxer$SrsCodecAudioSampleRate;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/rtmp/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsCodecAudioSampleRate"
.end annotation


# static fields
.field public static final R11025:I = 0x2b11

.field public static final R16000:I = 0x3e80

.field public static final R22050:I = 0x5622

.field public static final R32000:I = 0x7d00

.field public static final R44100:I = 0xac44

.field public static final R5512:I = 0x1588


# instance fields
.field final synthetic this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsCodecAudioSampleRate;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
