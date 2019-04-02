.class public abstract Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;

    return-void
.end method


# virtual methods
.method public abstract getRequestResult(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public getResponseData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mResponse:Ljava/lang/Object;

    return-object v0
.end method

.method public handleHttpResponse(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->getRequestResult(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleJsonResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/lang/String;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sina/sinalivesdk/refactor/messages/PostData;",
            ")I"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    const-wide/16 v2, -0x1

    invoke-static {p3, v0, v2, v3}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/util/HashMap;IJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {p3, v1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hcl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "code:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    invoke-static {p3, v7}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hcl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->getRequestResult(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mResponse:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->requestId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;

    if-eqz v0, :cond_2

    invoke-static {p3, v7}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->requestId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v3, v5, v0}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;->onError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;

    const-string v2, "net error"

    const-string v3, ""

    const-string v4, ""

    invoke-interface {v0, p1, v2, v3, v4}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;->onError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sina/sinalivesdk/refactor/messages/PostData;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->mCallBack:Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;

    const-string v1, "net error"

    const-string v2, ""

    invoke-interface {v0, p1, v1, p5, v2}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;->onError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
