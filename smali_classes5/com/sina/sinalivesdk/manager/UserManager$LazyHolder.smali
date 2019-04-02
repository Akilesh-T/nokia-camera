.class Lcom/sina/sinalivesdk/manager/UserManager$LazyHolder;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/sina/sinalivesdk/manager/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sina/sinalivesdk/manager/UserManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/manager/UserManager;-><init>(B)V

    sput-object v0, Lcom/sina/sinalivesdk/manager/UserManager$LazyHolder;->a:Lcom/sina/sinalivesdk/manager/UserManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
