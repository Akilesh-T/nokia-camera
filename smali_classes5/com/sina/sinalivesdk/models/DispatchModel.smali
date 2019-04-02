.class public Lcom/sina/sinalivesdk/models/DispatchModel;
.super Ljava/lang/Object;


# instance fields
.field private expired_time:I

.field private server_address:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpired_time()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/DispatchModel;->expired_time:I

    return v0
.end method

.method public getServer_address()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/DispatchModel;->server_address:[Ljava/lang/String;

    return-object v0
.end method

.method public setExpired_time(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/DispatchModel;->expired_time:I

    return-void
.end method

.method public setServer_address([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/DispatchModel;->server_address:[Ljava/lang/String;

    return-void
.end method
