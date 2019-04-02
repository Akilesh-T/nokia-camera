.class public final Lcom/sina/sinalivesdk/refactor/services/i;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sina/sinalivesdk/refactor/services/i;
    .locals 1

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/services/j;->a()Lcom/sina/sinalivesdk/refactor/services/i;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/sina/sinalivesdk/refactor/services/f;
    .locals 5

    .prologue
    const/16 v4, 0x1f90

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 0
    sget-boolean v0, Lcom/sina/sinalivesdk/util/Constants;->IS_CHAT_ROOM:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sina/sinalivesdk/refactor/services/f;

    sget-object v1, Lcom/sina/sinalivesdk/util/Constants;->REQUEST_URL:Ljava/lang/String;

    sget v2, Lcom/sina/sinalivesdk/util/Constants;->REQUEST_PORT:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/services/f;-><init>(Ljava/lang/String;II)V

    .line 1000
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "project_mode_live"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "project_live_ps_debug_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "project_live_ps_debug_host"

    const-string v2, "live.im.api.weibo.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "project_live_ps_debug_port"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v0, Lcom/sina/sinalivesdk/refactor/services/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/services/f;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sina/sinalivesdk/refactor/services/f;

    const-string v1, "live.im.api.weibo.com"

    invoke-direct {v0, v1, v4, v3}, Lcom/sina/sinalivesdk/refactor/services/f;-><init>(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static c()Lcom/sina/sinalivesdk/refactor/services/f;
    .locals 5

    const/16 v4, 0x1bb

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "project_mode_live"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "project_live_ps_debug_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "project_live_ps_debug_host"

    const-string v2, "live.im.api.weibo.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "project_live_ps_debug_port"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v0, Lcom/sina/sinalivesdk/refactor/services/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/services/f;-><init>(Ljava/lang/String;II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sina/sinalivesdk/refactor/services/f;

    const-string v1, "live.im.api.weibo.com"

    invoke-direct {v0, v1, v4, v3}, Lcom/sina/sinalivesdk/refactor/services/f;-><init>(Ljava/lang/String;II)V

    goto :goto_0
.end method
