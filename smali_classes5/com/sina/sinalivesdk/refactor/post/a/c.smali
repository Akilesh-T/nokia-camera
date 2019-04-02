.class final Lcom/sina/sinalivesdk/refactor/post/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/refactor/post/a/j;


# static fields
.field private static final b:Landroid/os/Handler;


# instance fields
.field a:Lcom/sina/sinalivesdk/refactor/post/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sina/sinalivesdk/refactor/post/a/c;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/post/a/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/a/c;->a:Lcom/sina/sinalivesdk/refactor/post/a/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/sina/sinalivesdk/refactor/post/a/c;->b:Landroid/os/Handler;

    new-instance v1, Lcom/sina/sinalivesdk/refactor/post/a/d;

    invoke-direct {v1, p0}, Lcom/sina/sinalivesdk/refactor/post/a/d;-><init>(Lcom/sina/sinalivesdk/refactor/post/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/sina/sinalivesdk/refactor/post/a/i;)V
    .locals 2

    sget-object v0, Lcom/sina/sinalivesdk/refactor/post/a/c;->b:Landroid/os/Handler;

    new-instance v1, Lcom/sina/sinalivesdk/refactor/post/a/f;

    invoke-direct {v1, p0, p1}, Lcom/sina/sinalivesdk/refactor/post/a/f;-><init>(Lcom/sina/sinalivesdk/refactor/post/a/c;Lcom/sina/sinalivesdk/refactor/post/a/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a([BIII)V
    .locals 7

    sget-object v6, Lcom/sina/sinalivesdk/refactor/post/a/c;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/a/e;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sina/sinalivesdk/refactor/post/a/e;-><init>(Lcom/sina/sinalivesdk/refactor/post/a/c;[BIII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
