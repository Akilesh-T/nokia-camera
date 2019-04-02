.class final Lcom/sina/sinalivesdk/refactor/services/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/sina/sinalivesdk/refactor/services/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sina/sinalivesdk/refactor/services/i;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/refactor/services/i;-><init>()V

    sput-object v0, Lcom/sina/sinalivesdk/refactor/services/j;->a:Lcom/sina/sinalivesdk/refactor/services/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sina/sinalivesdk/refactor/services/f;

    const-string v2, "10.85.9.133"

    const/16 v3, 0x3124

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sina/sinalivesdk/refactor/services/f;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sina/sinalivesdk/refactor/services/f;

    const-string v2, "http://10.85.9.133:12580"

    invoke-direct {v1, v2}, Lcom/sina/sinalivesdk/refactor/services/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a()Lcom/sina/sinalivesdk/refactor/services/i;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/refactor/services/j;->a:Lcom/sina/sinalivesdk/refactor/services/i;

    return-object v0
.end method
