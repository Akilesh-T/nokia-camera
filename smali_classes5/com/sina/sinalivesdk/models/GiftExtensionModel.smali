.class public Lcom/sina/sinalivesdk/models/GiftExtensionModel;
.super Ljava/lang/Object;


# instance fields
.field private behavior:I

.field private burst_id:Ljava/lang/String;

.field private finish:I

.field private order_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBehavior()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/GiftExtensionModel;->behavior:I

    return v0
.end method

.method public getBurst_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/GiftExtensionModel;->burst_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFinish()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/GiftExtensionModel;->finish:I

    return v0
.end method

.method public getOrder_id()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/GiftExtensionModel;->order_id:J

    return-wide v0
.end method

.method public setBehavior(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/GiftExtensionModel;->behavior:I

    return-void
.end method

.method public setBurst_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/GiftExtensionModel;->burst_id:Ljava/lang/String;

    return-void
.end method

.method public setFinish(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/GiftExtensionModel;->finish:I

    return-void
.end method

.method public setOrder_id(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/GiftExtensionModel;->order_id:J

    return-void
.end method
