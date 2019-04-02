.class final Lcom/sina/sinalivesdk/refactor/post/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/post/a/i;

.field private synthetic b:Lcom/sina/sinalivesdk/refactor/post/a/c;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/post/a/c;Lcom/sina/sinalivesdk/refactor/post/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/a/f;->b:Lcom/sina/sinalivesdk/refactor/post/a/c;

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/post/a/f;->a:Lcom/sina/sinalivesdk/refactor/post/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/f;->b:Lcom/sina/sinalivesdk/refactor/post/a/c;

    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/post/a/c;->a:Lcom/sina/sinalivesdk/refactor/post/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/f;->b:Lcom/sina/sinalivesdk/refactor/post/a/c;

    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/post/a/c;->a:Lcom/sina/sinalivesdk/refactor/post/a/j;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/a/f;->a:Lcom/sina/sinalivesdk/refactor/post/a/i;

    invoke-interface {v0, v1}, Lcom/sina/sinalivesdk/refactor/post/a/j;->a(Lcom/sina/sinalivesdk/refactor/post/a/i;)V

    :cond_0
    return-void
.end method
