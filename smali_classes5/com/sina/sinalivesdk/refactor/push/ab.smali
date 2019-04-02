.class public final Lcom/sina/sinalivesdk/refactor/push/ab;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private c:Ljava/lang/Thread;

.field private d:Lcom/sina/sinalivesdk/refactor/push/d;

.field private e:Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

.field private f:Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

.field private g:Ljava/util/Timer;

.field private h:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/push/d;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->a:Z

    iput-boolean v1, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->b:Z

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->e:Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->f:Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->g:Ljava/util/Timer;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->h:Ljava/util/TimerTask;

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    return-void
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->e:Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    return-object v0
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/ab;Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->f:Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

    return-object v0
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/ab;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->h:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic b(Lcom/sina/sinalivesdk/refactor/push/ab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->a:Z

    return v0
.end method

.method static synthetic c(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/refactor/push/d;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    return-object v0
.end method

.method static synthetic d(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->f:Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

    return-object v0
.end method

.method static synthetic e(Lcom/sina/sinalivesdk/refactor/push/ab;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 3000
    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->a:Z

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    .line 0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->g:Ljava/util/Timer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->a:Z

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    iget-object v1, v1, Lcom/sina/sinalivesdk/refactor/push/d;->a:Lcom/sina/sinalivesdk/refactor/push/m;

    iput-object v1, v0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/ad;

    const-string v1, "SocketPushTask-Runner"

    invoke-direct {v0, p0, v1}, Lcom/sina/sinalivesdk/refactor/push/ad;-><init>(Lcom/sina/sinalivesdk/refactor/push/ab;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->e:Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    :cond_0
    return-void
.end method

.method public final a(Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->f:Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->g:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->a:Z

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->e:Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->f:Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->l()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->a:Z

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->l()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    .line 1000
    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    .line 0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    .line 2000
    iget-object v1, v1, Lcom/sina/sinalivesdk/refactor/push/d;->a:Lcom/sina/sinalivesdk/refactor/push/m;

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SocketPushTaskRunner"

    const-string v1, "ConnectionState when restartPush\uff0cjust interrupt"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->d:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->l()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/push/ab;->a()V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->a:Z

    return v0
.end method

.method final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->b:Z

    return v0
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->h:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/ac;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/refactor/push/ac;-><init>(Lcom/sina/sinalivesdk/refactor/push/ab;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->h:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->h:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->g:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/ab;->h:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method
