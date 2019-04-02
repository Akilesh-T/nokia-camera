.class public final Lcom/sina/sinalivesdk/refactor/push/a/h;
.super Lcom/sina/sinalivesdk/refactor/push/a/a;


# instance fields
.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/push/a/a;-><init>()V

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/a/h;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/a/h;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "RunnableHandler"

    return-object v0
.end method
