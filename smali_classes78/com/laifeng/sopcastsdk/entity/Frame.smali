.class public Lcom/laifeng/sopcastsdk/entity/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FRAME_TYPE_AUDIO:I = 0x1

.field public static final FRAME_TYPE_CONFIGURATION:I = 0x4

.field public static final FRAME_TYPE_INTER_FRAME:I = 0x3

.field public static final FRAME_TYPE_KEY_FRAME:I = 0x2


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public frameType:I

.field public packetType:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0
    .param p2, "packetType"    # I
    .param p3, "frameType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/entity/Frame;->data:Ljava/lang/Object;

    .line 25
    iput p2, p0, Lcom/laifeng/sopcastsdk/entity/Frame;->packetType:I

    .line 26
    iput p3, p0, Lcom/laifeng/sopcastsdk/entity/Frame;->frameType:I

    .line 27
    return-void
.end method
