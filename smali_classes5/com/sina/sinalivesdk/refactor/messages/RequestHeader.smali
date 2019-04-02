.class public Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;
.super Ljava/lang/Object;


# static fields
.field private static m:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

.field private b:Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

.field private c:Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

.field private d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

.field private e:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

.field private f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

.field private g:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

.field private h:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

.field private i:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

.field private j:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

.field private k:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

.field private l:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/16 v2, 0x3e8

    const/4 v0, 0x0

    sput-object v0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v2, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string v2, "RequestHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init transaction id with time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILcom/sina/sinalivesdk/refactor/services/IAuthProvider;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    const/4 v1, 0x0

    const-string v2, "tid"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

    const/4 v1, 0x2

    const-string v2, "gdid"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

    const/4 v1, 0x4

    const-string v2, "access_token"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/4 v1, 0x5

    const-string v2, "type"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/4 v1, 0x6

    const-string v2, "proto"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/16 v1, 0x9

    const-string v2, "flag"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    const/16 v1, 0xb

    const-string v2, "captcha_info"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    const/16 v1, 0xe

    const-string v2, "options"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

    const/16 v1, 0xf

    const-string v2, "auxiliaries"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    const/16 v1, 0x14

    const-string v2, "access_token_type"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->j:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    const/16 v1, 0x15

    const-string v2, "requestId"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->k:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->setValue(I)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v0, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->setValue(I)V

    iput-object p3, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->l:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->a()V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->b()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

    invoke-virtual {v0, p3}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->a(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    sget-object v0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    invoke-virtual {v2, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->setValue(J)V

    return-void
.end method

.method public acceptJsonOnly()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

    invoke-static {v2}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->b(Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;)Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

    move-result-object v2

    iget-object v3, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;->value:[I

    if-eqz v3, :cond_0

    array-length v2, v3

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    aget v5, v3, v2

    if-ne v5, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public varargs addAcceptContentType([I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

    invoke-static {v1}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->b(Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;)Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

    move-result-object v1

    iget-object v2, v1, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;->value:[I

    if-eqz v2, :cond_0

    array-length v1, v2

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->b(Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;)Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;->setValue([I)V

    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array p1, v1, [I

    move v1, v0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method protected final b()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->k:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public computeSize(Z)I
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->l:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    .line 1000
    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;->getGdid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;->setValue([B)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;->setValue([B)V

    :cond_1
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

    invoke-static {v1}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->a(Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;)Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    move-result-object v1

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;->getLanguage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->setValue(I)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->j:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;->getAccess_token_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->setValue(Ljava/lang/String;)V

    .line 0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->computeSize(Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->j:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->k:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

    iget v1, v1, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->fieldNumber:I

    invoke-static {v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->computeSize(Z)I

    move-result v1

    invoke-static {v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->k:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    return v0
.end method

.method public markFlag(I)Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    or-int/2addr v0, p1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->setValue(I)V

    return-object p0
.end method

.method public setAccessTokenType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->j:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCaptcha(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public tid()J
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-wide v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-wide v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " proto : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " captcha_info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " options : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gdid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->l:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    invoke-interface {v2}, Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;->getGdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " access_token : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->l:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    invoke-interface {v2}, Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->l:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    invoke-interface {v2}, Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;->getUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " auxiliaries : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " access_token_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->j:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->k:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BytesNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->j:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->k:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    return-void
.end method
