.class final Lcom/sina/sinalivesdk/refactor/push/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/refactor/push/o;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/push/d;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/push/d;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/e;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    const-string v0, "DMPushEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network status changed from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/e;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Lcom/sina/sinalivesdk/refactor/push/d;)Lcom/sina/sinalivesdk/refactor/push/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/e;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->d()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/e;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Lcom/sina/sinalivesdk/refactor/push/d;)Lcom/sina/sinalivesdk/refactor/push/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->h()V

    :cond_0
    return-void
.end method
