.class public Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;
.super Ljava/lang/Object;


# instance fields
.field private is_saved:Z

.field private owner_info:Lcom/sina/sinalivesdk/models/UserModel;

.field private room_id:J

.field private total_member_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOwner_info()Lcom/sina/sinalivesdk/models/UserModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->owner_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-object v0
.end method

.method public getRoom_id()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->room_id:J

    return-wide v0
.end method

.method public getTotal_member_count()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->total_member_count:I

    return v0
.end method

.method public isIs_saved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->is_saved:Z

    return v0
.end method

.method public setIs_saved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->is_saved:Z

    return-void
.end method

.method public setOwner_info(Lcom/sina/sinalivesdk/models/UserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->owner_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-void
.end method

.method public setRoom_id(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->room_id:J

    return-void
.end method

.method public setTotal_member_count(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->total_member_count:I

    return-void
.end method
