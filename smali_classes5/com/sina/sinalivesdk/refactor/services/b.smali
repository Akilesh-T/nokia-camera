.class final Lcom/sina/sinalivesdk/refactor/services/b;
.super Lcom/sina/sinalivesdk/refactor/services/c;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/sina/sinalivesdk/refactor/services/a;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/services/a;)V
    .locals 1

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/services/b;->b:Lcom/sina/sinalivesdk/refactor/services/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sina/sinalivesdk/refactor/services/c;-><init>(Lcom/sina/sinalivesdk/refactor/services/a;B)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/b;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/b;->b:Lcom/sina/sinalivesdk/refactor/services/a;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/services/a;->a(Lcom/sina/sinalivesdk/refactor/services/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/b;->b:Lcom/sina/sinalivesdk/refactor/services/a;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/services/a;->b(Lcom/sina/sinalivesdk/refactor/services/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/b;->b:Lcom/sina/sinalivesdk/refactor/services/a;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/services/a;->c(Lcom/sina/sinalivesdk/refactor/services/a;)I

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0"

    return-object v0
.end method
