.class public Lcom/sina/sinalivesdk/models/RoomProfileModel;
.super Ljava/lang/Object;


# instance fields
.field private counters:Lcom/sina/sinalivesdk/models/CounterModel;

.field private created_at:J

.field private end_time:J

.field private introduction:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private notification:Ljava/lang/String;

.field private owner_info:Lcom/sina/sinalivesdk/models/UserModel;

.field private pic_url:Ljava/lang/String;

.field private room_id:Ljava/lang/String;

.field private room_sys_id:J

.field private setting:Lcom/sina/sinalivesdk/models/RoomSettingModel;

.field private start_time:J

.field private status:I

.field private type:I

.field private update_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCounters()Lcom/sina/sinalivesdk/models/CounterModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->counters:Lcom/sina/sinalivesdk/models/CounterModel;

    return-object v0
.end method

.method public getCreated_at()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->created_at:J

    return-wide v0
.end method

.method public getEnd_time()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->end_time:J

    return-wide v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->notification:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner_info()Lcom/sina/sinalivesdk/models/UserModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->owner_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-object v0
.end method

.method public getPic_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->pic_url:Ljava/lang/String;

    return-object v0
.end method

.method public getRoom_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->room_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRoom_sys_id()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->room_sys_id:J

    return-wide v0
.end method

.method public getSetting()Lcom/sina/sinalivesdk/models/RoomSettingModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setting:Lcom/sina/sinalivesdk/models/RoomSettingModel;

    return-object v0
.end method

.method public getStart_time()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->start_time:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->status:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->type:I

    return v0
.end method

.method public getUpdate_time()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->update_time:J

    return-wide v0
.end method

.method public setCounters(Lcom/sina/sinalivesdk/models/CounterModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->counters:Lcom/sina/sinalivesdk/models/CounterModel;

    return-void
.end method

.method public setCreated_at(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->created_at:J

    return-void
.end method

.method public setEnd_time(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->end_time:J

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setNotification(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->notification:Ljava/lang/String;

    return-void
.end method

.method public setOwner_info(Lcom/sina/sinalivesdk/models/UserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->owner_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-void
.end method

.method public setPic_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->pic_url:Ljava/lang/String;

    return-void
.end method

.method public setRoom_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->room_id:Ljava/lang/String;

    return-void
.end method

.method public setRoom_sys_id(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->room_sys_id:J

    return-void
.end method

.method public setSetting(Lcom/sina/sinalivesdk/models/RoomSettingModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setting:Lcom/sina/sinalivesdk/models/RoomSettingModel;

    return-void
.end method

.method public setStart_time(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->start_time:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->status:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->type:I

    return-void
.end method

.method public setUpdate_time(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileModel;->update_time:J

    return-void
.end method
