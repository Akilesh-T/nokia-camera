.class Lcom/sina/sinalivesdk/refactor/push/NetworkMonitor$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/push/n;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/push/n;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/NetworkMonitor$1;->a:Lcom/sina/sinalivesdk/refactor/push/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/NetworkMonitor$1;->a:Lcom/sina/sinalivesdk/refactor/push/n;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/n;->a(Lcom/sina/sinalivesdk/refactor/push/n;)I

    move-result v1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/NetworkMonitor$1;->a:Lcom/sina/sinalivesdk/refactor/push/n;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/NetworkMonitor$1;->a:Lcom/sina/sinalivesdk/refactor/push/n;

    invoke-static {v2}, Lcom/sina/sinalivesdk/refactor/push/n;->b(Lcom/sina/sinalivesdk/refactor/push/n;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/refactor/push/n;->a(Lcom/sina/sinalivesdk/refactor/push/n;Landroid/net/ConnectivityManager;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/NetworkMonitor$1;->a:Lcom/sina/sinalivesdk/refactor/push/n;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/n;->a(Lcom/sina/sinalivesdk/refactor/push/n;)I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/NetworkMonitor$1;->a:Lcom/sina/sinalivesdk/refactor/push/n;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/n;->c(Lcom/sina/sinalivesdk/refactor/push/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/push/o;

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/push/NetworkMonitor$1;->a:Lcom/sina/sinalivesdk/refactor/push/n;

    invoke-static {v3}, Lcom/sina/sinalivesdk/refactor/push/n;->a(Lcom/sina/sinalivesdk/refactor/push/n;)I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/sina/sinalivesdk/refactor/push/o;->a(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
