.class final Lcom/sina/sinalivesdk/refactor/push/ac;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/push/ab;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/push/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/ac;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "SocketPushTaskRunner"

    const-string v1, "onDisconnected triggered!!"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ac;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->a(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ac;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->a(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    move-result-object v0

    const/16 v1, 0xc

    const-string v2, "IO Exception"

    invoke-interface {v0, v1, v2}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;->onDisconnected(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ac;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/ab;->a(Lcom/sina/sinalivesdk/refactor/push/ab;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    return-void
.end method
