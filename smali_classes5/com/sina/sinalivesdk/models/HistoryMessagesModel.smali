.class public Lcom/sina/sinalivesdk/models/HistoryMessagesModel;
.super Ljava/lang/Object;


# instance fields
.field private end_offset:J

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/HistoryPartMessages;",
            ">;"
        }
    .end annotation
.end field

.field private rawData:Ljava/lang/String;

.field private start_offset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnd_offset()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->end_offset:J

    return-wide v0
.end method

.method public getHistoryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/HistoryPartMessages;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRawData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_offset()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->start_offset:J

    return-wide v0
.end method

.method public setEnd_offset(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->end_offset:J

    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/HistoryPartMessages;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public setRawData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->rawData:Ljava/lang/String;

    return-void
.end method

.method public setStart_offset(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->start_offset:J

    return-void
.end method
