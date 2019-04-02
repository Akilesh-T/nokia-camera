.class public Lcom/sina/sinalivesdk/models/UserModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3c31ae81L


# instance fields
.field private access_token:Ljava/lang/String;

.field private admin_info_type:I

.field private attention_count:I

.field private avatar:Ljava/lang/String;

.field private big_v:I

.field private coins:J

.field private description:Ljava/lang/String;

.field private followers_count:J

.field private gsid:Ljava/lang/String;

.field private is_fllowed:I

.field private is_vip:I

.field private join_time:J

.field private level:I

.field private nickname:Ljava/lang/String;

.field private reserved:Ljava/lang/String;

.field private role:I

.field private shutted_until:J

.field private statuses_count:I

.field private uid:J

.field private user_system:Ljava/lang/String;

.field private verified_reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getAdmin_info_type()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->admin_info_type:I

    return v0
.end method

.method public getAttention_count()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->attention_count:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBig_v()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->big_v:I

    return v0
.end method

.method public getCoins()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->coins:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowers_count()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->followers_count:J

    return-wide v0
.end method

.method public getGsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->gsid:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_fllowed()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->is_fllowed:I

    return v0
.end method

.method public getIs_vip()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->is_vip:I

    return v0
.end method

.method public getJoin_time()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->join_time:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->level:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->role:I

    return v0
.end method

.method public getShutted_until()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->shutted_until:J

    return-wide v0
.end method

.method public getStatuses_count()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->statuses_count:I

    return v0
.end method

.method public getUid()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->uid:J

    return-wide v0
.end method

.method public getUser_system()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->user_system:Ljava/lang/String;

    return-object v0
.end method

.method public getVerified_reason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/UserModel;->verified_reason:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->access_token:Ljava/lang/String;

    return-void
.end method

.method public setAdmin_info_type(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->admin_info_type:I

    return-void
.end method

.method public setAttention_count(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->attention_count:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBig_v(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->big_v:I

    return-void
.end method

.method public setCoins(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->coins:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->description:Ljava/lang/String;

    return-void
.end method

.method public setFollowers_count(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->followers_count:J

    return-void
.end method

.method public setGsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->gsid:Ljava/lang/String;

    return-void
.end method

.method public setIs_fllowed(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->is_fllowed:I

    return-void
.end method

.method public setIs_vip(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->is_vip:I

    return-void
.end method

.method public setJoin_time(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->join_time:J

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->level:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->reserved:Ljava/lang/String;

    return-void
.end method

.method public setRole(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->role:I

    return-void
.end method

.method public setShutted_until(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->shutted_until:J

    return-void
.end method

.method public setStatuses_count(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->statuses_count:I

    return-void
.end method

.method public setUid(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->uid:J

    return-void
.end method

.method public setUser_system(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->user_system:Ljava/lang/String;

    return-void
.end method

.method public setVerified_reason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/UserModel;->verified_reason:Ljava/lang/String;

    return-void
.end method
