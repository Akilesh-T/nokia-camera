.class public Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAudioSampleRate;
.super Ljava/lang/Object;
.source "FlvPackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlvAudioSampleRate"
.end annotation


# static fields
.field public static final R11025:I = 0xa

.field public static final R12000:I = 0x9

.field public static final R16000:I = 0x8

.field public static final R22050:I = 0x7

.field public static final R24000:I = 0x6

.field public static final R32000:I = 0x5

.field public static final R44100:I = 0x4

.field public static final R48000:I = 0x3

.field public static final R64000:I = 0x2

.field public static final R7350:I = 0xc

.field public static final R8000:I = 0xb

.field public static final R88200:I = 0x1

.field public static final R96000:I = 0x0

.field public static final Reserved:I = 0xf


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAudioSampleRate;->this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
