.class public final Lcom/sina/sinalivesdk/refactor/push/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/refactor/push/l;


# instance fields
.field a:Lcom/sina/sinalivesdk/refactor/push/m;

.field b:Lcom/sina/sinalivesdk/refactor/push/m;

.field c:Lcom/sina/sinalivesdk/refactor/push/m;

.field private d:Lcom/sina/sinalivesdk/WBIMLiveClient;

.field private e:Lcom/sina/sinalivesdk/refactor/push/s;

.field private f:Lcom/sina/sinalivesdk/refactor/push/y;

.field private g:Lcom/sina/sinalivesdk/refactor/push/q;

.field private final h:Lcom/sina/sinalivesdk/refactor/push/a;

.field private final i:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostData;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/sina/sinalivesdk/refactor/push/w;

.field private k:Lcom/sina/sinalivesdk/refactor/push/ab;

.field private l:J

.field private m:J

.field private final n:Lcom/sina/sinalivesdk/refactor/push/o;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->j:Lcom/sina/sinalivesdk/refactor/push/w;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    const-wide/32 v0, 0x41eb0

    iput-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->l:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->m:J

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/e;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/refactor/push/e;-><init>(Lcom/sina/sinalivesdk/refactor/push/d;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->n:Lcom/sina/sinalivesdk/refactor/push/o;

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/y;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-direct {v0, v1, p0}, Lcom/sina/sinalivesdk/refactor/push/y;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/push/d;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->f:Lcom/sina/sinalivesdk/refactor/push/y;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/aa;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/d;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, p0, v2}, Lcom/sina/sinalivesdk/refactor/push/aa;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/push/d;Ljava/util/concurrent/LinkedBlockingQueue;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->h:Lcom/sina/sinalivesdk/refactor/push/a;

    const-string v0, "DMPushEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "push engine constructor:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/s;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-direct {v0, v1, p0}, Lcom/sina/sinalivesdk/refactor/push/s;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/push/d;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->e:Lcom/sina/sinalivesdk/refactor/push/s;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/q;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/refactor/push/q;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/w;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->j:Lcom/sina/sinalivesdk/refactor/push/w;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/t;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/refactor/push/t;-><init>(Lcom/sina/sinalivesdk/refactor/push/d;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->a:Lcom/sina/sinalivesdk/refactor/push/m;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/x;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/refactor/push/x;-><init>(Lcom/sina/sinalivesdk/refactor/push/d;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->b:Lcom/sina/sinalivesdk/refactor/push/m;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->a:Lcom/sina/sinalivesdk/refactor/push/m;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    return-void
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/d;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->l:J

    return-wide p1
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/d;)Lcom/sina/sinalivesdk/refactor/push/ab;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    return-object v0
.end method

.method private a(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Lcom/sina/sinalivesdk/refactor/push/b;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 0
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->authProvider()Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;->getUid()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    invoke-static {p1}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseHeader(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->targetUid()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    cmp-long v5, v6, v0

    if-eqz v5, :cond_1

    invoke-static {p1, v4}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseBody(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/util/HashMap;

    const-string v2, "DMPushEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error account. current account is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->sequnceId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->tid()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->prevTid()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->targetUid()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "DMPushEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "batch "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", (sequnceId, tid, previous_tid, type, proto) is ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->sequnceId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->tid()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->prevTid()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->type()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->proto()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->isPipeLine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DMPushEngine"

    const-string v1, "response isPipeline"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseBody(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v4, v0

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    check-cast v1, [B

    invoke-static {v1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->newInstance([B)Lcom/sina/sinalivesdk/protobuf/CodedInputStream;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Lcom/sina/sinalivesdk/refactor/push/b;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const-string v0, "DMPushEngine"

    const-string v1, "response not Pipeline"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseBody(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->backOffset(I)V

    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    const-string v1, "DMPushEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "after paring data: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    invoke-static {v0, v5}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sina/sinalivesdk/refactor/push/g;

    invoke-direct {v1}, Lcom/sina/sinalivesdk/refactor/push/g;-><init>()V

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->sequnceId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/sina/sinalivesdk/refactor/push/g;->e(J)V

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->tid()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/sina/sinalivesdk/refactor/push/g;->a(J)V

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->prevTid()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/sina/sinalivesdk/refactor/push/g;->b(J)V

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/push/g;->a([B)V

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->flag()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->flag()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/push/g;->a(I)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sina/sinalivesdk/refactor/push/g;->c(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sina/sinalivesdk/refactor/push/g;->d(J)V

    .line 7000
    iget-object v0, p2, Lcom/sina/sinalivesdk/refactor/push/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 0
    :cond_4
    return-void
.end method

.method private a(Lcom/sina/sinalivesdk/refactor/messages/PostData;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DMPushEngine"

    const-string v2, "put failed"

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/sina/sinalivesdk/refactor/push/d;)Lcom/sina/sinalivesdk/WBIMLiveClient;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    return-object v0
.end method

.method static synthetic c(Lcom/sina/sinalivesdk/refactor/push/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->l:J

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 0
    const-string v0, "DMPushEngine"

    const-string v1, "push engine sendAck"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5000
    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->setInfo(Ljava/util/List;)V

    .line 6000
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->build(Z)Lcom/sina/sinalivesdk/refactor/messages/PostData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Lcom/sina/sinalivesdk/refactor/messages/PostData;)V

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final a([B)I
    .locals 6

    const/16 v4, 0x400

    :try_start_0
    array-length v1, p1

    const-string v2, "DMPushEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "receive push data, totalSize="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", data="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-le v1, v4, :cond_0

    const-string v0, "size too large."

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sina/sinalivesdk/util/e;->a:Z

    if-eqz v0, :cond_1

    if-le v1, v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    sub-int v2, v1, v0

    const/16 v3, 0x400

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v3, "DMPushEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "push data, offset="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, v0, v2

    invoke-static {p1, v0, v5}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v0, v2

    goto :goto_1

    :cond_0
    const/16 v0, 0x400

    invoke-static {p1, v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->newInstance([B)Lcom/sina/sinalivesdk/protobuf/CodedInputStream;

    move-result-object v0

    new-instance v1, Lcom/sina/sinalivesdk/refactor/push/b;

    invoke-direct {v1}, Lcom/sina/sinalivesdk/refactor/push/b;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Lcom/sina/sinalivesdk/refactor/push/b;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->e:Lcom/sina/sinalivesdk/refactor/push/s;

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/s;->a(Lcom/sina/sinalivesdk/refactor/push/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xa

    :goto_2
    return v0

    :catch_0
    move-exception v0

    const-string v1, "DMPushEngine"

    const-string v2, "receivePushData(byte[] receiveData)"

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x15

    goto :goto_2
.end method

.method public final a(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->requestTid()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    invoke-virtual {v2, v0, v1}, Lcom/sina/sinalivesdk/refactor/push/q;->a(J)Lcom/sina/sinalivesdk/refactor/messages/PostData;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "DMPushEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestTid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " found nothing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    move-result-object v3

    const-string v4, "DMPushEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " comming back."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sina/sinalivesdk/util/e;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sina/sinalivesdk/util/a;->a()Lcom/sina/sinalivesdk/util/a;

    move-result-object v1

    invoke-virtual {v1, p3, p2}, Lcom/sina/sinalivesdk/util/a;->a(Ljava/util/Map;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I

    goto :goto_0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->l:J

    return-void
.end method

.method public final a(Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/push/ab;->a(Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0, p2}, Lcom/sina/sinalivesdk/refactor/push/ab;->a(Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->b:Lcom/sina/sinalivesdk/refactor/push/m;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;->onConnectSuccess()V

    goto :goto_0

    :cond_2
    const-string v0, "Connect Failed"

    invoke-interface {p2, v0}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;->onConnectFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->build(Z)Lcom/sina/sinalivesdk/refactor/messages/PostData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/push/q;->a(Lcom/sina/sinalivesdk/refactor/messages/PostData;)V

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Lcom/sina/sinalivesdk/refactor/messages/PostData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->e:Lcom/sina/sinalivesdk/refactor/push/s;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/s;->c()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 0
    const-string v0, "TAG"

    const-string v1, "push engine start ---------------"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/q;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/refactor/push/q;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->f:Lcom/sina/sinalivesdk/refactor/push/y;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->e:Lcom/sina/sinalivesdk/refactor/push/s;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->h:Lcom/sina/sinalivesdk/refactor/push/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1000
    sget-object v0, Lcom/sina/sinalivesdk/refactor/push/p;->a:Lcom/sina/sinalivesdk/refactor/push/n;

    .line 0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->n:Lcom/sina/sinalivesdk/refactor/push/o;

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/n;->a(Lcom/sina/sinalivesdk/refactor/push/o;)V

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/refactor/push/ab;-><init>(Lcom/sina/sinalivesdk/refactor/push/d;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    return-void
.end method

.method public final b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->m:J

    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 0
    const-string v0, "TAG"

    const-string v1, "push engine stop ---------------"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    sget-object v0, Lcom/sina/sinalivesdk/refactor/push/p;->a:Lcom/sina/sinalivesdk/refactor/push/n;

    .line 0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->n:Lcom/sina/sinalivesdk/refactor/push/o;

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/n;->b(Lcom/sina/sinalivesdk/refactor/push/o;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->h:Lcom/sina/sinalivesdk/refactor/push/a;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/a;->b()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->h:Lcom/sina/sinalivesdk/refactor/push/a;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/a;->a()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->e:Lcom/sina/sinalivesdk/refactor/push/s;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/s;->a()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->f:Lcom/sina/sinalivesdk/refactor/push/y;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/y;->a()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->b()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/q;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->a:Lcom/sina/sinalivesdk/refactor/push/m;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->j:Lcom/sina/sinalivesdk/refactor/push/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/w;->a(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->c()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 6

    .prologue
    .line 0
    const-string v0, "DMPushEngine"

    const-string v1, "start checkSocketPush"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DMPushEngine"

    const-string v1, "Check PushTaskRunner. status: running. action: interrupt"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/d;->b:Lcom/sina/sinalivesdk/refactor/push/m;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMPushEngine"

    const-string v1, "checkSocketPush in DataState"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->l:J

    .line 0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4000
    iget-wide v4, p0, Lcom/sina/sinalivesdk/refactor/push/d;->m:J

    .line 0
    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const-string v0, "DMPushEngine"

    const-string v1, "Need to Send Heartbeat while checkSocketPush"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/push/d;->k()V

    goto :goto_0

    :cond_2
    const-string v0, "DMPushEngine"

    const-string v1, "Check PushTaskRunner. status: not running. action: start"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->a()V

    goto :goto_0
.end method

.method public final f()Lcom/sina/sinalivesdk/refactor/push/y;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->f:Lcom/sina/sinalivesdk/refactor/push/y;

    return-object v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->d()V

    :cond_0
    return-void
.end method

.method public final h()Lcom/sina/sinalivesdk/WBIMLiveClient;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    return-object v0
.end method

.method public final i()Lcom/sina/sinalivesdk/refactor/push/w;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->j:Lcom/sina/sinalivesdk/refactor/push/w;

    return-object v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->l:J

    return-wide v0
.end method

.method public final k()V
    .locals 4

    new-instance v0, Lcom/sina/sinalivesdk/request/HeartBeatRequest;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/request/HeartBeatRequest;-><init>()V

    const-string v1, "DST"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "roomid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_ROOM_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_ROOM_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/request/HeartBeatRequest;->setRoom_id(Ljava/lang/String;)V

    new-instance v1, Lcom/sina/sinalivesdk/refactor/push/f;

    invoke-direct {v1, p0}, Lcom/sina/sinalivesdk/refactor/push/f;-><init>(Lcom/sina/sinalivesdk/refactor/push/d;)V

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/PushRequestHelper;->sendHeartBeatMessage(Lcom/sina/sinalivesdk/request/HeartBeatRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->h:Lcom/sina/sinalivesdk/refactor/push/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->h:Lcom/sina/sinalivesdk/refactor/push/a;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->g:Lcom/sina/sinalivesdk/refactor/push/q;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/q;->b()V

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->j:Lcom/sina/sinalivesdk/refactor/push/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->j:Lcom/sina/sinalivesdk/refactor/push/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/w;->a(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/push/d;->m()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->a:Lcom/sina/sinalivesdk/refactor/push/m;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getAlarmManager()Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAlarm(I)V

    return-void
.end method

.method public final n()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/push/d;->b:Lcom/sina/sinalivesdk/refactor/push/m;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/push/d;->k:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/push/ab;->f()Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_1
.end method
