.class public Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->a:J

    iput-wide p3, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->b:J

    return-void
.end method


# virtual methods
.method public getAckTrans()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->a:J

    return-wide v0
.end method

.method public getClientTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->b:J

    return-wide v0
.end method

.method public isSpread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->c:Z

    return v0
.end method

.method public setAckTrans(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->a:J

    return-void
.end method

.method public setClientTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->b:J

    return-void
.end method

.method public setIsSpread(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->c:Z

    return-void
.end method
