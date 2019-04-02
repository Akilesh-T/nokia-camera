.class public abstract Lcom/sina/sinalivesdk/refactor/services/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected volatile c:Ljava/lang/Thread;

.field protected d:Lcom/sina/sinalivesdk/WBIMLiveClient;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/e;->c:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/services/e;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/e;->c:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/services/e;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/e;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/e;->c:Ljava/lang/Thread;

    return-void
.end method
