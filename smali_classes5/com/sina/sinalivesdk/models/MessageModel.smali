.class public Lcom/sina/sinalivesdk/models/MessageModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_DANMU:I = 0x1

.field public static final TYPE_NORMAL:I = 0x0

.field private static final serialVersionUID:J = 0x986648L


# instance fields
.field private content:Ljava/lang/String;

.field private content_css:Lcom/sina/sinalivesdk/models/ContentCssModel;

.field private extraData:Ljava/lang/String;

.field private gift:Lcom/sina/sinalivesdk/models/GiftModel;

.field private id:I

.field private lat:Ljava/lang/String;

.field private localTime:J

.field private lon:Ljava/lang/String;

.field private mid:J

.field private mimeType:I

.field private msg_behavior:I

.field private msg_extension:Ljava/lang/String;

.field private offset:J

.field private outgoing:Z

.field private praise_status:I

.field private roomId:Ljava/lang/String;

.field private sender:Lcom/sina/sinalivesdk/models/UserModel;

.field private sender_id:J

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_css()Lcom/sina/sinalivesdk/models/ContentCssModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->content_css:Lcom/sina/sinalivesdk/models/ContentCssModel;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->extraData:Ljava/lang/String;

    return-object v0
.end method

.method public getGift()Lcom/sina/sinalivesdk/models/GiftModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->gift:Lcom/sina/sinalivesdk/models/GiftModel;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->id:I

    return v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->localTime:J

    return-wide v0
.end method

.method public getLon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->lon:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->mid:J

    return-wide v0
.end method

.method public getMimeType()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->mimeType:I

    return v0
.end method

.method public getMsg_behavior()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->msg_behavior:I

    return v0
.end method

.method public getMsg_extension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->msg_extension:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->offset:J

    return-wide v0
.end method

.method public getPraise_status()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->praise_status:I

    return v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Lcom/sina/sinalivesdk/models/UserModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->sender:Lcom/sina/sinalivesdk/models/UserModel;

    return-object v0
.end method

.method public getSender_id()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->sender_id:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->state:I

    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/models/MessageModel;->outgoing:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->content:Ljava/lang/String;

    return-void
.end method

.method public setContent_css(Lcom/sina/sinalivesdk/models/ContentCssModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->content_css:Lcom/sina/sinalivesdk/models/ContentCssModel;

    return-void
.end method

.method public setExtraData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->extraData:Ljava/lang/String;

    return-void
.end method

.method public setGift(Lcom/sina/sinalivesdk/models/GiftModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->gift:Lcom/sina/sinalivesdk/models/GiftModel;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->id:I

    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->lat:Ljava/lang/String;

    return-void
.end method

.method public setLocalTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->localTime:J

    return-void
.end method

.method public setLon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->lon:Ljava/lang/String;

    return-void
.end method

.method public setMid(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->mid:J

    return-void
.end method

.method public setMimeType(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->mimeType:I

    return-void
.end method

.method public setMsg_behavior(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->msg_behavior:I

    return-void
.end method

.method public setMsg_extension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->msg_extension:Ljava/lang/String;

    return-void
.end method

.method public setOffset(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->offset:J

    return-void
.end method

.method public setOutgoing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->outgoing:Z

    return-void
.end method

.method public setPraise_status(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->praise_status:I

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->roomId:Ljava/lang/String;

    return-void
.end method

.method public setSender(Lcom/sina/sinalivesdk/models/UserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->sender:Lcom/sina/sinalivesdk/models/UserModel;

    return-void
.end method

.method public setSender_id(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->sender_id:J

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/MessageModel;->state:I

    return-void
.end method
