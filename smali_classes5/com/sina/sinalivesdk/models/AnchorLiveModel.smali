.class public Lcom/sina/sinalivesdk/models/AnchorLiveModel;
.super Ljava/lang/Object;


# instance fields
.field private cover_url:Ljava/lang/String;

.field private create_time:Ljava/lang/String;

.field private live_url:Ljava/lang/String;

.field private msg_mum:J

.field private owner_info:Lcom/sina/sinalivesdk/models/UserModel;

.field private praise_num:J

.field private room_id:Ljava/lang/String;

.field private status:I

.field private total_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getLive_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->live_url:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg_mum()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->msg_mum:J

    return-wide v0
.end method

.method public getOwner_info()Lcom/sina/sinalivesdk/models/UserModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->owner_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-object v0
.end method

.method public getPraise_num()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->praise_num:J

    return-wide v0
.end method

.method public getRoom_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->room_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->status:I

    return v0
.end method

.method public getTotal_time()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->total_time:J

    return-wide v0
.end method

.method public setCover_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->cover_url:Ljava/lang/String;

    return-void
.end method

.method public setCreate_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->create_time:Ljava/lang/String;

    return-void
.end method

.method public setLive_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->live_url:Ljava/lang/String;

    return-void
.end method

.method public setMsg_mum(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->msg_mum:J

    return-void
.end method

.method public setOwner_info(Lcom/sina/sinalivesdk/models/UserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->owner_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-void
.end method

.method public setPraise_num(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->praise_num:J

    return-void
.end method

.method public setRoom_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->room_id:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->status:I

    return-void
.end method

.method public setTotal_time(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->total_time:J

    return-void
.end method
