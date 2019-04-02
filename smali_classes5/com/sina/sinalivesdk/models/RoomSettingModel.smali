.class public Lcom/sina/sinalivesdk/models/RoomSettingModel;
.super Ljava/lang/Object;


# instance fields
.field private allow_comment:I

.field private allow_interact:I

.field private allow_praise:I

.field private censor_policy:I

.field private heartbeat_interval:I

.field private max_onlines:I

.field private pay_url:Ljava/lang/String;

.field private praise_url:Ljava/lang/String;

.field private share_link:Ljava/lang/String;

.field private share_text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllow_comment()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->allow_comment:I

    return v0
.end method

.method public getAllow_interact()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->allow_interact:I

    return v0
.end method

.method public getAllow_praise()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->allow_praise:I

    return v0
.end method

.method public getCensor_policy()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->censor_policy:I

    return v0
.end method

.method public getHeartbeat_interval()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->heartbeat_interval:I

    return v0
.end method

.method public getMax_onlines()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->max_onlines:I

    return v0
.end method

.method public getPay_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->pay_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->praise_url:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_link()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->share_link:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->share_text:Ljava/lang/String;

    return-object v0
.end method

.method public setAllow_comment(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->allow_comment:I

    return-void
.end method

.method public setAllow_interact(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->allow_interact:I

    return-void
.end method

.method public setAllow_praise(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->allow_praise:I

    return-void
.end method

.method public setCensor_policy(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->censor_policy:I

    return-void
.end method

.method public setHeartbeat_interval(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->heartbeat_interval:I

    return-void
.end method

.method public setMax_onlines(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->max_onlines:I

    return-void
.end method

.method public setPay_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->pay_url:Ljava/lang/String;

    return-void
.end method

.method public setPraise_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->praise_url:Ljava/lang/String;

    return-void
.end method

.method public setShare_link(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->share_link:Ljava/lang/String;

    return-void
.end method

.method public setShare_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomSettingModel;->share_text:Ljava/lang/String;

    return-void
.end method
