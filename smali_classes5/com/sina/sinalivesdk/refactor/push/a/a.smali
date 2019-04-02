.class public abstract Lcom/sina/sinalivesdk/refactor/push/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/refactor/push/a/f;


# instance fields
.field protected a:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/a/a;->a:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

    return-object v0
.end method

.method public final a(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;)Lcom/sina/sinalivesdk/refactor/push/a/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;",
            "Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/sina/sinalivesdk/refactor/push/a/f;"
        }
    .end annotation

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/push/a/a;->a:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

    iput-object p3, p0, Lcom/sina/sinalivesdk/refactor/push/a/a;->b:Ljava/util/HashMap;

    sget-boolean v0, Lcom/sina/sinalivesdk/util/e;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "RunnableHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sina/sinalivesdk/util/a;->a()Lcom/sina/sinalivesdk/util/a;

    move-result-object v1

    invoke-virtual {v1, p3, p2}, Lcom/sina/sinalivesdk/util/a;->a(Ljava/util/Map;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
