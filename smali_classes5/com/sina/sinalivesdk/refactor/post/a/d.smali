.class final Lcom/sina/sinalivesdk/refactor/post/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/post/a/c;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/post/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/a/d;->a:Lcom/sina/sinalivesdk/refactor/post/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/d;->a:Lcom/sina/sinalivesdk/refactor/post/a/c;

    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/post/a/c;->a:Lcom/sina/sinalivesdk/refactor/post/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/d;->a:Lcom/sina/sinalivesdk/refactor/post/a/c;

    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/post/a/c;->a:Lcom/sina/sinalivesdk/refactor/post/a/j;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/post/a/j;->a()V

    :cond_0
    return-void
.end method
