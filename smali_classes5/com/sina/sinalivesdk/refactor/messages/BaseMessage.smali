.class public abstract Lcom/sina/sinalivesdk/refactor/messages/BaseMessage;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/messages/BaseMessage;->a:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    return-void
.end method


# virtual methods
.method public getPostType(I)I
    .locals 0

    return p1
.end method

.method public abstract requestId()I
.end method

.method public requestInfo()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/BaseMessage;->requestName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/BaseMessage;->requestId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract requestName()Ljava/lang/String;
.end method

.method public saveBlock(Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;)V
    .locals 0

    return-void
.end method
