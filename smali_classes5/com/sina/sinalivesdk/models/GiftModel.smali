.class public Lcom/sina/sinalivesdk/models/GiftModel;
.super Ljava/lang/Object;


# instance fields
.field private id:Ljava/lang/String;

.field private inc_interval:I

.field private inc_num:I

.field private name:Ljava/lang/String;

.field private total_num:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/GiftModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInc_interval()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/GiftModel;->inc_interval:I

    return v0
.end method

.method public getInc_num()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/GiftModel;->inc_num:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/GiftModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_num()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/GiftModel;->total_num:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/GiftModel;->type:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/GiftModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setInc_interval(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/GiftModel;->inc_interval:I

    return-void
.end method

.method public setInc_num(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/GiftModel;->inc_num:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/GiftModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setTotal_num(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/GiftModel;->total_num:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/GiftModel;->type:I

    return-void
.end method
