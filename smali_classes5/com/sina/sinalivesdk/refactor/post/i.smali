.class public abstract Lcom/sina/sinalivesdk/refactor/post/i;
.super Lcom/sina/sinalivesdk/refactor/services/e;


# instance fields
.field protected a:Lcom/sina/sinalivesdk/refactor/post/f;

.field protected b:Lcom/sina/sinalivesdk/refactor/post/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/refactor/post/g",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/post/g;Lcom/sina/sinalivesdk/refactor/post/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/WBIMLiveClient;",
            "Lcom/sina/sinalivesdk/refactor/post/g",
            "<*>;",
            "Lcom/sina/sinalivesdk/refactor/post/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sina/sinalivesdk/refactor/services/e;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V

    iput-object p3, p0, Lcom/sina/sinalivesdk/refactor/post/i;->a:Lcom/sina/sinalivesdk/refactor/post/f;

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/post/i;->b:Lcom/sina/sinalivesdk/refactor/post/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/i;->b:Lcom/sina/sinalivesdk/refactor/post/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/i;->b:Lcom/sina/sinalivesdk/refactor/post/g;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/g;->b()V

    :cond_0
    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/services/e;->a()V

    return-void
.end method
