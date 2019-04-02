.class public Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvTag;
.super Ljava/lang/Object;
.source "FlvPackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlvTag"
.end annotation


# static fields
.field public static final Audio:I = 0x8

.field public static final Reserved:I = 0x0

.field public static final Script:I = 0x12

.field public static final Video:I = 0x9


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvTag;->this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
