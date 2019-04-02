.class public abstract Lcom/sina/sinalivesdk/refactor/messages/PushMessage;
.super Lcom/sina/sinalivesdk/refactor/messages/BaseMessage;


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sina/sinalivesdk/refactor/messages/PushMessage;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;J)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sina/sinalivesdk/refactor/messages/BaseMessage;-><init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;)V

    sget-object v0, Lcom/sina/sinalivesdk/refactor/messages/PushMessage;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PushMessage;->b:I

    return-void
.end method


# virtual methods
.method public parse(Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;Z)I"
        }
    .end annotation

    sget-boolean v0, Lcom/sina/sinalivesdk/util/e;->a:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestId()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/messages/PushMessage;->b:I

    return v0
.end method
