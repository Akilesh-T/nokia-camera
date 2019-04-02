.class final Lcom/sina/sinalivesdk/refactor/push/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/push/q;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/push/q;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/r;->a:Lcom/sina/sinalivesdk/refactor/push/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/r;->a:Lcom/sina/sinalivesdk/refactor/push/q;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/q;->a(Lcom/sina/sinalivesdk/refactor/push/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "PushRequestMap"

    const-string v1, "exception : purgeTimeoutRequest()"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
