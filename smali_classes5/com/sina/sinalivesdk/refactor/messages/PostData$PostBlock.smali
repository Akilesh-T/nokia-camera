.class public Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;JJJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->b:Ljava/lang/String;

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->a:J

    iput-wide p4, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->c:J

    iput-wide p6, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->d:J

    iput-wide p8, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->e:J

    iput-object p10, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->d:J

    return-wide v0
.end method

.method public getLast()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->e:J

    return-wide v0
.end method

.method public getLocalMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->a:J

    return-wide v0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->c:J

    return-wide v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->b:Ljava/lang/String;

    return-void
.end method

.method public setFirst(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->d:J

    return-void
.end method

.method public setLast(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->e:J

    return-void
.end method

.method public setLocalMsgId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->a:J

    return-void
.end method

.method public setMD5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->f:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;->c:J

    return-void
.end method
