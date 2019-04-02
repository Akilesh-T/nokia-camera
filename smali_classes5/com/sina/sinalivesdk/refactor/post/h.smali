.class public final Lcom/sina/sinalivesdk/refactor/post/h;
.super Lcom/sina/sinalivesdk/refactor/services/d;

# interfaces
.implements Lcom/sina/sinalivesdk/refactor/services/h;


# instance fields
.field private b:Lcom/sina/sinalivesdk/refactor/services/f;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/sinalivesdk/refactor/services/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a([BJ)I
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->b(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "DMPostSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Dispatcher, current network is "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/post/h;->c:Z

    if-eq v1, v0, :cond_2

    iput-boolean v1, p0, Lcom/sina/sinalivesdk/refactor/post/h;->c:Z

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/post/h;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/h;->b:Lcom/sina/sinalivesdk/refactor/services/f;

    :cond_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/h;->b:Lcom/sina/sinalivesdk/refactor/services/f;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/services/i;->a()Lcom/sina/sinalivesdk/refactor/services/i;

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/services/i;->b()Lcom/sina/sinalivesdk/refactor/services/f;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/h;->b:Lcom/sina/sinalivesdk/refactor/services/f;

    :cond_3
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/h;->b:Lcom/sina/sinalivesdk/refactor/services/f;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sina/sinalivesdk/refactor/post/h;->a([BLcom/sina/sinalivesdk/refactor/services/f;J)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_2
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/post/h;->d()V

    goto :goto_0

    :cond_4
    const-string v0, "not "

    goto :goto_1

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/h;->b:Lcom/sina/sinalivesdk/refactor/services/f;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/refactor/services/f;->c()V

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/services/i;->a()Lcom/sina/sinalivesdk/refactor/services/i;

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/services/i;->b()Lcom/sina/sinalivesdk/refactor/services/f;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/h;->b:Lcom/sina/sinalivesdk/refactor/services/f;

    goto :goto_2

    :sswitch_2
    invoke-static {}, Lcom/sina/sinalivesdk/refactor/services/i;->a()Lcom/sina/sinalivesdk/refactor/services/i;

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/services/i;->b()Lcom/sina/sinalivesdk/refactor/services/f;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/h;->b:Lcom/sina/sinalivesdk/refactor/services/f;

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_3
    const/16 v0, 0x64

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x5 -> :sswitch_1
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a()Ljava/io/InputStream;
    .locals 1

    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/services/d;->c()Ljava/io/BufferedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 0

    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/services/d;->d()V

    return-void
.end method
