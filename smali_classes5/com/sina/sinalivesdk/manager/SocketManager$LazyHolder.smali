.class Lcom/sina/sinalivesdk/manager/SocketManager$LazyHolder;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/sina/sinalivesdk/manager/SocketManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sina/sinalivesdk/manager/SocketManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/manager/SocketManager;-><init>(B)V

    sput-object v0, Lcom/sina/sinalivesdk/manager/SocketManager$LazyHolder;->a:Lcom/sina/sinalivesdk/manager/SocketManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
