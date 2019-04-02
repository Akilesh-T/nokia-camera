.class public Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

.field private b:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

.field private c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

.field private d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

.field private e:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

.field private f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

.field private g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

.field private h:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

.field private i:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

.field private j:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

.field private k:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

.field private l:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;

.field private m:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

.field private n:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

.field private o:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

.field private p:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    const/4 v1, 0x0

    const-string v2, "tid"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    const/4 v1, 0x1

    const-string v2, "previous_tid"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/4 v1, 0x5

    const-string v2, "type"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/4 v1, 0x6

    const-string v2, "proto"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    const/4 v1, 0x7

    const-string v2, "timestamp"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/16 v1, 0x8

    const-string v2, "error_code"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/16 v1, 0x9

    const-string v2, "flag"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    const/16 v1, 0xa

    const-string v2, "target_uid"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    const/16 v1, 0xb

    const-string v2, "captcha_info"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    const/16 v1, 0xc

    const-string v2, "sequence_id"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->j:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    const/16 v1, 0xd

    const-string v2, "error_msg"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->k:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;

    const/16 v1, 0xf

    const-string v2, "auxiliaries"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->l:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    const/16 v1, 0x10

    const-string v2, "sync_version"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->m:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/16 v1, 0x11

    const-string v2, "channel"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->n:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    const/16 v1, 0x12

    const-string v2, "request_tid"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->o:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    const/16 v1, 0x15

    const-string v2, "requestId"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->p:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-direct {p0, p1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;)V

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->j:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;)V

    goto :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->k:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;)V

    goto :goto_0

    :pswitch_c
    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->l:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;

    .line 1000
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;->isAssignedValue:Z

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_d
    iget-object v5, v3, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;->content_type:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-static {v0, v1, v5}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ResponseHeader"

    const-string v3, "readAuxiliaries exception."

    invoke-static {v1, v3, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 0
    :pswitch_e
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->m:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->n:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->o:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->p:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    invoke-static {p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;)V

    goto/16 :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
    .end packed-switch

    .line 1000
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method private static a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/util/HashMap;II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->setValue(I)V

    return-void
.end method

.method private static a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/util/HashMap;IJ)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->setValue(J)V

    return-void
.end method

.method private static a(Ljava/util/HashMap;ILcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public captcha()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->i:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public channel()I
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->n:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->n:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public errorCode()I
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->f:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public flag()I
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hasFlag(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget-boolean v1, v1, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->isAssignedValue:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->g:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v1, v1, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    .line 2000
    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 0
    :cond_0
    return v0
.end method

.method public isPipeLine()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v1, v1, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v1, v1, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProtoBuf()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->l:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;

    iget-boolean v1, v1, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;->isAssignedValue:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->l:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;

    iget-object v1, v1, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;->content_type:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget-boolean v1, v1, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->isAssignedValue:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->l:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;

    iget-object v1, v1, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;->content_type:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v1, v1, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needUnzip()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public noAck()Z
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public noSort()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public prevTid()J
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->b:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-wide v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public proto()I
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->d:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->p:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->p:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public requestTid()J
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->o:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->o:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-wide v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public sequnceId()J
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->j:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->j:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-wide v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public syncVersion()J
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->m:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->m:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-wide v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public targetUid()J
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->h:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-wide v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public tid()J
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->a:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-wide v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->value:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public timestamp()J
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->e:Lcom/sina/sinalivesdk/refactor/messages/Fields$LongNode;

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

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->tid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " previous_tid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->prevTid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error_code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->errorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error_msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->k:Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;

    iget-object v2, v2, Lcom/sina/sinalivesdk/refactor/messages/Fields$StringNode;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->type()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " proto : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->proto()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timestamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->timestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " flag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->flag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " target_uid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->targetUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " captcha_info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->captcha()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " seq_id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->sequnceId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " sync_version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->syncVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " channel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->channel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " request_tid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->requestTid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->requestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget-boolean v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->isAssignedValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->c:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    iget v0, v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;->value:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
