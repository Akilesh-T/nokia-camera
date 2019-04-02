.class public Lcom/sina/sinalivesdk/models/ShutInfoModel;
.super Ljava/lang/Object;


# instance fields
.field private members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/UserModel;",
            ">;"
        }
    .end annotation
.end field

.field private shutted_until:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMembers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/UserModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/ShutInfoModel;->members:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShutted_until()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/ShutInfoModel;->shutted_until:I

    return v0
.end method

.method public setMembers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/UserModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/ShutInfoModel;->members:Ljava/util/ArrayList;

    return-void
.end method

.method public setShutted_until(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/ShutInfoModel;->shutted_until:I

    return-void
.end method
