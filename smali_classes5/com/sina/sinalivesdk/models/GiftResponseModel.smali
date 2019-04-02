.class public Lcom/sina/sinalivesdk/models/GiftResponseModel;
.super Ljava/lang/Object;


# instance fields
.field private anchor_coins:J

.field private current_coins:J

.field private extension:Ljava/lang/String;

.field private gift_available_num:J

.field private gift_info:Lcom/sina/sinalivesdk/models/GiftModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchor_coins()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/GiftResponseModel;->anchor_coins:J

    return-wide v0
.end method

.method public getCurrent_coins()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/GiftResponseModel;->current_coins:J

    return-wide v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/GiftResponseModel;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_available_num()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/GiftResponseModel;->gift_available_num:J

    return-wide v0
.end method

.method public getGift_info()Lcom/sina/sinalivesdk/models/GiftModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/GiftResponseModel;->gift_info:Lcom/sina/sinalivesdk/models/GiftModel;

    return-object v0
.end method

.method public setAnchor_coins(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/GiftResponseModel;->anchor_coins:J

    return-void
.end method

.method public setCurrent_coins(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/GiftResponseModel;->current_coins:J

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/GiftResponseModel;->extension:Ljava/lang/String;

    return-void
.end method

.method public setGift_available_num(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/GiftResponseModel;->gift_available_num:J

    return-void
.end method

.method public setGift_info(Lcom/sina/sinalivesdk/models/GiftModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/GiftResponseModel;->gift_info:Lcom/sina/sinalivesdk/models/GiftModel;

    return-void
.end method
