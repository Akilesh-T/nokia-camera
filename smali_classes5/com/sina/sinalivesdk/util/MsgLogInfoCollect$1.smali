.class Lcom/sina/sinalivesdk/util/MsgLogInfoCollect$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/util/c;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/util/c;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/util/MsgLogInfoCollect$1;->a:Lcom/sina/sinalivesdk/util/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/util/MsgLogInfoCollect$1;->a:Lcom/sina/sinalivesdk/util/c;

    invoke-static {p1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/c;->a(Lcom/sina/sinalivesdk/util/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v0, p0, Lcom/sina/sinalivesdk/util/MsgLogInfoCollect$1;->a:Lcom/sina/sinalivesdk/util/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sina/sinalivesdk/util/c;->a(Lcom/sina/sinalivesdk/util/c;J)J

    :cond_0
    return-void
.end method
