.class public final Lcom/sina/sinalivesdk/refactor/post/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/sina/sinalivesdk/refactor/post/a/i;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/post/a/i;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lcom/sina/sinalivesdk/refactor/post/a/i;

    invoke-direct {p1}, Lcom/sina/sinalivesdk/refactor/post/a/i;-><init>()V

    :cond_0
    iget-object v0, p1, Lcom/sina/sinalivesdk/refactor/post/a/i;->n:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/a/l;

    iget-object v1, p1, Lcom/sina/sinalivesdk/refactor/post/a/i;->n:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/refactor/post/a/l;-><init>(Ljava/lang/Throwable;)V

    :cond_1
    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/a/h;->a:Lcom/sina/sinalivesdk/refactor/post/a/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/h;->a:Lcom/sina/sinalivesdk/refactor/post/a/i;

    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/post/a/i;->h:Ljava/lang/String;

    return-object v0
.end method
