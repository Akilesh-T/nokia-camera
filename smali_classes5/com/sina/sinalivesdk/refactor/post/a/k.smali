.class public final enum Lcom/sina/sinalivesdk/refactor/post/a/k;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sina/sinalivesdk/refactor/post/a/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sina/sinalivesdk/refactor/post/a/k;

.field public static final enum b:Lcom/sina/sinalivesdk/refactor/post/a/k;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/a/k;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v3, v2}, Lcom/sina/sinalivesdk/refactor/post/a/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sina/sinalivesdk/refactor/post/a/k;->a:Lcom/sina/sinalivesdk/refactor/post/a/k;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/a/k;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v4, v2}, Lcom/sina/sinalivesdk/refactor/post/a/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sina/sinalivesdk/refactor/post/a/k;->b:Lcom/sina/sinalivesdk/refactor/post/a/k;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sina/sinalivesdk/refactor/post/a/k;

    sget-object v1, Lcom/sina/sinalivesdk/refactor/post/a/k;->a:Lcom/sina/sinalivesdk/refactor/post/a/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sina/sinalivesdk/refactor/post/a/k;->b:Lcom/sina/sinalivesdk/refactor/post/a/k;

    aput-object v1, v0, v4

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sina/sinalivesdk/refactor/post/a/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/k;->c:Ljava/lang/String;

    return-object v0
.end method
