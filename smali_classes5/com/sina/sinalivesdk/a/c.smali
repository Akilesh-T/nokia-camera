.class final Lcom/sina/sinalivesdk/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/sina/sinalivesdk/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/a/d",
            "<TE;>;"
        }
    .end annotation
.end field

.field private b:Lcom/sina/sinalivesdk/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/a/d",
            "<TE;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private synthetic d:Lcom/sina/sinalivesdk/a/b;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/sina/sinalivesdk/a/c;->d:Lcom/sina/sinalivesdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/a/b;->c()V

    :try_start_0
    invoke-static {p1}, Lcom/sina/sinalivesdk/a/b;->a(Lcom/sina/sinalivesdk/a/b;)Lcom/sina/sinalivesdk/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/c;->a:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->a:Lcom/sina/sinalivesdk/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->a:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/c;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Lcom/sina/sinalivesdk/a/b;->d()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/a/b;->d()V

    throw v0
.end method

.method private a(Lcom/sina/sinalivesdk/a/d;)Lcom/sina/sinalivesdk/a/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/a/d",
            "<TE;>;)",
            "Lcom/sina/sinalivesdk/a/d",
            "<TE;>;"
        }
    .end annotation

    :goto_0
    iget-object v0, p1, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->d:Lcom/sina/sinalivesdk/a/b;

    invoke-static {v0}, Lcom/sina/sinalivesdk/a/b;->a(Lcom/sina/sinalivesdk/a/b;)Lcom/sina/sinalivesdk/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    :cond_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->a:Lcom/sina/sinalivesdk/a/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->d:Lcom/sina/sinalivesdk/a/b;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/a/b;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->a:Lcom/sina/sinalivesdk/a/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/a/c;->d:Lcom/sina/sinalivesdk/a/b;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/a/b;->d()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sina/sinalivesdk/a/c;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->a:Lcom/sina/sinalivesdk/a/d;

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/c;->b:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->a:Lcom/sina/sinalivesdk/a/d;

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/a/c;->a(Lcom/sina/sinalivesdk/a/d;)Lcom/sina/sinalivesdk/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/c;->a:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->a:Lcom/sina/sinalivesdk/a/d;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sina/sinalivesdk/a/c;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->d:Lcom/sina/sinalivesdk/a/b;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/a/b;->d()V

    return-object v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->a:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final remove()V
    .locals 4

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->b:Lcom/sina/sinalivesdk/a/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->d:Lcom/sina/sinalivesdk/a/b;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/a/b;->c()V

    :try_start_0
    iget-object v2, p0, Lcom/sina/sinalivesdk/a/c;->b:Lcom/sina/sinalivesdk/a/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/c;->b:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->d:Lcom/sina/sinalivesdk/a/b;

    invoke-static {v0}, Lcom/sina/sinalivesdk/a/b;->a(Lcom/sina/sinalivesdk/a/b;)Lcom/sina/sinalivesdk/a/d;

    move-result-object v1

    iget-object v0, v1, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/sina/sinalivesdk/a/c;->d:Lcom/sina/sinalivesdk/a/b;

    invoke-virtual {v2, v0, v1}, Lcom/sina/sinalivesdk/a/b;->a(Lcom/sina/sinalivesdk/a/d;Lcom/sina/sinalivesdk/a/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/c;->d:Lcom/sina/sinalivesdk/a/b;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/a/b;->d()V

    return-void

    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/a/c;->d:Lcom/sina/sinalivesdk/a/b;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/a/b;->d()V

    throw v0
.end method
