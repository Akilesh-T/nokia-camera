.class public final Lcom/sina/sinalivesdk/refactor/post/a/o;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/a/o;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/refactor/post/a/o;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    new-instance v1, Lcom/sina/sinalivesdk/refactor/post/a/a;

    invoke-direct {v1}, Lcom/sina/sinalivesdk/refactor/post/a/a;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v3, "statusline"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    :cond_1
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/sina/sinalivesdk/refactor/post/a/g;Lcom/sina/sinalivesdk/refactor/post/a/j;)Lcom/sina/sinalivesdk/refactor/post/a/h;
    .locals 4

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/a/b;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/refactor/post/a/b;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip,deflate"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sina/sinalivesdk/refactor/post/a/b;->a(Lcom/sina/sinalivesdk/refactor/post/a/g;Lcom/sina/sinalivesdk/refactor/post/a/j;)Lcom/sina/sinalivesdk/refactor/post/a/i;

    move-result-object v0

    iget-object v1, v0, Lcom/sina/sinalivesdk/refactor/post/a/i;->g:Ljava/util/Map;

    invoke-static {v1}, Lcom/sina/sinalivesdk/refactor/post/a/o;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/sinalivesdk/refactor/post/a/i;->g:Ljava/util/Map;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/sina/sinalivesdk/refactor/post/a/h;

    invoke-direct {v3, v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/post/a/h;-><init>(Lcom/sina/sinalivesdk/refactor/post/a/i;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v3
.end method
