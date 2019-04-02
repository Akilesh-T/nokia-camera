.class public Lcom/sina/sinalivesdk/manager/ConnectorManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPushConnection()V
    .locals 2

    const-string v0, "ConnectorManager"

    const-string v1, "PushEngine checkPushConnection start"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPushEngine()Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->e()V

    :cond_0
    return-void
.end method

.method public isPushConnectionAvailable()Z
    .locals 2

    const-string v0, "ConnectorManager"

    const-string v1, "PushEngine isPushConnectionAvailable start"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPushEngine()Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->n()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutDownConnection()V
    .locals 2

    const-string v0, "ConnectorManager"

    const-string v1, "PushEngine shutDownConnection start"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPushEngine()Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->l()V

    :cond_0
    return-void
.end method
