.class public Lcom/sina/sinalivesdk/refactor/messages/PostData;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

.field private b:Z

.field private c:Z

.field private d:[B

.field private e:Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;

.field private f:Z

.field private g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

.field private h:Lcom/sina/sinalivesdk/protobuf/RequestSet;

.field public numberOfTimesToRetry:I

.field public tid:J


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;Lcom/sina/sinalivesdk/protobuf/RequestSet;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->f:Z

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    iput-boolean p4, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->b:Z

    iput-boolean p5, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->c:Z

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    iput-object p3, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->h:Lcom/sina/sinalivesdk/protobuf/RequestSet;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->numberOfTimesToRetry:I

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->tid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    return-void
.end method

.method private a()[B
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->h:Lcom/sina/sinalivesdk/protobuf/RequestSet;

    iget-boolean v3, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->b:Z

    invoke-static {v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/messages/Packer;->pack(Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;Lcom/sina/sinalivesdk/protobuf/RequestSet;Z)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "PostData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", build request data exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getBlock()Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->e:Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;

    return-object v0
.end method

.method public getBuffer()[B
    .locals 6

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getCaptcha()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getCaptcha()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->setCaptcha(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    invoke-virtual {v0, v3}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->markFlag(I)Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->b()V

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->d:[B

    :cond_0
    :goto_0
    const-string v0, "PostData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->d:[B

    invoke-static {v2}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->d:[B

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->isRefreshCaptcha()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    iget-object v2, v2, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->a:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    invoke-direct {v0, v3, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;-><init>(IILcom/sina/sinalivesdk/refactor/services/IAuthProvider;)V

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->b:Z

    invoke-static {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Packer;->pack(Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;Lcom/sina/sinalivesdk/protobuf/RequestSet;Z)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->d:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PostData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", build request data exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->d:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->d:[B

    goto/16 :goto_0
.end method

.method public getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    return-object v0
.end method

.method public getResendBuffer()[B
    .locals 6

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->markFlag(I)Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->f:Z

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a()[B

    move-result-object v0

    const-string v1, "PostData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resend, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", buffer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->c:Z

    return v0
.end method

.method public isResend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->f:Z

    return v0
.end method

.method public setBlock(Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->e:Lcom/sina/sinalivesdk/refactor/messages/PostData$PostBlock;

    return-void
.end method

.method public setNumberOfTimesToRetry(I)Lcom/sina/sinalivesdk/refactor/messages/PostData;
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->numberOfTimesToRetry:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->g:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->h:Lcom/sina/sinalivesdk/protobuf/RequestSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->h:Lcom/sina/sinalivesdk/protobuf/RequestSet;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
