.class public Lcom/sina/sinalivesdk/models/CounterModel;
.super Ljava/lang/Object;


# instance fields
.field private onlines:I

.field private play_count:I

.field private praise_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOnlines()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/CounterModel;->onlines:I

    return v0
.end method

.method public getPlay_count()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/CounterModel;->play_count:I

    return v0
.end method

.method public getPraise_count()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/CounterModel;->praise_count:I

    return v0
.end method

.method public setOnlines(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/CounterModel;->onlines:I

    return-void
.end method

.method public setPlay_count(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/CounterModel;->play_count:I

    return-void
.end method

.method public setPraise_count(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/CounterModel;->praise_count:I

    return-void
.end method
