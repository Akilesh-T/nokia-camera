.class public Lcom/sina/sinalivesdk/models/AnchorLiveListModel;
.super Ljava/lang/Object;


# instance fields
.field private livelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/AnchorLiveModel;",
            ">;"
        }
    .end annotation
.end field

.field private total_num:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLivelist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/AnchorLiveModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/AnchorLiveListModel;->livelist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotal_num()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/AnchorLiveListModel;->total_num:I

    return v0
.end method

.method public setLivelist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/AnchorLiveModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/AnchorLiveListModel;->livelist:Ljava/util/ArrayList;

    return-void
.end method

.method public setTotal_num(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/AnchorLiveListModel;->total_num:I

    return-void
.end method
