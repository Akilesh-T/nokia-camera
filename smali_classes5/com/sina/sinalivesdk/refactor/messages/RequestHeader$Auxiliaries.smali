.class public Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;
.super Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;


# instance fields
.field private a:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

.field private b:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

.field private c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

.field private d:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

.field private e:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

.field private f:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

.field private g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

.field private h:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

    const/4 v1, 0x0

    const-string v2, "accecpt_content_types"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/16 v1, 0x8

    const-string v2, "language"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/16 v1, 0x9

    const-string v2, "platform"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    const/16 v1, 0xa

    const-string v2, "user_agent"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    const/16 v1, 0xb

    const-string v2, "from"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    const/16 v1, 0xc

    const-string v2, "wm"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/16 v1, 0xd

    const-string v2, "vp"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    const/16 v1, 0xe

    const-string v2, "sdk_version"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    return-void
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;)Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    return-object v0
.end method

.method static synthetic b(Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;)Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;->getConstant()Lcom/sina/sinalivesdk/refactor/services/g;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->isAssignedValue:Z

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->setValue(I)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/services/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/services/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/services/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/services/g;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->setValue(I)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/services/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public computeSize(Z)I
    .locals 2

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->isAssignedValue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;->computeSize(Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->computeSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public makeTag()I
    .locals 2

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->fieldNumber:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;->value:[I

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "accecpt_content_types : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "  language : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  platform : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  user_agent : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  from : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  wm : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  vp : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  sdk_version : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "accecpt_content_types : ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

    iget-object v2, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;->value:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->isAssignedValue:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->fieldNumber:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->computeSize(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;

    invoke-virtual {v0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerArrayNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-virtual {v0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader$Auxiliaries;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-virtual {v0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    goto :goto_0
.end method
