.class public Lcom/sina/sinalivesdk/manager/FilterManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/manager/FilterManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/manager/FilterManager;-><init>()V

    return-void
.end method

.method public static instance()Lcom/sina/sinalivesdk/manager/FilterManager;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/manager/FilterManager$LazyHolder;->a:Lcom/sina/sinalivesdk/manager/FilterManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/FilterManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/FilterManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void
.end method

.method public filterId(J)Z
    .locals 9

    const/4 v1, 0x0

    const-string v0, "hcl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msgId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/FilterManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hcl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!contaicn"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/FilterManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sina/sinalivesdk/manager/FilterManager$FilterMsgIdTask;

    iget-object v2, p0, Lcom/sina/sinalivesdk/manager/FilterManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0, v2}, Lcom/sina/sinalivesdk/manager/FilterManager$FilterMsgIdTask;-><init>(Lcom/sina/sinalivesdk/manager/FilterManager;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/FilterManager$FilterMsgIdTask;->start()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/FilterManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "hcl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/FilterManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hcl"

    const-string v2, "!contaicn1"

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sina/sinalivesdk/manager/FilterManager$FilterMsgIdTask;

    iget-object v2, p0, Lcom/sina/sinalivesdk/manager/FilterManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0, v2}, Lcom/sina/sinalivesdk/manager/FilterManager$FilterMsgIdTask;-><init>(Lcom/sina/sinalivesdk/manager/FilterManager;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/FilterManager$FilterMsgIdTask;->start()V

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sina/sinalivesdk/manager/FilterManager$FilterMsgIdTask;

    iget-object v1, p0, Lcom/sina/sinalivesdk/manager/FilterManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0, v1}, Lcom/sina/sinalivesdk/manager/FilterManager$FilterMsgIdTask;-><init>(Lcom/sina/sinalivesdk/manager/FilterManager;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/FilterManager$FilterMsgIdTask;->start()V

    const-string v0, "hcl"

    const-string v1, "contaicn"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
