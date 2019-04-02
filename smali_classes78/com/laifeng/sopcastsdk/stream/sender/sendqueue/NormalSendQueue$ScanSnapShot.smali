.class Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;
.super Ljava/lang/Object;
.source "NormalSendQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanSnapShot"
.end annotation


# instance fields
.field public inCount:I

.field public outCount:I

.field final synthetic this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;II)V
    .locals 0
    .param p2, "inCount"    # I
    .param p3, "outCount"    # I

    .prologue
    .line 210
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p2, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;->inCount:I

    .line 212
    iput p3, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;->outCount:I

    .line 213
    return-void
.end method
