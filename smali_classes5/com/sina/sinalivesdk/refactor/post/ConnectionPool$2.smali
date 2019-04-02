.class Lcom/sina/sinalivesdk/refactor/post/ConnectionPool$2;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/post/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KONG"

    const-string v1, "ConnectionPool : netStatusChangedReceiver.onReceive()"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    sget-object v0, Lcom/sina/sinalivesdk/refactor/post/c;->a:Lcom/sina/sinalivesdk/refactor/post/a;

    .line 0
    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/a;->a()V

    :cond_0
    return-void
.end method
