.class Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;
.super Ljava/lang/Thread;
.source "NormalSendQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanThread"
.end annotation


# static fields
.field private static final SCAN_MAX_TIME:I = 0x6


# instance fields
.field private mCurrentScanTime:I

.field private mScanSnapShotList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;


# direct methods
.method private constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)V
    .locals 1

    .prologue
    .line 153
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->mCurrentScanTime:I

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->mScanSnapShotList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;
    .param p2, "x1"    # Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x0

    .line 160
    :goto_0
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-static {v6}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->access$100(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 162
    iget v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->mCurrentScanTime:I

    if-ne v6, v12, :cond_4

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "averageDif":I
    const/4 v4, 0x0

    .line 165
    .local v4, "negativeCounter":I
    const-string v5, ""

    .line 166
    .local v5, "strLog":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v12, :cond_1

    .line 167
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->mScanSnapShotList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;

    iget v7, v6, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;->outCount:I

    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->mScanSnapShotList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;

    iget v6, v6, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;->inCount:I

    sub-int v1, v7, v6

    .line 168
    .local v1, "dif":I
    if-gez v1, :cond_0

    .line 169
    add-int/lit8 v4, v4, 0x1

    .line 171
    :cond_0
    add-int/2addr v0, v1

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "n%d:%d  "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    .end local v1    # "dif":I
    :cond_1
    const-string v6, "SopCast"

    invoke-static {v6, v5}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v6, 0x4

    if-ge v4, v6, :cond_2

    const/16 v6, -0x64

    if-ge v0, v6, :cond_5

    .line 177
    :cond_2
    const-string v6, "SopCast"

    const-string v7, "Bad Send Speed."

    invoke-static {v6, v7}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-static {v6}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->access$200(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 179
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-static {v6}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->access$200(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;->bad()V

    .line 190
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->mScanSnapShotList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 191
    iput v11, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->mCurrentScanTime:I

    .line 193
    .end local v0    # "averageDif":I
    .end local v3    # "i":I
    .end local v4    # "negativeCounter":I
    .end local v5    # "strLog":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->mScanSnapShotList:Ljava/util/ArrayList;

    new-instance v7, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;

    iget-object v8, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    iget-object v9, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-static {v9}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->access$300(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-static {v10}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->access$400(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;II)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-static {v6}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->access$300(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 195
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-static {v6}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->access$400(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 196
    iget v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->mCurrentScanTime:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->mCurrentScanTime:I

    .line 198
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 184
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "averageDif":I
    .restart local v3    # "i":I
    .restart local v4    # "negativeCounter":I
    .restart local v5    # "strLog":Ljava/lang/String;
    :cond_5
    const-string v6, "SopCast"

    const-string v7, "Good Send Speed."

    invoke-static {v6, v7}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-static {v6}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->access$200(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 186
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->this$0:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-static {v6}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->access$200(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;->good()V

    goto :goto_2

    .line 203
    .end local v0    # "averageDif":I
    .end local v3    # "i":I
    .end local v4    # "negativeCounter":I
    .end local v5    # "strLog":Ljava/lang/String;
    :cond_6
    return-void
.end method
