.class public final Lcom/sina/sinalivesdk/refactor/post/a/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Lcom/sina/sinalivesdk/refactor/post/a/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/g;->a:Z

    sget-object v0, Lcom/sina/sinalivesdk/refactor/post/a/k;->a:Lcom/sina/sinalivesdk/refactor/post/a/k;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/g;->c:Lcom/sina/sinalivesdk/refactor/post/a/k;

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/a/g;->b:Ljava/lang/String;

    return-void
.end method
