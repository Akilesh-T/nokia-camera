.class public Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAudio;
.super Ljava/lang/Object;
.source "FlvPackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlvAudio"
.end annotation


# static fields
.field public static final AAC:I = 0xa

.field public static final AD_PCM:I = 0x1

.field public static final DEVICE_SPECIFIC:I = 0xf

.field public static final G711_A:I = 0x7

.field public static final G711_MU:I = 0x8

.field public static final LINEAR_PCM:I = 0x0

.field public static final LINEAR_PCM_LE:I = 0x3

.field public static final MP3:I = 0x2

.field public static final MP3_8:I = 0xe

.field public static final NELLYMOSER:I = 0x6

.field public static final NELLYMOSER_16_MONO:I = 0x4

.field public static final NELLYMOSER_8_MONO:I = 0x5

.field public static final RESERVED:I = 0x9

.field public static final SPEEX:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAudio;->this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
