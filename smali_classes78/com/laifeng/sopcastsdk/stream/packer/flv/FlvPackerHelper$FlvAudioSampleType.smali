.class public Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAudioSampleType;
.super Ljava/lang/Object;
.source "FlvPackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlvAudioSampleType"
.end annotation


# static fields
.field public static final MONO:I = 0x0

.field public static final STEREO:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAudioSampleType;->this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
