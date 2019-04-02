.class public abstract Lcom/sina/sinalivesdk/refactor/messages/PostMessage;
.super Lcom/sina/sinalivesdk/refactor/messages/BaseMessage;


# static fields
.field private static final l:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected b:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:J

.field private j:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

.field private k:Z

.field private final m:I

.field private n:Z

.field private o:Z

.field private p:Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V
    .locals 2

    sget-object v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->MultiQueuePreferred:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->authProvider()Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/refactor/messages/BaseMessage;-><init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;)V

    const-wide v0, 0x12a05f200L

    iput-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->i:J

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->j:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    iput-boolean p3, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->k:Z

    sget-object v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->m:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->h:J

    return-void
.end method


# virtual methods
.method public abstract build(Z)Lcom/sina/sinalivesdk/refactor/messages/PostData;
.end method

.method public cloneRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sina/sinalivesdk/refactor/messages/PostMessage;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaptcha()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->b:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    return-object v0
.end method

.method public getHttpRequestParams()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPreference()Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->j:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    return-object v0
.end method

.method public getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->p:Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    return-object v0
.end method

.method public handleCaptcha(Ljava/lang/String;ZZ)V
    .locals 1

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->e:Z

    iput-boolean p2, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->f:Z

    iput-boolean p3, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->g:Z

    return-void
.end method

.method public handleCode(ILjava/lang/String;)I
    .locals 0

    return p1
.end method

.method public handleResult(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->isCancelled()Z

    return p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->f:Z

    return v0
.end method

.method public isHttpRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->o:Z

    return v0
.end method

.method public isMultiSocket()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->k:Z

    return v0
.end method

.method public isRefreshCaptcha()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->g:Z

    return v0
.end method

.method public isSmart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->d:Z

    return v0
.end method

.method public isWaiting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWaitingCaptcha()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->n:Z

    return v0
.end method

.method public onTimeout()V
    .locals 3

    const-string v0, "PostMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeout."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestId()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->m:I

    return v0
.end method

.method public requestTid()J
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->b:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->tid()J

    move-result-wide v0

    return-wide v0
.end method

.method public setCaptcha(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->c:Ljava/lang/String;

    return-void
.end method

.method public setIsHttpRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->o:Z

    return-void
.end method

.method public setIsMultiSocket(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->k:Z

    return-void
.end method

.method public setIsRefreshCaptcha(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->g:Z

    return-void
.end method

.method public setPreference(Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->j:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    return-void
.end method

.method public setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->p:Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    return-void
.end method

.method public setSmart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->d:Z

    return-void
.end method

.method public setWaitingCaptcha(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->n:Z

    return-void
.end method

.method public startTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->h:J

    return-wide v0
.end method

.method public timeout()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->i:J

    return-wide v0
.end method
