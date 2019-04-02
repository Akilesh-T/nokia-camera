.class public final Lcom/sina/sinalivesdk/refactor/push/n;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/net/ConnectivityManager;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/refactor/push/o;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/NetworkMonitor$1;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/refactor/push/NetworkMonitor$1;-><init>(Lcom/sina/sinalivesdk/refactor/push/n;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/n;)I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->a:I

    return v0
.end method

.method public static a()Lcom/sina/sinalivesdk/refactor/push/n;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/refactor/push/p;->a:Lcom/sina/sinalivesdk/refactor/push/n;

    return-object v0
.end method

.method private a(Landroid/net/ConnectivityManager;)V
    .locals 1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->a:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->a:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/n;Landroid/net/ConnectivityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/sinalivesdk/refactor/push/n;->a(Landroid/net/ConnectivityManager;)V

    return-void
.end method

.method static synthetic b(Lcom/sina/sinalivesdk/refactor/push/n;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->c:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic c(Lcom/sina/sinalivesdk/refactor/push/n;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 0
    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/n;->b:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->c:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->c:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/refactor/push/n;->a(Landroid/net/ConnectivityManager;)V

    .line 1000
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/n;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/n;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 0
    return-void
.end method

.method public final a(Lcom/sina/sinalivesdk/refactor/push/o;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/n;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final b(Lcom/sina/sinalivesdk/refactor/push/o;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
