.class final Lcom/sina/sinalivesdk/refactor/post/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:[B

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:I

.field private synthetic e:Lcom/sina/sinalivesdk/refactor/post/a/c;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/post/a/c;[BIII)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/a/e;->e:Lcom/sina/sinalivesdk/refactor/post/a/c;

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/post/a/e;->a:[B

    iput p3, p0, Lcom/sina/sinalivesdk/refactor/post/a/e;->b:I

    iput p4, p0, Lcom/sina/sinalivesdk/refactor/post/a/e;->c:I

    iput p5, p0, Lcom/sina/sinalivesdk/refactor/post/a/e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/e;->e:Lcom/sina/sinalivesdk/refactor/post/a/c;

    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/post/a/c;->a:Lcom/sina/sinalivesdk/refactor/post/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/e;->e:Lcom/sina/sinalivesdk/refactor/post/a/c;

    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/post/a/c;->a:Lcom/sina/sinalivesdk/refactor/post/a/j;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/a/e;->a:[B

    iget v2, p0, Lcom/sina/sinalivesdk/refactor/post/a/e;->b:I

    iget v3, p0, Lcom/sina/sinalivesdk/refactor/post/a/e;->c:I

    iget v4, p0, Lcom/sina/sinalivesdk/refactor/post/a/e;->d:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sina/sinalivesdk/refactor/post/a/j;->a([BIII)V

    :cond_0
    return-void
.end method
