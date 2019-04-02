.class public final Lcom/sina/sinalivesdk/refactor/post/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/refactor/services/h;


# instance fields
.field private a:Lcom/sina/sinalivesdk/refactor/services/f;

.field private b:Lcom/sina/sinalivesdk/refactor/post/a/g;

.field private c:Lcom/sina/sinalivesdk/refactor/post/a/o;

.field private d:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/services/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/k;->a:Lcom/sina/sinalivesdk/refactor/services/f;

    return-void
.end method


# virtual methods
.method public final a([BJ)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 0
    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/k;->d:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    .line 1000
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/post/k;->b()V

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/a/o;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/refactor/post/a/o;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/k;->c:Lcom/sina/sinalivesdk/refactor/post/a/o;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/k;->a:Lcom/sina/sinalivesdk/refactor/services/f;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/services/f;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/k;->d:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getHttpRequestParams()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sina/sinalivesdk/refactor/post/a/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sina/sinalivesdk/refactor/post/a/g;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/k;->b:Lcom/sina/sinalivesdk/refactor/post/a/g;

    .line 0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/k;->c:Lcom/sina/sinalivesdk/refactor/post/a/o;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/k;->b:Lcom/sina/sinalivesdk/refactor/post/a/g;

    .line 2000
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/post/a/o;->a(Lcom/sina/sinalivesdk/refactor/post/a/g;Lcom/sina/sinalivesdk/refactor/post/a/j;)Lcom/sina/sinalivesdk/refactor/post/a/h;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/a/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/k;->c:Lcom/sina/sinalivesdk/refactor/post/a/o;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/k;->c:Lcom/sina/sinalivesdk/refactor/post/a/o;

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/k;->b:Lcom/sina/sinalivesdk/refactor/post/a/g;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/k;->b:Lcom/sina/sinalivesdk/refactor/post/a/g;

    :cond_1
    return-void
.end method
