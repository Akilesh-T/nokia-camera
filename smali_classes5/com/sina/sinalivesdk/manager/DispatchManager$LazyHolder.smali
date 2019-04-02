.class Lcom/sina/sinalivesdk/manager/DispatchManager$LazyHolder;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/sina/sinalivesdk/manager/DispatchManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sina/sinalivesdk/manager/DispatchManager;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/manager/DispatchManager;-><init>()V

    sput-object v0, Lcom/sina/sinalivesdk/manager/DispatchManager$LazyHolder;->a:Lcom/sina/sinalivesdk/manager/DispatchManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
