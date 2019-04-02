.class public Lcom/sina/sinalivesdk/models/HistoryPartMessages;
.super Ljava/lang/Object;


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/MessageModel;",
            ">;"
        }
    .end annotation
.end field

.field private offset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/MessageModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/HistoryPartMessages;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/HistoryPartMessages;->offset:J

    return-wide v0
.end method

.method public setDatas(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/MessageModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/HistoryPartMessages;->data:Ljava/util/ArrayList;

    return-void
.end method

.method public setOffset(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/HistoryPartMessages;->offset:J

    return-void
.end method
