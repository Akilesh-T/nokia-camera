.class public Lcom/sina/sinalivesdk/refactor/messages/PollRequestHeader;
.super Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;


# static fields
.field private static b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/16 v2, 0x3e8

    const/4 v0, 0x0

    sput-object v0, Lcom/sina/sinalivesdk/refactor/messages/PollRequestHeader;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide v2, 0x1607138400L

    add-long/2addr v0, v2

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v2, Lcom/sina/sinalivesdk/refactor/messages/PollRequestHeader;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string v2, "PollRequestHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init transaction id with time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILcom/sina/sinalivesdk/refactor/services/IAuthProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;-><init>(IILcom/sina/sinalivesdk/refactor/services/IAuthProvider;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    sget-object v0, Lcom/sina/sinalivesdk/refactor/messages/PollRequestHeader;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/PollRequestHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    invoke-virtual {v2, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->setValue(J)V

    return-void
.end method
