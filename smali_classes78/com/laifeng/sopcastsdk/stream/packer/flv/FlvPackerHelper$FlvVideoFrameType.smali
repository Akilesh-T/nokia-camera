.class public Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvVideoFrameType;
.super Ljava/lang/Object;
.source "FlvPackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlvVideoFrameType"
.end annotation


# static fields
.field public static final DisposableInterFrame:I = 0x3

.field public static final GeneratedKeyFrame:I = 0x4

.field public static final InterFrame:I = 0x2

.field public static final KeyFrame:I = 0x1

.field public static final Reserved:I = 0x0

.field public static final Reserved1:I = 0x6

.field public static final VideoInfoFrame:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvVideoFrameType;->this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
